package kh.mclass.member.model.dto;

public class MemberInfoDto {
	private String memEmail;
	private String memId;

	public MemberInfoDto(String memEmail, String memId) {
		super();
		this.memEmail = memEmail;
		this.memId = memId;
	}
	@Override
	public String toString() {
		return "MemberInfoDto [memEmail=" + memEmail + ", memId=" + memId + "]";
	}
	public String getMemEmail() {
		return memEmail;
	}
	public String getMemId() {
		return memId;
	}









}
	