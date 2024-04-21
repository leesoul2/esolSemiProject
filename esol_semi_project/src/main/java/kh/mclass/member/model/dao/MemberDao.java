package kh.mclass.member.model.dao;

import static kh.mclass.jdbc.common.JdbcTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kh.mclass.member.model.dto.MemberDto;
import kh.mclass.member.model.dto.MemberInfoDto;
import kh.mclass.member.model.dto.MemberLoginDto;

public class MemberDao {

	public MemberInfoDto selectInfoLogin(Connection conn, MemberLoginDto dto) {
		MemberInfoDto result = null;
		String sql = "SELECT MEM_ID, MEM_EMAIL FROM MEMBER WHERE MEM_ID=? AND MEM_PWD=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			// ? 처리
			pstmt.setString(1, dto.getMemId());
			pstmt.setString(2, dto.getMemPwd());
			rs = pstmt.executeQuery();
			System.out.println("if문이 돌기 전, rs의 현재 상태:"+rs);
			//ResertSet처리
			if (rs.next()) {
			    // ResultSet에 데이터가 있는 경우에만 실행됨
			    result = new MemberInfoDto(rs.getString("MEM_ID"), rs.getString("MEM_EMAIL"));
			    System.out.println("if문 실행 완료.");
			    System.out.println("if문 실행 완료. 후 result 상태" + result);
			} else {
			    System.out.println("************ResultSet에 데이터가 없습니다.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		System.out.println("Dao의 result는 현재"+result);
		System.out.println("Dao의 pstmt는 현재"+pstmt);
		System.out.println("Dao의 rs는 현재"+rs);
		close(rs);
		close(pstmt);
		return result;
				
	}
	
	
	public int login(Connection conn, MemberLoginDto dto) {
		int result = 0;
		String sql = "SELECT COUNT(*) C FROM MEMBER WHERE MEM_ID=? AND MEM_PWD=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			// ? 처리
			pstmt.setString(1, dto.getMemId());
			pstmt.setString(2, dto.getMemPwd());
			rs = pstmt.executeQuery();
			//ResertSet처리
			if(rs.next()) {
				result = rs.getInt("c");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		return result;
				
	}
	
	public MemberLoginDto loginGetInfo(Connection conn, MemberLoginDto dto) {
		MemberLoginDto result = null;
		String sql = "SELECT MEM_ID, MEM_EMAIL FROM MEMBER WHERE MEM_ID=? AND MEM_PWD=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			// ? 처리
			pstmt.setString(1, dto.getMemId());
			pstmt.setString(2, dto.getMemPwd());
			rs = pstmt.executeQuery();
			// ResetSet처리
			if(rs.next()) {
				result = new MemberLoginDto(rs.getString("MEM_ID"), rs.getString("MEM_EMAIL"));
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		return result;
	}

public int selectCheckId(Connection conn, String memId) {
	int result = 0;
	String sql = "SELECT COUNT(*) c FROM MEMBER WHERE MEM_ID=?";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		pstmt = conn.prepareStatement(sql);
		// ? 처리
		pstmt.setString(1, memId);
		rs = pstmt.executeQuery();
		// ResetSet처리
		if(rs.next()) {
			result = rs.getInt("c");
		}			
	} catch (SQLException e) {
		e.printStackTrace();
	}
	close(rs);
	close(pstmt);
	return result;
}
public MemberDto joinInfo(Connection conn, MemberDto dto) {
	MemberDto result = null;
	String sql = "insert into member values(?,?,?)";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		pstmt = conn.prepareStatement(sql);
		// ? 처리
		pstmt.setString(1, dto.getMemId());
		pstmt.setString(2, dto.getMemPwd());
		pstmt.setString(3, dto.getMemEmail());
		rs = pstmt.executeQuery();
		// ResetSet처리
		if(rs.next()) {
			result = new MemberDto(rs.getString("MEM_ID"), rs.getString("MEM_PWD"), rs.getString("MEM_EMAIL"));
		}			
	} catch (SQLException e) {
		e.printStackTrace();
	}
	close(rs);
	close(pstmt);
	return result;
}
	
}
