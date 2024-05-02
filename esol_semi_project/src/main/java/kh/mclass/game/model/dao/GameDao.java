package kh.mclass.game.model.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import kh.mclass.game.model.dto.GameInfoDto;
import kh.mclass.game.model.dto.GameListInfoLatestDto;
import kh.mclass.game.model.dto.GameDetailInfoDto;

public class GameDao {
    public List<GameInfoDto> gameListInfo(SqlSession session) {
        try {
        	System.out.println("게임dao 정상작동");
            return session.selectList("gameMapper.gameInfo"); // nameSpace.selectId
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("//////dao오류발생"+e.getMessage());
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
//    public List<GameListInfoLatestDto> gameLatest(SqlSession session){
//    	try {
//			return session.selectList("gameSortMapper.gameSort");
//		} catch (Exception e) {
//			e.printStackTrace();
//			System.out.println("dao에서 정렬 함수 돌리다 오류 발생"+e.getMessage());
//		}
//    	return null;
//    }
}
