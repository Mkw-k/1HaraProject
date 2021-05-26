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

		private String companyname; 	// 회사명
		private String busi_name;		// 사원이름
		private String companyid; 		// 사원id
		private String comaddress; 		// 회사 주소
		private String pwd; 			// 사원일 경우 비밀번호
		private String addressdetail; 	// 상세 주소
		private int del;				// 삭제 번호(사원이 탈퇴할경우)
		
		
		public BusinessDto() {
			super();
			// TODO Auto-generated constructor stub
		}

		public BusinessDto(String companyname, String busi_name, String companyid, String comaddress, String pwd,
				String addressdetail, int del) {
			super();
			this.companyname = companyname;
			this.busi_name = busi_name;
			this.companyid = companyid;
			this.comaddress = comaddress;
			this.pwd = pwd;
			this.addressdetail = addressdetail;
			this.del = del;
		}

		public String getCompanyname() {
			return companyname;
		}


		public void setCompanyname(String companyname) {
			this.companyname = companyname;
		}
		
		public String getBusi_name() {
			return busi_name;
		}

		public void setBusi_name(String busi_name) {
			this.busi_name = busi_name;
		}

		public String getCompanyid() {
			return companyid;
		}

		public void setCompanyid(String companyid) {
			this.companyid = companyid;
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

		@Override
		public String toString() {
			return "BusinessDto [companyname=" + companyname + ", busi_name=" + busi_name + ", companyid=" + companyid
					+ ", comaddress=" + comaddress + ", pwd=" + pwd + ", addressdetail=" + addressdetail + ", del="
					+ del + "]";
		}

		
	
}
