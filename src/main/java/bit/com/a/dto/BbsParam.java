package bit.com.a.dto;

import java.io.Serializable;
import java.util.List;

public class BbsParam implements Serializable{

	private String choice;
	private String search;
	private int page;
	
	private int start;
	private int end;
	
	private List<RecruitDto> recrulist;
	private String busc1; 
	private String busc2; 
	private String busc3; 
	private String busc4; 
	private String busc5; 
	private String busc6; 
	private String busc7; 
	private String busc8; 
	private String busc9; 
	private String busc10; 
	
	

	
	public BbsParam() {
	}
	
	public String getBusc1() {
		return busc1;
	}

	public void setBusc1(String busc1) {
		this.busc1 = busc1;
	}

	public String getBusc2() {
		return busc2;
	}

	public void setBusc2(String busc2) {
		this.busc2 = busc2;
	}

	public String getBusc3() {
		return busc3;
	}

	public void setBusc3(String busc3) {
		this.busc3 = busc3;
	}

	public String getBusc4() {
		return busc4;
	}

	public void setBusc4(String busc4) {
		this.busc4 = busc4;
	}

	public String getBusc5() {
		return busc5;
	}


	public void setBusc5(String busc5) {
		this.busc5 = busc5;
	}


	public String getBusc6() {
		return busc6;
	}


	public void setBusc6(String busc6) {
		this.busc6 = busc6;
	}


	public String getBusc7() {
		return busc7;
	}

	public void setBusc7(String busc7) {
		this.busc7 = busc7;
	}

	public String getBusc8() {
		return busc8;
	}


	public void setBusc8(String busc8) {
		this.busc8 = busc8;
	}

	public String getBusc9() {
		return busc9;
	}

	public void setBusc9(String busc9) {
		this.busc9 = busc9;
	}


	public String getBusc10() {
		return busc10;
	}


	public void setBusc10(String busc10) {
		this.busc10 = busc10;
	}


	public List<RecruitDto> getRecrulist() {
		return recrulist;
	}



	public void setRecrulist(List<RecruitDto> recrulist) {
		this.recrulist = recrulist;
	}



	public BbsParam(String choice, String search, int page, int start, int end) {
		super();
		this.choice = choice;
		this.search = search;
		this.page = page;
		this.start = start;
		this.end = end;
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

	@Override
	public String toString() {
		return "BbsParam [choice=" + choice + ", search=" + search + ", page=" + page + ", start=" + start + ", end="
				+ end + ", recrulist=" + recrulist + ", busc1=" + busc1 + ", busc2=" + busc2 + ", busc3=" + busc3
				+ ", busc4=" + busc4 + ", busc5=" + busc5 + ", busc6=" + busc6 + ", busc7=" + busc7 + ", busc8=" + busc8
				+ ", busc9=" + busc9 + ", busc10=" + busc10 + "]";
	}
	
}
