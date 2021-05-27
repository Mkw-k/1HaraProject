package bit.com.a.dto;

import java.io.Serializable;

public class BusinessDto implements Serializable{

	/* CREATE TABLE "HR"."BUSINESS" 
	   (	"COMPANYNAME" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
		"BUSINESSID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
		"COMADDRESS" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
		"PWD" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
		"ADDRESSDETAIL" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
		"PHONENUM" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
		"DEL" NUMBER(8,0) NOT NULL ENABLE, 
		 CONSTRAINT "BUSINESS_PK" PRIMARY KEY ("BUSINESSID")
	  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
	  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
	  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
	  TABLESPACE "USERS"  ENABLE
	   ) SEGMENT CREATION IMMEDIATE 
	  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
	  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
	  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
	  TABLESPACE "USERS" ;

	*/

		private String memberid; 	// 회사명
		private String companyname;
		private String name;		// 사원이름
		private String comaddress; 		// 회사 주소
		private String pwd; 			// 사원일 경우 비밀번호
		private String addressdetail; 	// 상세 주소
		private int del;				// 삭제 번호(사원이 탈퇴할경우)
		private int auth;
		
		
		public BusinessDto() {
			super();
			// TODO Auto-generated constructor stub
		}


		public BusinessDto(String memberid, String companyname, String name, String comaddress, String pwd,
				String addressdetail, int del, int auth) {
			super();
			this.memberid = memberid;
			this.companyname = companyname;
			this.name = name;
			this.comaddress = comaddress;
			this.pwd = pwd;
			this.addressdetail = addressdetail;
			this.del = del;
			this.auth = auth;
		}

		public String getMemberid() {
			return memberid;
		}

		public void setMemberid(String memberid) {
			this.memberid = memberid;
		}

		
		
		public String getCompanyname() {
			return companyname;
		}

		public void setCompanyname(String companyname) {
			this.companyname = companyname;
		}

		public String getComaddress() {
			return comaddress;
		}


		public void setComaddress(String comaddress) {
			this.comaddress = comaddress;
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


		public String getAddressdetail() {
			return addressdetail;
		}


		public void setAddressdetail(String addressdetail) {
			this.addressdetail = addressdetail;
		}


		public int getDel() {
			return del;
		}


		public void setDel(int del) {
			this.del = del;
		}


		public int getAuth() {
			return auth;
		}


		public void setAuth(int auth) {
			this.auth = auth;
		}


		@Override
		public String toString() {
			return "BusinessDto [memberid=" + memberid + ", companyname=" + companyname + ", name=" + name
					+ ", comaddress=" + comaddress + ", pwd=" + pwd + ", addressdetail=" + addressdetail + ", del="
					+ del + ", auth=" + auth + "]";
		}


		
}
