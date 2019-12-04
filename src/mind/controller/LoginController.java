package mind.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mind.controller.ModelAndView;
import mind.model.dto.MemberDTO;
import mind.service.HealthService;

public class LoginController implements HealthController {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws SQLException ,IOException  {
	response.setCharacterEncoding("UTF-8");
	ModelAndView mv = new ModelAndView();
	
	//서비스 메소드 호출
	System.out.println(request.getParameter("id"));
	boolean result = HealthService.login(request.getParameter("id"),request.getParameter("password"));
	
	if (result) {
		HttpSession session = request.getSession();
		session.setAttribute("session", "1");
		System.out.println("로그인성공");
		mv.setViewName("index.html");
	} else {
		// 에러 메세지 출력

		//방법1
		//PrintWriter out = response.getWriter();
		//out.println("<script>alert('잘못된 아이디 혹은 비밀번호 입니다.'); location.href='register.html';</script>");
		// 동적인 redirection이나 forward가 수행되면 alert문이 실행되지 않는다.
		// location.href를 이어 붙히게 되면 페이지 이동은 하지만 전체 메소드는 계속 실행되므로
		// null값이 들어있는 mv가 전송되어 nullexception오류가 확인된다. 
		// 에러 제어를 위해서는 DispatcherController.java 파일에 elseif로 mv가 null일때는
		// 아무기능도 수행안되도록 해야하지만 기존 구조를 변경하게 되므로 불편하다.
		
		//방법2
		//스코프에 err이름으로 1값을 저장
		//register.jsp에서 스크립트를 통해 err값을 검증해서 
		//1일때만 alert문이 출력되도록 구현 
		//request.setAttribute("err","1");
		//mv.setViewName("register.jsp");
		
		
		//방법3
		//에러페이지를 통해 처리
		request.setAttribute("errCode","1");
		throw new SQLException();
	}
	return mv;
	}

}
