
package mind.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.UseDetailDTO;
import mind.service.HealthService;

public class userPointToGymController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		HttpSession session = request.getSession();
		
		
		ModelAndView mv = new ModelAndView();
		////////////////// 이용내역 추가 //////////////////////
		
		//로그인된 사용자의 계정에서 id를 얻어온다.
		String memberId = (String)session.getAttribute("curUser");
		//해당 헬스장의 gymCode와 price를 받아온다.(넘어오는 파라미터 이름 점검필요)
		String gymName = request.getParameter("gymName");
		int gymCode = Integer.parseInt(request.getParameter("gymCode"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		//button을 누른 해당 시간의 시간을 받아온다.   toLocaleDateString()을 이용해서 String 값으로 받는다.
//		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분");
//				
//		String useStartHour = format2.format (System.currentTimeMillis());
		
		
				
		UseDetailDTO useDetail = new UseDetailDTO(0, memberId, gymName, gymCode, price, null, 1);
		
		int insertUseDetailResult = HealthService.insertUseDetail(useDetail);
		
		if(insertUseDetailResult == 0 ) {
			//update에 실패한 경우
			//error코드 작성 필요
			request.setAttribute("errCode","30");
			
			throw new SQLException();
			
		}
		
		//////////////////포인트 잔액 갱신 : 사용자가 헬스장 이용하기 시///////////////////
		
		
		int updatePoinResult = HealthService.updatePoint(memberId, gymCode, price);
		
		if(updatePoinResult == 0 ) {
			//update에 실패한 경우
			//error코드 작성 필요
			throw new SQLException();			
		}
		
		return mv;
	}

}
