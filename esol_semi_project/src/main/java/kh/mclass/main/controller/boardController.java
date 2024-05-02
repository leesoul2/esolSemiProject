package kh.mclass.main.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.board.model.Service.BoardService;

/**
 * Servlet implementation class boardController
 */
@WebServlet("/board")
public class boardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService service = new BoardService();
		
		request.setAttribute("board", service.board());
		System.out.println("board"+service.board());
		request.getRequestDispatcher("WEB-INF/views/community/board.jsp").forward(request, response);
		return;
	}


}
