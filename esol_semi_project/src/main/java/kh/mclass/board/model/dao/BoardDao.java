package kh.mclass.board.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kh.mclass.board.model.dto.BoardListInfoDto;

public class BoardDao {
	
	public List<BoardListInfoDto> BoardListInfo(SqlSession session) {
        try {
        	System.out.println("dao는 정상작동.");
            return session.selectList("boardMapper.boardInfo"); // nameSpace.selectId
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("dao에서 예외발생2");
        }
        System.out.println("dao에서 예외발생3");
        return null;
    }
}
