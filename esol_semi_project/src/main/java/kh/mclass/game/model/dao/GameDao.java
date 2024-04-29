package kh.mclass.game.model.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import kh.mclass.game.model.dto.GameInfoDto;

public class GameDao {
    public List<GameInfoDto> gameListInfo(SqlSession session) {
        try {
        	System.out.println("dao정상 작동.");
            return session.selectList("gameMapper.gameInfo"); // nameSpace.selectId
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
