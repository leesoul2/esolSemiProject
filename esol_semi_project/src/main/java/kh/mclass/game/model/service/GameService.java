package kh.mclass.game.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import static kh.mclass.jdbc.common.MybatisTemplate.*;
import kh.mclass.game.model.dao.GameDao;
import kh.mclass.game.model.dto.GameInfoDto;

public class GameService {
	GameDao dao = new GameDao();
	public List<GameInfoDto> gameInfo(){
		List<GameInfoDto> result = null;
		SqlSession session = getSqlSession(true);
		result = dao.gameInfo(session);
		session.commit();
		session.rollback();
		return result;
	}
		
}
