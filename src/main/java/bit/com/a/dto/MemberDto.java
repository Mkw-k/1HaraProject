package bit.com.a.dto;

import java.io.Serializable;

public class MemberDto implements Serializable{

	private String memberid;
	private String pwd;
	private String name;
	private String phonenum;
	private String email;
	private int auth;		// 사용자:3 관리자:1
	
	public MemberDto() {
	}

	
	public MemberDto(String memberid, String pwd, String name, String phonenum, String email, int auth) {
		super();
		this.memberid = memberid;
		this.pwd = pwd;
		this.name = name;
		this.phonenum = phonenum;
		this.email = email;
		this.auth = auth;
	}



	public String getMemberid() {
		return memberid;
	}


	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}


	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "MemberDto [memberid=" + memberid + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", auth=" + auth + "]";
	}
	
	
	
}









