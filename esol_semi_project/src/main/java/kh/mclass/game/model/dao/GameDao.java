package kh.mclass.game.model.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;

import kh.mclass.game.model.dto.GameInfoDto;

public class GameDao {
	
	public List<GameInfoDto> gameInfo(SqlSession session){
		return session.selectList("gameMapper.gameInfo");
		
	}
}
