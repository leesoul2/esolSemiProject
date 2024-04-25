package kh.mclass.game.dao;

import static kh.mclass.jdbc.common.JdbcTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kh.mclass.game.dto.GameInfoDto;
import kh.mclass.member.model.dto.MemberInfoDto;

public class GameDao {
	public List<GameInfoDto> gameListInfo(Connection conn) {
		List<GameInfoDto> resultList = new ArrayList<>();
		GameInfoDto result = null;
		String sql = "select game_title,game_price,game_tag from game;";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				GameInfoDto gameInfo = new GameInfoDto(rs.getString("GAME_TITLE"), rs.getInt("GAME_PRICE"), rs.getString("GAME_TAG"));
				resultList.add(gameInfo);
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		return resultList;
	}
}
