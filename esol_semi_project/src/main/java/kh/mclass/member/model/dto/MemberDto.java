package kh.mclass.member.model.dto;

public class MemberDto {
	private String memEmail;
	private String memId;
	private String memPwd;

	public MemberDto(String memEmail, String memId, String memPwd) {
		super();
		this.memEmail = memEmail;
		this.memId = memId;
		this.memPwd = memPwd;
	}
	@Override
	public String toString() {
		return "MemberInfoDto [memEmail=" + memEmail + ", memId=" + memId + ", memPwd=" + memPwd + "]";
	}
	public String getMemEmail() {
		return memEmail;
	}
	public String getMemId() {
		return memId;
	}
	public String getMemPwd() {
		return memPwd;
	}









}
	