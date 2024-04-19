package kh.mclass.member.model.service;

import static kh.mclass.jdbc.common.JdbcTemplate.close;
import static kh.mclass.jdbc.common.JdbcTemplate.getSemiConnection;

import java.sql.Connection;

import kh.mclass.member.model.dao.MemberDao;
import kh.mclass.member.model.dto.MemberInfoDto;
import kh.mclass.member.model.dto.MemberLoginDto;

public class MemberService {
	private MemberDao dao = new MemberDao();

	public MemberInfoDto selectInfoLogin(MemberLoginDto dto) {
		MemberInfoDto result = null;
		Connection conn = getSemiConnection(true);
		result = dao.selectInfoLogin(conn, dto);
		System.out.println("result는 현재"+ result +"상태입니다.");
		close(conn);
		return result;
	}

	
	public int login(MemberLoginDto dto) {
		int result = 0;
		Connection conn = getSemiConnection(true);
		result = dao.login(conn, dto);
		close(conn);
		return result;
	}
	
	
	public MemberInfoDto loginGetInfo(MemberLoginDto dto) {
		MemberInfoDto result = null;
		Connection conn = getSemiConnection(true);
		result = dao.loginGetInfo(conn, dto);
		close(conn);
		return result;
	}
	

}
