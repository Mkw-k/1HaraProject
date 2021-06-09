package bit.com.a.dto;

import java.io.Serializable;

public class RecruitParam implements Serializable{

	private int year = -1;
	private int month = -1;
	private int day = -1;
	private int lastDay; // 28 29 30 31
	private int dayOfWeek;	// 요일

	private int hour = 0;
	private int min = 0;

	private String buscode1;
	private String buscodename1;

	private String buscode2;
	private String buscodename2;

	private String buscode;
	//buscode3 테이블은 name 변수명이 busname임
	private String busname;

	private String area1name;
	private String area1code;
	private String area2name;
	private String area2code;

	private String choice;
	private String search;
	private int page;

	private int start;
	private int end;

	private String education;
	private String careerStart;
	private String careerEnd;

	private String memberid;
	private String jobSeq;

	public RecruitParam() {
		// TODO Auto-generated constructor stub
	}

	public String getBuscode1() {
		return buscode1;
	}

	public void setBuscode1(String buscode1) {
		this.buscode1 = buscode1;
	}

	public String getBuscodename1() {
		return buscodename1;
	}

	public void setBuscodename1(String buscodename1) {
		this.buscodename1 = buscodename1;
	}

	public String getBuscode2() {
		return buscode2;
	}

	public void setBuscode2(String buscode2) {
		this.buscode2 = buscode2;
	}

	public String getBuscodename2() {
		return buscodename2;
	}

	public void setBuscodename2(String buscodename2) {
		this.buscodename2 = buscodename2;
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

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getLastDay() {
		return lastDay;
	}

	public void setLastDay(int lastDay) {
		this.lastDay = lastDay;
	}

	public int getDayOfWeek() {
		return dayOfWeek;
	}

	public void setDayOfWeek(int dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
	}

	public int getHour() {
		return hour;
	}

	public void setHour(int hour) {
		this.hour = hour;
	}

	public int getMin() {
		return min;
	}

	public void setMin(int min) {
		this.min = min;
	}


	@Override
	public String toString() {
		return "RecruitParam [year=" + year + ", month=" + month + ", day=" + day + ", lastDay=" + lastDay
				+ ", dayOfWeek=" + dayOfWeek + ", hour=" + hour + ", min=" + min + ", buscode1=" + buscode1
				+ ", buscodename1=" + buscodename1 + ", buscode2=" + buscode2 + ", buscodename2=" + buscodename2
				+ ", buscode=" + buscode + ", busname=" + busname + ", area1name=" + area1name + ", area1code="
				+ area1code + ", area2name=" + area2name + ", area2code=" + area2code + ", choice=" + choice
				+ ", search=" + search + ", page=" + page + ", start=" + start + ", end=" + end + ", education="
				+ education + ", careerStart=" + careerStart + ", careerEnd=" + careerEnd + "]";
	}

	public RecruitParam(int year, int month, int day, int lastDay, int dayOfWeek, int hour, int min, String buscode1,
			String buscodename1, String buscode2, String buscodename2, String buscode, String busname, String area1name,
			String area1code, String area2name, String area2code, String choice, String search, int page, int start,
			int end, String education, String careerStart, String careerEnd) {
		super();
		this.year = year;
		this.month = month;
		this.day = day;
		this.lastDay = lastDay;
		this.dayOfWeek = dayOfWeek;
		this.hour = hour;
		this.min = min;
		this.buscode1 = buscode1;
		this.buscodename1 = buscodename1;
		this.buscode2 = buscode2;
		this.buscodename2 = buscodename2;
		this.buscode = buscode;
		this.busname = busname;
		this.area1name = area1name;
		this.area1code = area1code;
		this.area2name = area2name;
		this.area2code = area2code;
		this.choice = choice;
		this.search = search;
		this.page = page;
		this.start = start;
		this.end = end;
		this.education = education;
		this.careerStart = careerStart;
		this.careerEnd = careerEnd;
		this.memberid = memberid;
		this.jobSeq = jobSeq;
	}







}
