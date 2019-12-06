package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.model.dto.GymDTO;
import mind.service.HealthService;

public class GymInsertController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		HttpSession session = request.getSession();

		String id = session.getAttribute("curUserId").toString();

		String name = request.getParameter("gymName");
		String addr = request.getParameter("addr");
		String phoneNum = request.getParameter("phone");
		int gymCapacity =Integer.parseInt(request.getParameter("capacity"));
		int price = Integer.parseInt(request.getParameter("price"));
		String comment = request.getParameter("comment");
		String weekday = request.getParameter("weekday");
		String weekend = request.getParameter("weekend");
		String fileName = request.getParameter("fileName");
		
		System.out.println(name);
		System.out.println(addr);
		System.out.println(phoneNum);
		System.out.println(gymCapacity);
		System.out.println(price);
		System.out.println(comment);
		System.out.println(weekday);
		System.out.println(weekend);
		System.out.println(fileName);
		
		GymDTO gym = new GymDTO(name,addr,phoneNum,gymCapacity,price,comment, weekday,weekend,fileName);
		
		HealthService.insertGym(gym,id);
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("mypage.html");
		mv.setRedirect(true);
			
		return mv;
	}

}
