package kh.mclass.game.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.game.model.dao.GameDao;
import kh.mclass.game.model.service.GameService;

/**
 * Servlet implementation class gameDetailController
 */
@WebServlet("/gameDetail")
public class gameDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gameDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GameService service =new GameService();
		request.setAttribute("detailInfo", service.gameDetaliInfo());
		System.out.println("service.gameDetaliInfo():   "+service.gameDetaliInfo());
		request.getRequestDispatcher("WEB-INF/views/store/gameDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
