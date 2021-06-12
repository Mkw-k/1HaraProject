package bit.com.a.dto;

import java.io.Serializable;

/*

  CREATE TABLE "HR"."RESUME" 
   (	"RESUMESEQ" NUMBER, 
	"MEMBERID" VARCHAR2(100 BYTE), 
	"RESUMETITLE" VARCHAR2(200 BYTE), 
	"RECRUIT_STATUS" VARCHAR2(50 BYTE), 
	"RESUME_STATUS" VARCHAR2(50 BYTE), 
	"RESUMEIMAGE" VARCHAR2(200 BYTE), 
	"NEWRESUMEIMAGE" VARCHAR2(200 BYTE), 
	"RESUME_INTRO_TITLE" VARCHAR2(200 BYTE), 
	"RESUME_INTRO_CONTENT" VARCHAR2(4000 BYTE), 
	"PORTFOLIO" VARCHAR2(200 BYTE), 
	"NEWPORTFOLIO" VARCHAR2(200 BYTE), 
	"DESIREDSALARY" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"DESIREDJOBTYPE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"DESIRED_STR" VARCHAR2(20 BYTE), 
	"DESIRED_END" VARCHAR2(20 BYTE), 
	"DESIREDAREA1" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"DESIREDAREA2" VARCHAR2(100 BYTE), 
	"DESIREDAREA3" VARCHAR2(100 BYTE), 
	"DESIREDJOB1" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"DESIREDJOB2" VARCHAR2(50 BYTE), 
	"DESIREDJOB3" VARCHAR2(50 BYTE), 
	"DESIREDJOB4" VARCHAR2(50 BYTE), 
	"DESIREDJOB5" VARCHAR2(50 BYTE), 
	"GENDER" NUMBER NOT NULL ENABLE, 
	"PROGRESS" NUMBER, 
	"NAME" VARCHAR2(10 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"PHONENUM" VARCHAR2(30 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"DETAILADDRESS" VARCHAR2(50 BYTE), 
	"BIRTH" VARCHAR2(10 BYTE), 
	 PRIMARY KEY ("RESUMESEQ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RESUME_FK1" FOREIGN KEY ("MEMBERID")
	  REFERENCES "HR"."MEMBER" ("MEMBERID") ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 */
public class ResumeDto implements Serializable {
	private int resumeseq;
	private String memberid;
	private int careerseq;
	private int educationseq;
	private String resumetitle;
	private String recruit_status;
	private String resume_status;
	private String resumeimage;
	private String newresumeimage;
	private String resume_intro_title;
	private String resume_intro_content;
	private String portfolio;
	private String newportfolio;
	private String desiredsalary;
	private String desiredjobtype;
	private String desired_str;
	private String desired_end;
	private String desiredarea1;
	private String desiredarea2;
	private String desiredarea3;
	private String desiredjob1;
	private String desiredjob2;
	private String desiredjob3;
	private String desiredjob4;
	private String desiredjob5;
	private int gender;
	private int progress;
	private String name;
	private String email;
	private String phonenum;
	private String address;
	private String detailaddress;
	private String birth;
	
	public ResumeDto() {
		// TODO Auto-generated constructor stub
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getCareerseq() {
		return careerseq;
	}

	public void setCareerseq(int careerseq) {
		this.careerseq = careerseq;
	}

	public int getEducationseq() {
		return educationseq;
	}

	public void setEducationseq(int educationseq) {
		this.educationseq = educationseq;
	}

	public String getResumetitle() {
		return resumetitle;
	}

	public void setResumetitle(String resumetitle) {
		this.resumetitle = resumetitle;
	}

	public String getRecruit_status() {
		return recruit_status;
	}

	public void setRecruit_status(String recruit_status) {
		this.recruit_status = recruit_status;
	}

	public String getResume_status() {
		return resume_status;
	}

	public void setResume_status(String resume_status) {
		this.resume_status = resume_status;
	}

	public String getResumeimage() {
		return resumeimage;
	}

	public void setResumeimage(String resumeimage) {
		this.resumeimage = resumeimage;
	}

	public String getNewresumeimage() {
		return newresumeimage;
	}

	public void setNewresumeimage(String newresumeimage) {
		this.newresumeimage = newresumeimage;
	}

	public String getResume_intro_title() {
		return resume_intro_title;
	}

	public void setResume_intro_title(String resume_intro_title) {
		this.resume_intro_title = resume_intro_title;
	}

	public String getResume_intro_content() {
		return resume_intro_content;
	}

	public void setResume_intro_content(String resume_intro_content) {
		this.resume_intro_content = resume_intro_content;
	}

	public String getPortfolio() {
		return portfolio;
	}

	public void setPortfolio(String portfolio) {
		this.portfolio = portfolio;
	}

	public String getNewportfolio() {
		return newportfolio;
	}

	public void setNewportfolio(String newportfolio) {
		this.newportfolio = newportfolio;
	}

	public String getDesiredsalary() {
		return desiredsalary;
	}

	public void setDesiredsalary(String desiredsalary) {
		this.desiredsalary = desiredsalary;
	}

	public String getDesiredjobtype() {
		return desiredjobtype;
	}

	public void setDesiredjobtype(String desiredjobtype) {
		this.desiredjobtype = desiredjobtype;
	}

	public String getDesired_str() {
		return desired_str;
	}

	public void setDesired_str(String desired_str) {
		this.desired_str = desired_str;
	}

	public String getDesired_end() {
		return desired_end;
	}

	public void setDesired_end(String desired_end) {
		this.desired_end = desired_end;
	}

	public String getDesiredarea1() {
		return desiredarea1;
	}

	public void setDesiredarea1(String desiredarea1) {
		this.desiredarea1 = desiredarea1;
	}

	public String getDesiredarea2() {
		return desiredarea2;
	}

	public void setDesiredarea2(String desiredarea2) {
		this.desiredarea2 = desiredarea2;
	}

	public String getDesiredarea3() {
		return desiredarea3;
	}

	public void setDesiredarea3(String desiredarea3) {
		this.desiredarea3 = desiredarea3;
	}

	public String getDesiredjob1() {
		return desiredjob1;
	}

	public void setDesiredjob1(String desiredjob1) {
		this.desiredjob1 = desiredjob1;
	}

	public String getDesiredjob2() {
		return desiredjob2;
	}

	public void setDesiredjob2(String desiredjob2) {
		this.desiredjob2 = desiredjob2;
	}

	public String getDesiredjob3() {
		return desiredjob3;
	}

	public void setDesiredjob3(String desiredjob3) {
		this.desiredjob3 = desiredjob3;
	}

	public String getDesiredjob4() {
		return desiredjob4;
	}

	public void setDesiredjob4(String desiredjob4) {
		this.desiredjob4 = desiredjob4;
	}

	public String getDesiredjob5() {
		return desiredjob5;
	}

	public void setDesiredjob5(String desiredjob5) {
		this.desiredjob5 = desiredjob5;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
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

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
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

	public ResumeDto(int resumeseq, String memberid, int careerseq, int educationseq, String resumetitle,
			String recruit_status, String resume_status, String resumeimage, String newresumeimage,
			String resume_intro_title, String resume_intro_content, String portfolio, String newportfolio,
			String desiredsalary, String desiredjobtype, String desired_str, String desired_end, String desiredarea1,
			String desiredarea2, String desiredarea3, String desiredjob1, String desiredjob2, String desiredjob3,
			String desiredjob4, String desiredjob5, int gender, int progress, String name, String email,
			String phonenum, String address, String detailaddress, String birth) {
		super();
		this.resumeseq = resumeseq;
		this.memberid = memberid;
		this.careerseq = careerseq;
		this.educationseq = educationseq;
		this.resumetitle = resumetitle;
		this.recruit_status = recruit_status;
		this.resume_status = resume_status;
		this.resumeimage = resumeimage;
		this.newresumeimage = newresumeimage;
		this.resume_intro_title = resume_intro_title;
		this.resume_intro_content = resume_intro_content;
		this.portfolio = portfolio;
		this.newportfolio = newportfolio;
		this.desiredsalary = desiredsalary;
		this.desiredjobtype = desiredjobtype;
		this.desired_str = desired_str;
		this.desired_end = desired_end;
		this.desiredarea1 = desiredarea1;
		this.desiredarea2 = desiredarea2;
		this.desiredarea3 = desiredarea3;
		this.desiredjob1 = desiredjob1;
		this.desiredjob2 = desiredjob2;
		this.desiredjob3 = desiredjob3;
		this.desiredjob4 = desiredjob4;
		this.desiredjob5 = desiredjob5;
		this.gender = gender;
		this.progress = progress;
		this.name = name;
		this.email = email;
		this.phonenum = phonenum;
		this.address = address;
		this.detailaddress = detailaddress;
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "ResumeDto [resumeseq=" + resumeseq + ", memberid=" + memberid + ", careerseq=" + careerseq
				+ ", educationseq=" + educationseq + ", resumetitle=" + resumetitle + ", recruit_status="
				+ recruit_status + ", resume_status=" + resume_status + ", resumeimage=" + resumeimage
				+ ", newresumeimage=" + newresumeimage + ", resume_intro_title=" + resume_intro_title
				+ ", resume_intro_content=" + resume_intro_content + ", portfolio=" + portfolio + ", newportfolio="
				+ newportfolio + ", desiredsalary=" + desiredsalary + ", desiredjobtype=" + desiredjobtype
				+ ", desired_str=" + desired_str + ", desired_end=" + desired_end + ", desiredarea1=" + desiredarea1
				+ ", desiredarea2=" + desiredarea2 + ", desiredarea3=" + desiredarea3 + ", desiredjob1=" + desiredjob1
				+ ", desiredjob2=" + desiredjob2 + ", desiredjob3=" + desiredjob3 + ", desiredjob4=" + desiredjob4
				+ ", desiredjob5=" + desiredjob5 + ", gender=" + gender + ", progress=" + progress + ", name=" + name
				+ ", email=" + email + ", phonenum=" + phonenum + ", address=" + address + ", detailaddress="
				+ detailaddress + ", birth=" + birth + "]";
	}
	
	
	
	


	





	
	
	
}
