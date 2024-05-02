package kh.mclass.game.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kh.mclass.game.model.dao.GameDao;
import kh.mclass.game.model.dto.GameInfoDto;
import kh.mclass.game.model.dto.GameListInfoLatestDto;
import kh.mclass.game.model.dto.GameDetailInfoDto;
import kh.mclass.jdbc.common.MybatisTemplate;

public class GameService {
    GameDao dao = new GameDao();
    
    public List<GameInfoDto> gameInfo(){
        SqlSession session = null;
        List<GameInfoDto> dto = null;
        
        try {
        	session = MybatisTemplate.getSqlSession();
        	dto = dao.gameListInfo(session);
        	System.out.println("servic에서 "+dto);
        	session.commit();
        	System.out.println("session커밋완료");
			
		} catch (Exception e) {
			e.printStackTrace();
			if(session != null) {
				session.rollback();
				System.out.println("session롤백");
			}
		}finally {
			if(session != null) {
				session.close();
				System.out.println("session close 완료");
			}
		}
        
        return dto;
    }
    
    public List<GameDetailInfoDto> gameDetaliInfo(){
    	SqlSession session = null;
        List<GameDetailInfoDto> dto = null;
        
        try {
        	session = MybatisTemplate.getSqlSession();
        	dto = dao.gameDetailPageInfo(session);
        	System.out.println("session커밋");
        	session.commit();
        	System.out.println("dto: "+dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("dto: "+dto);
			System.out.println("session롤백");
		}finally {
			if(session != null) {
				session.close();
				System.out.println("session close 완료");
			}
		}
        
        return dto;
    }
//    public List<GameListInfoLatestDto> gameLatest(){
//    	SqlSession session = null;
//        List<GameListInfoLatestDto> dto = null;
//        
//        try {
//        	session = MybatisTemplate.getSqlSession();
//        	dto = dao.gameLatest(session);
//        	System.out.println("session커밋");
//        	session.commit();
//        	System.out.println("dto: "+dto);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			System.out.println("dto: "+dto);
//			System.out.println("session롤백");
//		}finally {
//			if(session != null) {
//				session.close();
//				System.out.println("session close 완료");
//			}
//		}
//        
//        return dto;
//    }
    
    
}