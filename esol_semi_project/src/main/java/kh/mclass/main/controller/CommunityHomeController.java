package kh.mclass.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.board.model.Service.BoardService;

/**
 * Servlet implementation class CommunityHomeController
 */
@WebServlet("/communityHome")
public class CommunityHomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommunityHomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService service = new BoardService();
		
		request.setAttribute("board", service.selectBoardList());
		System.out.println("board"+service.selectBoardList());
		request.getRequestDispatcher("WEB-INF/views/community/communityHome.jsp").forward(request, response);
		return;
	}

}
