package bit.com.a.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/*
----RESUME 테이블 작성후 실행 
CREATE TABLE ACTIVITY (   
ACTIVITYSEQ NUMBER PRIMARY KEY,	--SEQ
RESUMESEQ NUMBER,	--이력서SEQ
ACT_FIELD VARCHAR2(20),	--활동구분
ACT_ORG	VARCHAR2(30),--활동기관
ACT_STR	VARCHAR2(20),--활동시작일
ACT_END	VARCHAR2(20),--활동만료일
ACT_DETAIL VARCHAR2(100),--활동내용


CONSTRAINT LANGUAGE_ACTIVITY_FK1 FOREIGN KEY (RESUMESEQ)
REFERENCES RESUME (RESUMESEQ)
);
 */
public class Resume_ActivityDto implements Serializable{
	private int activityseq;
	private int resumeseq;
	private String[] act_field;
	private String[] act_org;
	private String[] act_str;
	private String[] act_end;
	private String[] act_detail;
	private List<Resume_ActivityDto> list;
	
	public Resume_ActivityDto() {
		// TODO Auto-generated constructor stub
	}

	public Resume_ActivityDto(int activityseq, int resumeseq, String[] act_field, String[] act_org, String[] act_str,
			String[] act_end, String[] act_detail) {
		super();
		this.activityseq = activityseq;
		this.resumeseq = resumeseq;
		this.act_field = act_field;
		this.act_org = act_org;
		this.act_str = act_str;
		this.act_end = act_end;
		this.act_detail = act_detail;
	}

	public int getActivityseq() {
		return activityseq;
	}

	public void setActivityseq(int activityseq) {
		this.activityseq = activityseq;
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String[] getAct_field() {
		return act_field;
	}

	public void setAct_field(String[] act_field) {
		this.act_field = act_field;
	}

	public String[] getAct_org() {
		return act_org;
	}

	public void setAct_org(String[] act_org) {
		this.act_org = act_org;
	}

	public String[] getAct_str() {
		return act_str;
	}

	public void setAct_str(String[] act_str) {
		this.act_str = act_str;
	}

	public String[] getAct_end() {
		return act_end;
	}

	public void setAct_end(String[] act_end) {
		this.act_end = act_end;
	}

	public String[] getAct_detail() {
		return act_detail;
	}

	public void setAct_detail(String[] act_detail) {
		this.act_detail = act_detail;
	}
	
	

	public List<Resume_ActivityDto> getList() {
		return list;
	}

	public void setList(List<Resume_ActivityDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_ActivityDto [activityseq=" + activityseq + ", resumeseq=" + resumeseq + ", act_field="
				+ Arrays.toString(act_field) + ", act_org=" + Arrays.toString(act_org) + ", act_str="
				+ Arrays.toString(act_str) + ", act_end=" + Arrays.toString(act_end) + ", act_detail="
				+ Arrays.toString(act_detail) + "]";
	}
	
	

	
	
	
}
