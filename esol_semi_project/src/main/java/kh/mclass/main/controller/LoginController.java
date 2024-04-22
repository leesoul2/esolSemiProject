package kh.mclass.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.member.model.dto.MemberInfoDto;
import kh.mclass.member.model.dto.MemberLoginDto;
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
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		MemberLoginDto dto = new MemberLoginDto(memId, memPwd);
		System.out.println("/login doPost dto: "+ dto);
//		/login doPost dto: MemberDto [memId=aaa, memPwd=bbb]

		// TODO login
		// ajax
		// 성공 : 1
		// 실패 : 0
		int result = 0;
		MemberInfoDto resultInfo = new MemberService().loginGetInfo(dto);
		if(resultInfo != null) {
			//로그인 성공
			request.getSession().setAttribute("sssLogin", resultInfo);
			result =1;
			System.out.println(result);
			response.sendRedirect(request.getContextPath()+"/main");
		}
		response.getWriter().append(String.valueOf(result));
	}

}















