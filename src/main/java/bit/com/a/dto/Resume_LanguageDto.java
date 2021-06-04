package bit.com.a.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/*
CREATE TABLE LANGUAGE(   
LANSEQ NUMBER PRIMARY KEY, 
RESUMESEQ NUMBER,     							 --이력서SEQ
LAN_KIND NUMBER NOT NULL,                        --SEQ                     
LAN_EXAM VARCHAR2(30) NOT NULL,             --언어 종류
LAN_SCORE VARCHAR2(30) NOT NULL,            --시험명
LAN_GRADE NUMBER,                                --점수
LAN_DATE VARCHAR2(30) NOT NULL,                         --등급
LAN_PASS VARCHAR2(10),							 --취득여부


CONSTRAINT LANGUAGE_AWARD_FK1 FOREIGN KEY (RESUMESEQ)
REFERENCES RESUME (RESUMESEQ)
); */
public class Resume_LanguageDto implements Serializable {
	private int lanseq;
	private int resumeseq;
	private String[] lan_kind;
	private String[] lan_exam;
	private String[] lan_score;
	private int[] lan_grade;
	private String[] lan_date;
	private String[] lan_pass;
	private List<Resume_LanguageDto> list;
	
	public Resume_LanguageDto() {
		// TODO Auto-generated constructor stub
	}

	public int getLanseq() {
		return lanseq;
	}

	public void setLanseq(int lanseq) {
		this.lanseq = lanseq;
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String[] getLan_kind() {
		return lan_kind;
	}

	public void setLan_kind(String[] lan_kind) {
		this.lan_kind = lan_kind;
	}

	public String[] getLan_exam() {
		return lan_exam;
	}

	public void setLan_exam(String[] lan_exam) {
		this.lan_exam = lan_exam;
	}

	public String[] getLan_score() {
		return lan_score;
	}

	public void setLan_score(String[] lan_score) {
		this.lan_score = lan_score;
	}

	public int[] getLan_grade() {
		return lan_grade;
	}

	public void setLan_grade(int[] lan_grade) {
		this.lan_grade = lan_grade;
	}

	public String[] getLan_date() {
		return lan_date;
	}

	public void setLan_date(String[] lan_date) {
		this.lan_date = lan_date;
	}

	public String[] getLan_pass() {
		return lan_pass;
	}

	public void setLan_pass(String[] lan_pass) {
		this.lan_pass = lan_pass;
	}
	
	

	public List<Resume_LanguageDto> getList() {
		return list;
	}

	public void setList(List<Resume_LanguageDto> list) {
		this.list = list;
	}

	public Resume_LanguageDto(int lanseq, int resumeseq, String[] lan_kind, String[] lan_exam, String[] lan_score,
			int[] lan_grade, String[] lan_date, String[] lan_pass) {
		super();
		this.lanseq = lanseq;
		this.resumeseq = resumeseq;
		this.lan_kind = lan_kind;
		this.lan_exam = lan_exam;
		this.lan_score = lan_score;
		this.lan_grade = lan_grade;
		this.lan_date = lan_date;
		this.lan_pass = lan_pass;
	}

	@Override
	public String toString() {
		return "Resume_LanguageDto [lanseq=" + lanseq + ", resumeseq=" + resumeseq + ", lan_kind="
				+ Arrays.toString(lan_kind) + ", lan_exam=" + Arrays.toString(lan_exam) + ", lan_score="
				+ Arrays.toString(lan_score) + ", lan_grade=" + Arrays.toString(lan_grade) + ", lan_date="
				+ Arrays.toString(lan_date) + ", lan_pass=" + Arrays.toString(lan_pass) + "]";
	}
	
	

	
	
	
}
