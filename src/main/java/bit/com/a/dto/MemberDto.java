package bit.com.a.dto;

import java.io.Serializable;

/*1. 멤버 테이블
CREATE TABLE "HR"."MEMBERTALBE" 
(	"MEMBERID" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"PWD" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"NAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"PHONENUM" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"AUTH" NUMBER NOT NULL ENABLE, 
	"DEL" NUMBER NOT NULL ENABLE, 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"DETAILADDRESS" VARCHAR2(150 BYTE), 
	"BIRTH" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "MEMBERTALBE_PK" PRIMARY KEY ("MEMBERID")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE "USERS"  ENABLE
) SEGMENT CREATION IMMEDIATE 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE "USERS" ;
*/



public class MemberDto implements Serializable{

	private int seq;
	private String memberid;
	private String pwd;
	private String name;
	private String email;
	private String phonenumber;
	private int auth;							// 관리자인지 기업인인지 구분하는 번호 그리고 관리자
	private int del;							// 회원 탈퇴시 del번호를 변경해줘서 회원 탈퇴처리
	private String address;						// 집주소
	private String detailaddress;				// 집상세주소
	private String birth;						// 생년월일
	
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public MemberDto(int seq, String memberid, String pwd, String name, String email, int auth, int del, String address,
			String detailaddress, String birth) {
		super();
		this.seq = seq;
		this.memberid = memberid;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.auth = auth;
		this.del = del;
		this.address = address;
		this.detailaddress = detailaddress;
		this.birth = birth;
	}



	public int getSeq() {
		return seq;
	}



	public void setSeq(int seq) {
		this.seq = seq;
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


	public int getDel() {
		return del;
	}


	public void setDel(int del) {
		this.del = del;
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



	@Override
	public String toString() {
		return "MemberDto [seq=" + seq + ", memberid=" + memberid + ", pwd=" + pwd + ", name=" + name + ", email="
				+ email + ", auth=" + auth + ", del=" + del + ", address=" + address + ", detailaddress="
				+ detailaddress + ", birth=" + birth + "]";
	}
	
	
	
	
	
	
}