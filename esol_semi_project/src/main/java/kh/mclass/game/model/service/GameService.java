package kh.mclass.game.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kh.mclass.game.model.dao.GameDao;
import kh.mclass.game.model.dto.GameInfoDto;
import kh.mclass.jdbc.common.MybatisTemplate;

public class GameService {
    GameDao dao = new GameDao();
    
    public List<GameInfoDto> gameInfo(){
        SqlSession session = null;
        List<GameInfoDto> dto = null;
        
        try {
        	session = MybatisTemplate.getSqlSession();
        	dto = dao.gameListInfo(session);
        	System.out.println("session커밋");
        	session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("session롤백");
		}finally {
			if(session != null) {
				session.close();
				System.out.println("session close 완료");
			}
		}
        System.out.println("controller로 넘어가기 전service의 dto: "+dto);
        
        return dto;
    }
}