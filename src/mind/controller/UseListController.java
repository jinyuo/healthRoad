package mind.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.UseDetailDTO;
import mind.service.HealthService;

public class UseListController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		
		session.setAttribute("curUserId", "QQQ");
		session.setAttribute("curUser", 1);
		
		mv.setViewName("user-properties.jsp");
		
		//curUserType : session에저장된 사용자 타입 1 : 회원 2 :사업자<- 확인 필
		int curUserType = Integer.parseInt(session.getAttribute("curUser").toString());
		String memberId = session.getAttribute("curUserId").toString();
		List<UseDetailDTO> list = new ArrayList<UseDetailDTO>();
		
		if(curUserType == 1)
			list = HealthService.selectUseDetailByKeyword("member_id", memberId);
		else { // 사업자면
			int gymCode = HealthService.selectMemberById(memberId).getGymCode();
			list = HealthService.selectUseDetailByKeyword("gym_code", Integer.toString(gymCode));
		}
		
		request.setAttribute("useList", list);
		return mv;
	}

}
