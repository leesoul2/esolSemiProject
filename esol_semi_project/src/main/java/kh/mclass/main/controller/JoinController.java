package kh.mclass.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.member.model.dto.MemberDto;
import kh.mclass.member.model.service.MemberService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/join")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/join.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("memId"); 
		String userPwd = request.getParameter("memPwd"); 
		String userEmail = request.getParameter("memEmail"); 
		MemberDto dto = new MemberDto(userEmail, userPwd, userEmail);
		MemberDto result = new MemberService().insert(dto);
		if(result == null) {
			//회원 실패시
			response.sendRedirect(request.getContextPath()+"/main");
			return;
		}
		//회원가입 정상
		response.sendRedirect(request.getContextPath()+"/login");
	}

}
