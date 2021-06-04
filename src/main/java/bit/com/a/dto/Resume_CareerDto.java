package bit.com.a.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/*
CREATE TABLE CAREER (
CAREERSEQ NUMBER PRIMARY KEY,	--SEQ
RESUMESEQ NUMBER,			--이력서SEQ
PRE_COMNAME	VARCHAR2(100),	--직장명
PRE_STARTDATE VARCHAR2(20),	--재직기간(시작일)
PRE_ENDDATE	VARCHAR2(20),	--재직기간(종료일)
PRE_STATUS	VARCHAR2(20),	--퇴사,재직…
PRE_POSITION VARCHAR2(30),	--직급
PRE_BUSCODE	VARCHAR2(50),	--직종
PRE_AREA VARCHAR2(50),		--지역
PRE_DEPT VARCHAR2(50),		--근무부서
PRE_SAL	VARCHAR2(50),		--연봉
PRE_JOBDETAIL VARCHAR2(200),	--담당업무


CONSTRAINT "CAREER_FK1" FOREIGN KEY (RESUMESEQ)
REFERENCES RESUME (RESUMESEQ)
);
 */
public class Resume_CareerDto implements Serializable {
	private int careerseq;
	private int resumeseq;
	private String[] pre_comname;
	private String[] pre_startdate;
	private String[] pre_enddate;
	private String[] pre_status;
	private String[] pre_position;
	private String[] pre_buscode;
	private String[] pre_area;
	private String[] pre_dept;
	private String[] pre_sal;
	private String[] pre_jobdetail;
	private List<Resume_CareerDto> list;
	
	public Resume_CareerDto() {
		// TODO Auto-generated constructor stub
	}

	public int getCareerseq() {
		return careerseq;
	}

	public void setCareerseq(int careerseq) {
		this.careerseq = careerseq;
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String[] getPre_comname() {
		return pre_comname;
	}

	public void setPre_comname(String[] pre_comname) {
		this.pre_comname = pre_comname;
	}

	public String[] getPre_startdate() {
		return pre_startdate;
	}

	public void setPre_startdate(String[] pre_startdate) {
		this.pre_startdate = pre_startdate;
	}

	public String[] getPre_enddate() {
		return pre_enddate;
	}

	public void setPre_enddate(String[] pre_enddate) {
		this.pre_enddate = pre_enddate;
	}

	public String[] getPre_status() {
		return pre_status;
	}

	public void setPre_status(String[] pre_status) {
		this.pre_status = pre_status;
	}

	public String[] getPre_position() {
		return pre_position;
	}

	public void setPre_position(String[] pre_position) {
		this.pre_position = pre_position;
	}

	public String[] getPre_buscode() {
		return pre_buscode;
	}

	public void setPre_buscode(String[] pre_buscode) {
		this.pre_buscode = pre_buscode;
	}

	public String[] getPre_area() {
		return pre_area;
	}

	public void setPre_area(String[] pre_area) {
		this.pre_area = pre_area;
	}

	public String[] getPre_dept() {
		return pre_dept;
	}

	public void setPre_dept(String[] pre_dept) {
		this.pre_dept = pre_dept;
	}

	public String[] getPre_sal() {
		return pre_sal;
	}

	public void setPre_sal(String[] pre_sal) {
		this.pre_sal = pre_sal;
	}

	public String[] getPre_jobdetail() {
		return pre_jobdetail;
	}

	public void setPre_jobdetail(String[] pre_jobdetail) {
		this.pre_jobdetail = pre_jobdetail;
	}
	
	

	public List<Resume_CareerDto> getList() {
		return list;
	}

	public void setList(List<Resume_CareerDto> list) {
		this.list = list;
	}

	public Resume_CareerDto(int careerseq, int resumeseq, String[] pre_comname, String[] pre_startdate,
			String[] pre_enddate, String[] pre_status, String[] pre_position, String[] pre_buscode, String[] pre_area,
			String[] pre_dept, String[] pre_sal, String[] pre_jobdetail) {
		super();
		this.careerseq = careerseq;
		this.resumeseq = resumeseq;
		this.pre_comname = pre_comname;
		this.pre_startdate = pre_startdate;
		this.pre_enddate = pre_enddate;
		this.pre_status = pre_status;
		this.pre_position = pre_position;
		this.pre_buscode = pre_buscode;
		this.pre_area = pre_area;
		this.pre_dept = pre_dept;
		this.pre_sal = pre_sal;
		this.pre_jobdetail = pre_jobdetail;
	}

	@Override
	public String toString() {
		return "Resume_CareerDto [careerseq=" + careerseq + ", resumeseq=" + resumeseq + ", pre_comname="
				+ Arrays.toString(pre_comname) + ", pre_startdate=" + Arrays.toString(pre_startdate) + ", pre_enddate="
				+ Arrays.toString(pre_enddate) + ", pre_status=" + Arrays.toString(pre_status) + ", pre_position="
				+ Arrays.toString(pre_position) + ", pre_buscode=" + Arrays.toString(pre_buscode) + ", pre_area="
				+ Arrays.toString(pre_area) + ", pre_dept=" + Arrays.toString(pre_dept) + ", pre_sal="
				+ Arrays.toString(pre_sal) + ", pre_jobdetail=" + Arrays.toString(pre_jobdetail) + "]";
	}


	
	
}
