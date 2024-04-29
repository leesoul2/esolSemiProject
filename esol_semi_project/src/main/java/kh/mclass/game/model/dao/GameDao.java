package kh.mclass.game.model.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import kh.mclass.game.model.dto.GameInfoDto;
import kh.mclass.game.model.dto.GameDetailInfoDto;

public class GameDao {
    public List<GameInfoDto> gameListInfo(SqlSession session) {
        try {
            return session.selectList("gameMapper.gameInfo"); // nameSpace.selectId
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<GameDetailInfoDto> gameDetailPageInfo(SqlSession session) {
        try {
            return session.selectList("gameDetailMapper.gameDetailInfo"); // nameSpace.selectId
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
