package bit.com.a.dto;

import java.util.List;

public class Resume_EduVo {
	private int educationseq;
	private int resumeseq;
	private String highschool;
	private String high_str;
	private String high_str_status;
	private String high_end;
	private String high_end_status;
	private String university;
	private String univ_status;
	private String univ_str;
	private String univ_str_status;
	private String univ_end;
	private String univ_end_status;
	private String univ_major_field;
	private String univ_major;
	private String univ_night;
	private String univ_grade;
	private String univ_grade_base;
	private String univ_paper;
	private List<Resume_EduDto> list;

	public Resume_EduVo() {
		super();
	}

	public int getEducationseq() {
		return educationseq;
	}

	public void setEducationseq(int educationseq) {
		this.educationseq = educationseq;
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String getHighschool() {
		return highschool;
	}

	public void setHighschool(String highschool) {
		this.highschool = highschool;
	}

	public String getHigh_str() {
		return high_str;
	}

	public void setHigh_str(String high_str) {
		this.high_str = high_str;
	}

	public String getHigh_str_status() {
		return high_str_status;
	}

	public void setHigh_str_status(String high_str_status) {
		this.high_str_status = high_str_status;
	}

	public String getHigh_end() {
		return high_end;
	}

	public void setHigh_end(String high_end) {
		this.high_end = high_end;
	}

	public String getHigh_end_status() {
		return high_end_status;
	}

	public void setHigh_end_status(String high_end_status) {
		this.high_end_status = high_end_status;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getUniv_status() {
		return univ_status;
	}

	public void setUniv_status(String univ_status) {
		this.univ_status = univ_status;
	}

	public String getUniv_str() {
		return univ_str;
	}

	public void setUniv_str(String univ_str) {
		this.univ_str = univ_str;
	}

	public String getUniv_str_status() {
		return univ_str_status;
	}

	public void setUniv_str_status(String univ_str_status) {
		this.univ_str_status = univ_str_status;
	}

	public String getUniv_end() {
		return univ_end;
	}

	public void setUniv_end(String univ_end) {
		this.univ_end = univ_end;
	}

	public String getUniv_end_status() {
		return univ_end_status;
	}

	public void setUniv_end_status(String univ_end_status) {
		this.univ_end_status = univ_end_status;
	}

	public String getUniv_major_field() {
		return univ_major_field;
	}

	public void setUniv_major_field(String univ_major_field) {
		this.univ_major_field = univ_major_field;
	}

	public String getUniv_major() {
		return univ_major;
	}

	public void setUniv_major(String univ_major) {
		this.univ_major = univ_major;
	}

	public String getUniv_night() {
		return univ_night;
	}

	public void setUniv_night(String univ_night) {
		this.univ_night = univ_night;
	}

	public String getUniv_grade() {
		return univ_grade;
	}

	public void setUniv_grade(String univ_grade) {
		this.univ_grade = univ_grade;
	}

	public String getUniv_grade_base() {
		return univ_grade_base;
	}

	public void setUniv_grade_base(String univ_grade_base) {
		this.univ_grade_base = univ_grade_base;
	}

	public String getUniv_paper() {
		return univ_paper;
	}

	public void setUniv_paper(String univ_paper) {
		this.univ_paper = univ_paper;
	}

	public List<Resume_EduDto> getList() {
		return list;
	}

	public void setList(List<Resume_EduDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_EduVo [educationseq=" + educationseq + ", resumeseq=" + resumeseq + ", highschool=" + highschool
				+ ", high_str=" + high_str + ", high_str_status=" + high_str_status + ", high_end=" + high_end
				+ ", high_end_status=" + high_end_status + ", university=" + university + ", univ_status=" + univ_status
				+ ", univ_str=" + univ_str + ", univ_str_status=" + univ_str_status + ", univ_end=" + univ_end
				+ ", univ_end_status=" + univ_end_status + ", univ_major_field=" + univ_major_field + ", univ_major="
				+ univ_major + ", univ_night=" + univ_night + ", univ_grade=" + univ_grade + ", univ_grade_base="
				+ univ_grade_base + ", univ_paper=" + univ_paper + ", list=" + list + "]";
	}

	
	
	
	
}
