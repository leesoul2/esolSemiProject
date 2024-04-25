package kh.mclass.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.mclass.game.model.dto.GameInfoDto;
import kh.mclass.game.model.service.GameService;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/main")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GameService gameService = new GameService();
		List<GameInfoDto> gameInfoList = gameService.gameInfo();
		request.setAttribute("gameInfoList", gameInfoList);
		request.getRequestDispatcher("WEB-INF/views/main.jsp").forward(request, response);
		System.out.println("현재 게임인포리스트 상태:"+gameInfoList);
	}

}
