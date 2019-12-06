package mind.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertReviewFormController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		System.out.println(request.getParameter("gymCode"));
		int gymCode = Integer.parseInt(request.getParameter("gymCode"));
		request.setAttribute("gymCode", gymCode);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review_insert.jsp");
		return mv;
	}

}
