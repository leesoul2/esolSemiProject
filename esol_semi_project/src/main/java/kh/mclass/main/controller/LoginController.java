package kh.mclass.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.member.model.dto.MemberLoginDto;
import kh.mclass.member.model.dto.MemberInfoDto;
import kh.mclass.member.model.service.MemberService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
	}	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("memId");
		String pwd = request.getParameter("memPwd");
		MemberLoginDto dto = new MemberLoginDto(id, pwd);
		System.out.println("/login doPost dto:"+dto);
		
		//성공: 1
		// 실패 : 0
		int result = new MemberService().login(dto);
		MemberInfoDto resultInfo = new MemberService().selectInfoLogin(dto);
		System.out.println("********resultInfo:**********"+resultInfo);
		if(resultInfo != null) {
			request.getSession().setAttribute("loginInfo", resultInfo);
			result = 1;
		}
		response.getWriter().append(String.valueOf(result));
	}



}
