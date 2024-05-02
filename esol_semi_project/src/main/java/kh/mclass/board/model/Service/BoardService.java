package kh.mclass.board.model.Service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kh.mclass.board.model.dao.BoardDao;
import kh.mclass.board.model.dto.BoardDetailInfoDto;
import kh.mclass.board.model.dto.BoardListInfoDto;
import kh.mclass.jdbc.common.MybatisTemplate;

public class BoardService {
	BoardDao dao =new BoardDao();
	public List<BoardListInfoDto> selectBoardList(){
		SqlSession session = null;
		List<BoardListInfoDto> dto = null;
		
		try {
			session = MybatisTemplate.getSqlSession();
			dto = dao.BoardListInfo(session);
			session.commit();
			System.out.println("board session 커밋 완료.");
			System.out.println("dto:   "+dto);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("커밋 실패. 롤백 진행.");
			System.out.println("예외발생 "+e.getMessage());
		}finally {
			if (session != null) {
				session.close();
			}
		}
		return dto;
	}
	
	public List<BoardDetailInfoDto> board(){
		SqlSession session = null;
		List<BoardDetailInfoDto> dto = null;
		
		try {
			session = MybatisTemplate.getSqlSession();
			dto = dao.BoardInfo(session);
			session.commit();
			System.out.println("board session 커밋 완료.");
			System.out.println("dto:   "+dto);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("커밋 실패. 롤백 진행.");
			System.out.println("예외발생 "+e.getMessage());
		}finally {
			if (session != null) {
				session.close();
			}
		}
		return dto;
	}
}
