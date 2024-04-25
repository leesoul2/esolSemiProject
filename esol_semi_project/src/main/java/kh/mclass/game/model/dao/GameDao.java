package kh.mclass.game.model.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;

import kh.mclass.game.model.dto.GameInfoDto;

public class GameDao {
	
	public List<GameInfoDto> gameInfo(SqlSession session){
		List<GameInfoDto> gameInfoList = session.selectList("gameMapper.gameInfo");
		System.out.println("dao의 gameInfoList"+gameInfoList);
		return gameInfoList;
	}
}
