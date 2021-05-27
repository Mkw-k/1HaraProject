package bit.com.a.dto;

import java.io.Serializable;
import java.util.Arrays;

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
    private String buscode;
    private int del;
    private String companyname;
    private String eduname;
    private String emp_name;
    private int rnum;
    
    //직무이름 가져오기 위한 변수 생성 (RecruitController에 buscodeListData.do)
    private String busname;
    
    
    
	public String getBusname() {
		return busname;
	}
	public void setBusname(String busname) {
		this.busname = busname;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
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
	public String getBuscode() {
		return buscode;
	}
	public void setBuscode(String buscode) {
		this.buscode = buscode;
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
	@Override
	public String toString() {
		return "RecruitDto [jobSeq=" + jobSeq + ", companyId=" + companyId + ", jobTitle=" + jobTitle + ", jobContent="
				+ jobContent + ", area1Name=" + area1Name + ", area2Name=" + area2Name + ", jobVolumn=" + jobVolumn
				+ ", salary=" + salary + ", jobStart=" + jobStart + ", jobEnd=" + jobEnd + ", emp_Type=" + emp_Type
				+ ", education=" + education + ", career_Type=" + career_Type + ", career_Desc=" + career_Desc
				+ ", readcount=" + readcount + ", regdate=" + regdate + ", buscode=" + buscode + ", del=" + del
				+ ", companyname=" + companyname + ", eduname=" + eduname + ", emp_name=" + emp_name + "]";
	}
	public RecruitDto(int jobSeq, String companyId, String jobTitle, String jobContent, String area1Name,
			String area2Name, int jobVolumn, int salary, String jobStart, String jobEnd, String emp_Type,
			String education, String career_Type, String career_Desc, int readcount, String regdate, String buscode,
			int del, String companyname, String eduname, String emp_name) {
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
		this.buscode = buscode;
		this.del = del;
		this.companyname = companyname;
		this.eduname = eduname;
		this.emp_name = emp_name;
	}
	public RecruitDto(String companyId, String jobTitle, String jobContent, String area1Name, String area2Name,
			int jobVolumn, int salary, String jobStart, String jobEnd, String emp_Type, String education,
			String career_Type, String career_Desc, String buscode, String companyname, String eduname,
			String emp_name) {
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
		this.buscode = buscode;
		this.companyname = companyname;
		this.eduname = eduname;
		this.emp_name = emp_name;
	}
    
    
	public RecruitDto() {
		// TODO Auto-generated constructor stub
	}
    
   
    
	
    
		
}
