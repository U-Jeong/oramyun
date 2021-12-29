package Oramyun.member.join;

import java.sql.Timestamp;

public class MemberVO {

	private int member_num;
	private String member_email;
	private String member_pass;
	private String member_name;
//	private String member_gender;
	private String member_birth;
	private String member_tel;
	private Timestamp member_regDate;
//	private int member_adminCk; // 관리자 여부
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_pass() {
		return member_pass;
	}
	public void setMember_pass(String member_pass) {
		this.member_pass = member_pass;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_tel() {
		return member_tel;
	}
	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}
	public Timestamp getMember_regDate() {
		return member_regDate;
	}
	public void setMember_regDate(Timestamp member_regDate) {
		this.member_regDate = member_regDate;
	}

	
//		return member_adminCk;
//	}
//	public void setMember_adminCk(int member_adminCk) {
//		this.member_adminCk = member_adminCk;
//	}
	
	@Override
	public String toString() {
		return "MemberVO [member_num=" + member_num + ", member_email=" + member_email + ", member_pass=" + member_pass
				+ ", member_name=" + member_name + ", member_birth=" + member_birth + ", member_tel=" + member_tel
				+ ", member_regDate=" + member_regDate + "]";
	}
	
	
	
}
