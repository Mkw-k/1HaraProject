package bit.com.a.dto;

import java.io.Serializable;
import java.util.List;

public class BbsParam implements Serializable{

	private String choice;
	private String search;
	private int page;
	
	private int start;
	private int end;
	
	private String education;
	private String careerStart;
	private String careerEnd;
	
	private String area1name; 
	private String area1code; 
	private String area2name; 
	private String area2code; 

	private String buscode;
	//buscode3 테이블은 name 변수명이 busname임
	private String busname;
	
	private String arrAreacode;
	private String arrBusi;

	public String getArrBusi() {
		return arrBusi;
	}

	public void setArrBusi(String arrBusi) {
		this.arrBusi = arrBusi;
	}

	public String getArrAreacode() {
		return arrAreacode;
	}

	public void setArrAreacode(String arrAreacode) {
		this.arrAreacode = arrAreacode;
	}

	public BbsParam() {
	}

	public String getChoice() {
		return choice;
	}

	public void setChoice(String choice) {
		this.choice = choice;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getCareerStart() {
		return careerStart;
	}

	public void setCareerStart(String careerStart) {
		this.careerStart = careerStart;
	}

	public String getCareerEnd() {
		return careerEnd;
	}

	public void setCareerEnd(String careerEnd) {
		this.careerEnd = careerEnd;
	}

	public String getArea1name() {
		return area1name;
	}

	public void setArea1name(String area1name) {
		this.area1name = area1name;
	}

	public String getArea1code() {
		return area1code;
	}

	public void setArea1code(String area1code) {
		this.area1code = area1code;
	}

	public String getArea2name() {
		return area2name;
	}

	public void setArea2name(String area2name) {
		this.area2name = area2name;
	}

	public String getArea2code() {
		return area2code;
	}

	public void setArea2code(String area2code) {
		this.area2code = area2code;
	}

	public String getBuscode() {
		return buscode;
	}

	public void setBuscode(String buscode) {
		this.buscode = buscode;
	}

	public String getBusname() {
		return busname;
	}

	public void setBusname(String busname) {
		this.busname = busname;
	}

	@Override
	public String toString() {
		return "BbsParam [choice=" + choice + ", search=" + search + ", page=" + page + ", start=" + start + ", end="
				+ end + ", education=" + education + ", careerStart=" + careerStart + ", careerEnd=" + careerEnd
				+ ", area1name=" + area1name + ", area1code=" + area1code + ", area2name=" + area2name + ", area2code="
				+ area2code + ", buscode=" + buscode + ", busname=" + busname + "]";
	}

	public BbsParam(String choice, String search, int page, int start, int end, String education, String careerStart,
			String careerEnd, String area1name, String area1code, String area2name, String area2code, String buscode,
			String busname) {
		super();
		this.choice = choice;
		this.search = search;
		this.page = page;
		this.start = start;
		this.end = end;
		this.education = education;
		this.careerStart = careerStart;
		this.careerEnd = careerEnd;
		this.area1name = area1name;
		this.area1code = area1code;
		this.area2name = area2name;
		this.area2code = area2code;
		this.buscode = buscode;
		this.busname = busname;
	}
	
	


	
	
}
