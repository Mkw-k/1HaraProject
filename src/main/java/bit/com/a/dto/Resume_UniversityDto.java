package bit.com.a.dto;

import java.util.Arrays;

public class Resume_UniversityDto {
	private int universityseq;
	private int resumeseq;
	private String[] university;
	private String[] univ_status;
	private String[] univ_str;
	private String[] univ_str_status;
	private String[] univ_end;
	private String[] univ_end_status;
	private String[] univ_major_field;
	private String[] univ_major;
	private String[] univ_night;
	private String[] univ_grade;
	private String[] univ_grade_base;
	private String[] univ_paper;
	public Resume_UniversityDto() {
		super();
	}
	public Resume_UniversityDto(int universityseq, int resumeseq, String[] university, String[] univ_status,
			String[] univ_str, String[] univ_str_status, String[] univ_end, String[] univ_end_status,
			String[] univ_major_field, String[] univ_major, String[] univ_night, String[] univ_grade,
			String[] univ_grade_base, String[] univ_paper) {
		super();
		this.universityseq = universityseq;
		this.resumeseq = resumeseq;
		this.university = university;
		this.univ_status = univ_status;
		this.univ_str = univ_str;
		this.univ_str_status = univ_str_status;
		this.univ_end = univ_end;
		this.univ_end_status = univ_end_status;
		this.univ_major_field = univ_major_field;
		this.univ_major = univ_major;
		this.univ_night = univ_night;
		this.univ_grade = univ_grade;
		this.univ_grade_base = univ_grade_base;
		this.univ_paper = univ_paper;
	}
	public int getUniversityseq() {
		return universityseq;
	}
	public void setUniversityseq(int universityseq) {
		this.universityseq = universityseq;
	}
	public int getResumeseq() {
		return resumeseq;
	}
	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}
	public String[] getUniversity() {
		return university;
	}
	public void setUniversity(String[] university) {
		this.university = university;
	}
	public String[] getUniv_status() {
		return univ_status;
	}
	public void setUniv_status(String[] univ_status) {
		this.univ_status = univ_status;
	}
	public String[] getUniv_str() {
		return univ_str;
	}
	public void setUniv_str(String[] univ_str) {
		this.univ_str = univ_str;
	}
	public String[] getUniv_str_status() {
		return univ_str_status;
	}
	public void setUniv_str_status(String[] univ_str_status) {
		this.univ_str_status = univ_str_status;
	}
	public String[] getUniv_end() {
		return univ_end;
	}
	public void setUniv_end(String[] univ_end) {
		this.univ_end = univ_end;
	}
	public String[] getUniv_end_status() {
		return univ_end_status;
	}
	public void setUniv_end_status(String[] univ_end_status) {
		this.univ_end_status = univ_end_status;
	}
	public String[] getUniv_major_field() {
		return univ_major_field;
	}
	public void setUniv_major_field(String[] univ_major_field) {
		this.univ_major_field = univ_major_field;
	}
	public String[] getUniv_major() {
		return univ_major;
	}
	public void setUniv_major(String[] univ_major) {
		this.univ_major = univ_major;
	}
	public String[] getUniv_night() {
		return univ_night;
	}
	public void setUniv_night(String[] univ_night) {
		this.univ_night = univ_night;
	}
	public String[] getUniv_grade() {
		return univ_grade;
	}
	public void setUniv_grade(String[] univ_grade) {
		this.univ_grade = univ_grade;
	}
	public String[] getUniv_grade_base() {
		return univ_grade_base;
	}
	public void setUniv_grade_base(String[] univ_grade_base) {
		this.univ_grade_base = univ_grade_base;
	}
	public String[] getUniv_paper() {
		return univ_paper;
	}
	public void setUniv_paper(String[] univ_paper) {
		this.univ_paper = univ_paper;
	}
	@Override
	public String toString() {
		return "Resume_UniversityDto [universityseq=" + universityseq + ", resumeseq=" + resumeseq + ", university="
				+ Arrays.toString(university) + ", univ_status=" + Arrays.toString(univ_status) + ", univ_str="
				+ Arrays.toString(univ_str) + ", univ_str_status=" + Arrays.toString(univ_str_status) + ", univ_end="
				+ Arrays.toString(univ_end) + ", univ_end_status=" + Arrays.toString(univ_end_status)
				+ ", univ_major_field=" + Arrays.toString(univ_major_field) + ", univ_major="
				+ Arrays.toString(univ_major) + ", univ_night=" + Arrays.toString(univ_night) + ", univ_grade="
				+ Arrays.toString(univ_grade) + ", univ_grade_base=" + Arrays.toString(univ_grade_base)
				+ ", univ_paper=" + Arrays.toString(univ_paper) + "]";
	}
	
	
	
}
