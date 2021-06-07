package bit.com.a.dto;

import java.util.List;

public class Resume_LanguageVo {
	private int lanseq;
	private int resumeseq;
	private String lan_kind;
	private String lan_exam;
	private String lan_score;
	private int lan_grade;
	private String lan_date;
	private String lan_pass;

	public Resume_LanguageVo() {
		super();
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

	public String getLan_kind() {
		return lan_kind;
	}

	public void setLan_kind(String lan_kind) {
		this.lan_kind = lan_kind;
	}

	public String getLan_exam() {
		return lan_exam;
	}

	public void setLan_exam(String lan_exam) {
		this.lan_exam = lan_exam;
	}

	public String getLan_score() {
		return lan_score;
	}

	public void setLan_score(String lan_score) {
		this.lan_score = lan_score;
	}

	public int getLan_grade() {
		return lan_grade;
	}

	public void setLan_grade(int lan_grade) {
		this.lan_grade = lan_grade;
	}

	public String getLan_date() {
		return lan_date;
	}

	public void setLan_date(String lan_date) {
		this.lan_date = lan_date;
	}

	public String getLan_pass() {
		return lan_pass;
	}

	public void setLan_pass(String lan_pass) {
		this.lan_pass = lan_pass;
	}

	public Resume_LanguageVo(int lanseq, int resumeseq, String lan_kind, String lan_exam, String lan_score,
			int lan_grade, String lan_date, String lan_pass) {
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
		return "Resume_LanguageVo [lanseq=" + lanseq + ", resumeseq=" + resumeseq + ", lan_kind=" + lan_kind
				+ ", lan_exam=" + lan_exam + ", lan_score=" + lan_score + ", lan_grade=" + lan_grade + ", lan_date="
				+ lan_date + ", lan_pass=" + lan_pass + "]";
	}

	
	
	
}
