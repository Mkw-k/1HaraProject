package bit.com.a.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/*
--14. 수상내역 테이블 
----RESUME 테이블 작성후 실행 
CREATE TABLE AWARD(   
AWDSEQ NUMBER PRIMARY KEY,                        --SEQ
RESUMESEQ NUMBER,                                 --이력서SEQ
AWD_NAME VARCHAR2(30) NOT NULL,      	          --수상명
AWD_DATE VARCHAR2(30) NOT NULL,                           --취득일
AWD_ORG VARCHAR2(30) NOT NULL,        	          --발행기관

CONSTRAINT AWARD_FK1 FOREIGN KEY (RESUMESEQ)
REFERENCES RESUME (RESUMESEQ)
);
 */
public class Resume_AwardDto implements Serializable {
	private int awdseq;
	private int resumeseq;
	private String[] awd_name;
	private String[] awd_date;
	private String[] awd_org;
	private List<Resume_AwardDto> list;
	
	public Resume_AwardDto() {
		// TODO Auto-generated constructor stub
	}

	public Resume_AwardDto(int awdseq, int resumeseq, String[] awd_name, String[] awd_date, String[] awd_org) {
		super();
		this.awdseq = awdseq;
		this.resumeseq = resumeseq;
		this.awd_name = awd_name;
		this.awd_date = awd_date;
		this.awd_org = awd_org;
	}

	public int getAwdseq() {
		return awdseq;
	}

	public void setAwdseq(int awdseq) {
		this.awdseq = awdseq;
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String[] getAwd_name() {
		return awd_name;
	}

	public void setAwd_name(String[] awd_name) {
		this.awd_name = awd_name;
	}

	public String[] getAwd_date() {
		return awd_date;
	}

	public void setAwd_date(String[] awd_date) {
		this.awd_date = awd_date;
	}

	public String[] getAwd_org() {
		return awd_org;
	}

	public void setAwd_org(String[] awd_org) {
		this.awd_org = awd_org;
	}

	
	
	public List<Resume_AwardDto> getList() {
		return list;
	}

	public void setList(List<Resume_AwardDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_AwardDto [awdseq=" + awdseq + ", resumeseq=" + resumeseq + ", awd_name="
				+ Arrays.toString(awd_name) + ", awd_date=" + Arrays.toString(awd_date) + ", awd_org="
				+ Arrays.toString(awd_org) + "]";
	}
	
	

	
	
	
}
