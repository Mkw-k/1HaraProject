package bit.com.a.dto;

import java.io.Serializable;

public class RecruitParam implements Serializable{

	private String buscode1;
	private String buscodename1;
	private String buscode2;
	private String buscodename2;
	private String buscode;
	//buscode3 테이블은 name 변수명이 busname임
	private String busname;
	
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

	@Override
	public String toString() {
		return "RecruitParam [buscode1=" + buscode1 + ", buscodename1=" + buscodename1 + ", buscode2=" + buscode2
				+ ", buscodename2=" + buscodename2 + ", buscode=" + buscode + ", busname=" + busname + "]";
	}

	public RecruitParam(String buscode1, String buscodename1, String buscode2, String buscodename2, String buscode,
			String busname) {
		super();
		this.buscode1 = buscode1;
		this.buscodename1 = buscodename1;
		this.buscode2 = buscode2;
		this.buscodename2 = buscodename2;
		this.buscode = buscode;
		this.busname = busname;
	}


	
	
	
	
	
}
