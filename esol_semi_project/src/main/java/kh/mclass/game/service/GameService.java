package kh.mclass.game.service;

import static kh.mclass.jdbc.common.JdbcTemplate.close;
import static kh.mclass.jdbc.common.JdbcTemplate.getSemiConnection;

import java.sql.Connection;
import java.util.List;

import kh.mclass.game.dao.GameDao;
import kh.mclass.game.dto.GameInfoDto;
import kh.mclass.member.model.dto.MemberDto;

public class GameService {
	GameDao dao = new GameDao();
	public List<GameInfoDto> selectAllGameListInfo() {
		List<GameInfoDto> result = null;
		Connection conn = getSemiConnection(true);
		result = dao.gameListInfo(conn);
		close(conn);
		return result;
	}
}
