package bit.com.a.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/*
 채용공고 Dto


-- 8. 채용공고 테이블
--EMPLOYEE_TYPE 테이블 생성후 실행
CREATE TABLE JOB(
JOBSEQ NUMBER PRIMARY KEY,
COMPANYID VARCHAR2(20) UNIQUE,          --회사ID
JOBTITLE VARCHAR2(100) NOT NULL,        --공고제목
JOBCONTENT VARCHAR2(4000) NOT NULL,     --공고내용
AREA1NAME VARCHAR2(100) NOT NULL,       --지역대분류
AREA2NAME VARCHAR2(100) NOT NULL,       --지역소분류
JOBVOLUMN NUMBER NOT NULL,              --채용인원
SALARY NUMBER NOT NULL,                 --급여
JOBSTART DATE NOT NULL,                 --공고시작일
JOBEND DATE NOT NULL,                   --공고마감일
EMP_TYPE NUMBER UNIQUE,                 --고용타입
EDUCATION VARCHAR2(100),                --학력구분
CAREER_TYPE VARCHAR2(20),               --경력구분
CAREER_DESC VARCHAR2(50),               --경력추가설명
READCOUNT NUMBER,
REGDATE DATE NOT NULL
)

ALTER TABLE JOB
ADD
CONSTRAINT JOB_FK1 FOREIGN KEY(COMPANYID)
REFERENCES COMPANY(COMPANYID);

ALTER TABLE JOB
ADD
CONSTRAINT JOB_FK2 FOREIGN KEY(AREA1NAME)
REFERENCES JOBAREA1(AREA1NAME);

ALTER TABLE JOB
ADD
CONSTRAINT JOB_FK3 FOREIGN KEY(AREA2NAME)
REFERENCES JOBAREA2(AREA2NAME);

ALTER TABLE JOB
ADD
CONSTRAINT JOB_FK4 FOREIGN KEY(EMP_TYPE)
REFERENCES EMPLOYEE_TYPE(EMP_TYPE);
*/



public class RecruitDto implements Serializable{

   private int jobSeq;
   private String companyId;
   private String jobTitle;
   private String jobContent;
   private String area1Name;
   private String area2Name;
   private int jobVolumn;
   private int salary;
   private String jobStart;
   private String jobEnd;
   private String emp_Type;      //1: 아르바이트, 2: 계약직, 3: 정규직
   private String education;
   private String career_Type;
   private String career_Desc;
   private int readcount;
   private String regdate;

    private int del;
    private String companyname;
    private String eduname;
    private String emp_name;
    private int rnum;

    private String buscode;
    //상세주소(근무지주소)
    private String detailAdress1;
    //상세주소2 (근무지주소)
    private String detailAdress2;
    //담당자 이름
    private String mgName;
    //담당자 연락처
    private String mgPhone;
    //담당자 이메일주소
    private String mgEmail;
    //즐겨찾기여부 (디테일 페이지 들어갔을때) 
    private String favoriteJob;
    //좋아요 여부 (회사 좋아요)
    private String favoriteCom;
    
    private String content;
    private String salaryavg;
    private String empcount;
    private String comimage;
    
    

    private List<String> busname;

    public String getComimage() {
		return comimage;
	}

	public void setComimage(String comimage) {
		this.comimage = comimage;
	}

	
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getSalaryavg() {
		return salaryavg;
	}

	public void setSalaryavg(String salaryavg) {
		this.salaryavg = salaryavg;
	}

	public String getEmpcount() {
		return empcount;
	}

	public void setEmpcount(String empcount) {
		this.empcount = empcount;
	}

	//수정하기 버튼을 눌러서 업데이트 페이지(작성페이지)로 이동했을때 수정하기로 들어온건지 그냥 작성하기로 들어온건지 체크해주는 변수
    private String certifyUpdate;




    public RecruitDto() {
      // TODO Auto-generated constructor stub
   }







public RecruitDto(int jobSeq, String companyId, String jobTitle, String jobContent, String area1Name,
			String area2Name, int jobVolumn, int salary, String jobStart, String jobEnd, String emp_Type,
			String education, String career_Type, String career_Desc, int readcount, String regdate, int del,
			String companyname, String eduname, String emp_name, int rnum, String buscode, String detailAdress1,
			String detailAdress2, String mgName, String mgPhone, String mgEmail, String favoriteJob, String favoriteCom,
			List<String> busname, String certifyUpdate) {
		super();
		this.jobSeq = jobSeq;
		this.companyId = companyId;
		this.jobTitle = jobTitle;
		this.jobContent = jobContent;
		this.area1Name = area1Name;
		this.area2Name = area2Name;
		this.jobVolumn = jobVolumn;
		this.salary = salary;
		this.jobStart = jobStart;
		this.jobEnd = jobEnd;
		this.emp_Type = emp_Type;
		this.education = education;
		this.career_Type = career_Type;
		this.career_Desc = career_Desc;
		this.readcount = readcount;
		this.regdate = regdate;
		this.del = del;
		this.companyname = companyname;
		this.eduname = eduname;
		this.emp_name = emp_name;
		this.rnum = rnum;
		this.buscode = buscode;
		this.detailAdress1 = detailAdress1;
		this.detailAdress2 = detailAdress2;
		this.mgName = mgName;
		this.mgPhone = mgPhone;
		this.mgEmail = mgEmail;
		this.favoriteJob = favoriteJob;
		this.favoriteCom = favoriteCom;
		this.busname = busname;
		this.certifyUpdate = certifyUpdate;
	}







@Override
	public String toString() {
		return "RecruitDto [jobSeq=" + jobSeq + ", companyId=" + companyId + ", jobTitle=" + jobTitle + ", jobContent="
				+ jobContent + ", area1Name=" + area1Name + ", area2Name=" + area2Name + ", jobVolumn=" + jobVolumn
				+ ", salary=" + salary + ", jobStart=" + jobStart + ", jobEnd=" + jobEnd + ", emp_Type=" + emp_Type
				+ ", education=" + education + ", career_Type=" + career_Type + ", career_Desc=" + career_Desc
				+ ", readcount=" + readcount + ", regdate=" + regdate + ", del=" + del + ", companyname=" + companyname
				+ ", eduname=" + eduname + ", emp_name=" + emp_name + ", rnum=" + rnum + ", buscode=" + buscode
				+ ", detailAdress1=" + detailAdress1 + ", detailAdress2=" + detailAdress2 + ", mgName=" + mgName
				+ ", mgPhone=" + mgPhone + ", mgEmail=" + mgEmail + ", favoriteJob=" + favoriteJob + ", favoriteCom="
				+ favoriteCom + ", busname=" + busname + ", certifyUpdate=" + certifyUpdate + "]";
	}







public int getJobSeq() {
		return jobSeq;
	}







	public void setJobSeq(int jobSeq) {
		this.jobSeq = jobSeq;
	}







	public String getCompanyId() {
		return companyId;
	}







	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}







	public String getJobTitle() {
		return jobTitle;
	}







	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}







	public String getJobContent() {
		return jobContent;
	}







	public void setJobContent(String jobContent) {
		this.jobContent = jobContent;
	}







	public String getArea1Name() {
		return area1Name;
	}







	public void setArea1Name(String area1Name) {
		this.area1Name = area1Name;
	}







	public String getArea2Name() {
		return area2Name;
	}







	public void setArea2Name(String area2Name) {
		this.area2Name = area2Name;
	}







	public int getJobVolumn() {
		return jobVolumn;
	}







	public void setJobVolumn(int jobVolumn) {
		this.jobVolumn = jobVolumn;
	}







	public int getSalary() {
		return salary;
	}







	public void setSalary(int salary) {
		this.salary = salary;
	}







	public String getJobStart() {
		return jobStart;
	}







	public void setJobStart(String jobStart) {
		this.jobStart = jobStart;
	}







	public String getJobEnd() {
		return jobEnd;
	}







	public void setJobEnd(String jobEnd) {
		this.jobEnd = jobEnd;
	}







	public String getEmp_Type() {
		return emp_Type;
	}







	public void setEmp_Type(String emp_Type) {
		this.emp_Type = emp_Type;
	}







	public String getEducation() {
		return education;
	}







	public void setEducation(String education) {
		this.education = education;
	}







	public String getCareer_Type() {
		return career_Type;
	}







	public void setCareer_Type(String career_Type) {
		this.career_Type = career_Type;
	}







	public String getCareer_Desc() {
		return career_Desc;
	}







	public void setCareer_Desc(String career_Desc) {
		this.career_Desc = career_Desc;
	}







	public int getReadcount() {
		return readcount;
	}







	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}







	public String getRegdate() {
		return regdate;
	}







	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}







	public int getDel() {
		return del;
	}







	public void setDel(int del) {
		this.del = del;
	}







	public String getCompanyname() {
		return companyname;
	}







	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}







	public String getEduname() {
		return eduname;
	}







	public void setEduname(String eduname) {
		this.eduname = eduname;
	}







	public String getEmp_name() {
		return emp_name;
	}







	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}







	public int getRnum() {
		return rnum;
	}







	public void setRnum(int rnum) {
		this.rnum = rnum;
	}







	public String getBuscode() {
		return buscode;
	}







	public void setBuscode(String buscode) {
		this.buscode = buscode;
	}







	public String getDetailAdress1() {
		return detailAdress1;
	}







	public void setDetailAdress1(String detailAdress1) {
		this.detailAdress1 = detailAdress1;
	}







	public String getDetailAdress2() {
		return detailAdress2;
	}







	public void setDetailAdress2(String detailAdress2) {
		this.detailAdress2 = detailAdress2;
	}







	public String getMgName() {
		return mgName;
	}







	public void setMgName(String mgName) {
		this.mgName = mgName;
	}







	public String getMgPhone() {
		return mgPhone;
	}







	public void setMgPhone(String mgPhone) {
		this.mgPhone = mgPhone;
	}







	public String getMgEmail() {
		return mgEmail;
	}







	public void setMgEmail(String mgEmail) {
		this.mgEmail = mgEmail;
	}







	public String getFavoriteJob() {
		return favoriteJob;
	}







	public void setFavoriteJob(String favoriteJob) {
		this.favoriteJob = favoriteJob;
	}







	public String getFavoriteCom() {
		return favoriteCom;
	}







	public void setFavoriteCom(String favoriteCom) {
		this.favoriteCom = favoriteCom;
	}







	public List<String> getBusname() {
		return busname;
	}







	public void setBusname(List<String> busname) {
		this.busname = busname;
	}







	public String getCertifyUpdate() {
		return certifyUpdate;
	}







	public void setCertifyUpdate(String certifyUpdate) {
		this.certifyUpdate = certifyUpdate;
	}







public RecruitDto(String companyId, String jobTitle, String jobContent, String area1Name, String area2Name,
         int jobVolumn, int salary, String jobStart, String jobEnd, String emp_Type, String education,
         String career_Type, String career_Desc, String companyname, String eduname, String emp_name, String buscode,
         List<String> busname) {
      super();
      this.companyId = companyId;
      this.jobTitle = jobTitle;
      this.jobContent = jobContent;
      this.area1Name = area1Name;
      this.area2Name = area2Name;
      this.jobVolumn = jobVolumn;
      this.salary = salary;
      this.jobStart = jobStart;
      this.jobEnd = jobEnd;
      this.emp_Type = emp_Type;
      this.education = education;
      this.career_Type = career_Type;
      this.career_Desc = career_Desc;
      this.companyname = companyname;
      this.eduname = eduname;
      this.emp_name = emp_name;
      this.buscode = buscode;
      this.busname = busname;
   }










}
