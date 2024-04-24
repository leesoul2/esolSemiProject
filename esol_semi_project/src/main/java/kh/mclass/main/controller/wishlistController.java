package kh.mclass.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;

import kh.mclass.game.dao.GameDao;
import kh.mclass.game.dto.GameInfoDto;
import kh.mclass.game.service.GameService;
import kh.mclass.member.model.dto.MemberInfoDto;
import kh.mclass.member.model.dto.MemberLoginDto;
import kh.mclass.member.model.service.MemberService;

/**
 * Servlet implementation class CommunityHomeController
 */
@WebServlet("/wishlist")
public class wishlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public wishlistController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.getRequestDispatcher("WEB-INF/views/store/wishlist.jsp").forward(request, response);
    	        List<GameInfoDto> games = new GameService().selectAllGameListInfo();
        request.setAttribute("games", games);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/wishlist.jsp");
        dispatcher.forward(request, response);
    }


}
