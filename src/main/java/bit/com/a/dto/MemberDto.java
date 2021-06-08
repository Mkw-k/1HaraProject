package bit.com.a.dto;

import java.io.Serializable;

public class MemberDto implements Serializable{

	private String memberid;
	private String pwd;
	private String name;
	private String email;
	/* private String phonenumber; */
	private int auth;							// 관리자인지 기업인인지 구분하는 번호 그리고 관리자
	/* private int del; */							// 회원 탈퇴시 del번호를 변경해줘서 회원 탈퇴처리
	private String address;						// 집주소
	private String detailaddress;				// 집상세주소
	private String birth;						// 생년월일
	private String userpic;
	private String newuserpic;
	
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDto(String memberid, String pwd, String name, String email, int auth, String address,
			String detailaddress, String birth, String userpic, String newuserpic) {
		super();
		this.memberid = memberid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.auth = auth;
		this.address = address;
		this.detailaddress = detailaddress;
		this.birth = birth;
		this.userpic = userpic;
		this.newuserpic = newuserpic;
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


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getDetailaddress() {
		return detailaddress;
	}


	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}
	

	public String getUserpic() {
		return userpic;
	}


	public void setUserpic(String userpic) {
		this.userpic = userpic;
	}

	

	public String getNewuserpic() {
		return newuserpic;
	}


	public void setNewuserpic(String newuserpic) {
		this.newuserpic = newuserpic;
	}


	@Override
	public String toString() {
		return "MemberDto [memberid=" + memberid + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", auth="
				+ auth + ", address=" + address + ", detailaddress=" + detailaddress + ", birth=" + birth + ", userpic="
				+ userpic + "]";
	}


	


	
	
	
	
	
}