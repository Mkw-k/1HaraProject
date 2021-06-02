package bit.com.a.dto;
/*
 
CREATE TABLE RESUME(   
RESUMESEQ NUMBER PRIMARY KEY, 
MEMBERID VARCHAR2(100) UNIQUE,   -- 회원ID
CAREERSEQ NUMBER NOT NULL,     -- 경력사항(신입인 경우도 고려)
EDUCATIONSEQ NUMBER NOT NULL,  -- 학력사항(대학 안나왔으면 최종학교로라도 적기)  
RESUMETITLE VARCHAR2(200),	--이력서제목
RECRUIT_STATUS VARCHAR2(50),	--구직중여부
RESUME_STATUS VARCHAR2(50),	--작성중여부
RESUMEIMAGE VARCHAR2(200),	--프로필사진
NEWRESUMEIMAGE VARCHAR2(200), --프로필사진이름
RESUME_INTRO_TITLE VARCHAR2(200),	--자소서 제목
RESUME_INTRO_CONTENT VARCHAR2(4000),	--자소서 내용
PORTFOLIO VARCHAR2(200),	-- 포트폴리오 
NEWPORTFOLIO VARCHAR2(200),	-- 포트폴리오 파일이름
DESIREDSALARY VARCHAR2(50) NOT NULL,	-- 희망연봉
DESIREDJOBTYPE VARCHAR2(50) NOT NULL,	--희망근무형태
DESIRED_STR VARCHAR2(20),		--희망근무시작일
DESIRED_END VARCHAR2(20),		--희망근무마감일
DESIREDAREA1 VARCHAR2(100) NOT NULL,	--희망근무지역
DESIREDAREA2 VARCHAR2(100),		--희망근무지역2
DESIREDAREA3 VARCHAR2(100),	--희망근무지역3
DESIREDJOB1 VARCHAR2(50) NOT NULL,	--희망직종1
DESIREDJOB2 VARCHAR2(50),	--희망직종1
DESIREDJOB3 VARCHAR2(50),	--희망직종1
DESIREDJOB4 VARCHAR2(50),	--희망직종1
DESIREDJOB5 VARCHAR2(50),	--희망직종1
GENDER NUMBER NOT NULL,	--성별


CONSTRAINT "RESUME_FK1" FOREIGN KEY (MEMBERID)
REFERENCES MEMBER (MEMBERID),

CONSTRAINT "RESUME_FK2" FOREIGN KEY (DESIREDJOB1)
REFERENCES BUSCODE3 (BUSCODE),
CONSTRAINT "RESUME_FK3" FOREIGN KEY (DESIREDJOB2)
REFERENCES BUSCODE3 (BUSCODE),
CONSTRAINT "RESUME_FK4" FOREIGN KEY (DESIREDJOB3)
REFERENCES BUSCODE3 (BUSCODE),
CONSTRAINT "RESUME_FK5" FOREIGN KEY (DESIREDJOB4)
REFERENCES BUSCODE3 (BUSCODE),
CONSTRAINT "RESUME_FK6" FOREIGN KEY (DESIREDJOB5)
REFERENCES BUSCODE3 (BUSCODE),

CONSTRAINT "RESUME_FK7" FOREIGN KEY (DESIREDAREA1)
REFERENCES JOBAREA2(AREA2NAME),
CONSTRAINT "RESUME_FK8" FOREIGN KEY (DESIREDAREA2)
REFERENCES JOBAREA2(AREA2NAME),
CONSTRAINT "RESUME_FK9" FOREIGN KEY (DESIREDAREA3)
REFERENCES JOBAREA2(AREA2NAME)
)
 */
public class ResumeDto {
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
	
	public ResumeDto() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public ResumeDto(int resumeseq, String memberid, int careerseq, int educationseq, String resumetitle,
			String recruit_status, String resume_status, String resumeimage, String newresumeimage,
			String resume_intro_title, String resume_intro_content, String portfolio, String newportfolio,
			String desiredsalary, String desiredjobtype, String desired_str, String desired_end, String desiredarea1,
			String desiredarea2, String desiredarea3, String desiredjob1, String desiredjob2, String desiredjob3,
			String desiredjob4, String desiredjob5, int gender) {
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
				+ ", desiredjob5=" + desiredjob5 + ", gender=" + gender + "]";
	}
	
	
	
}
