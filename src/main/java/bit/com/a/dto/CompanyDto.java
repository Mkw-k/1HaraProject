package bit.com.a.dto;

public class CompanyDto {

	
	private String companyname;		// 회사이름 
	private String address;			// 주소 
	private int companynum;			// 사업자(회사) 번호
	private String ceoname;			// 대표자 이름
	private int del;				// 삭제용
	private String companytype;		// 회사 규모 (소 중 대)
	private int companyseq;   		// 시컨스
	private String memberid;   		// 가입한 기업아이디
	private String content;	    	// 사업내용
	private String comimage;	   	// 회사 이미지
	private String empcount; 	    // 직원수
	private String salaryavg; 		// 평균 연봉
	private String salarystart;		// 초봉
	private String comyear;			// 회사 나이
	private String retiree;			// 퇴사자 수
	private String joinner;			// 입사자 수
	private String website;			// 웹사이트 주소
	private String mainservice;		// 주요서비스
	private String totalsale;		// 총매출
	



	public CompanyDto() {
		// TODO Auto-generated constructor stub
	}



public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getCompanynum() {
		return companynum;
	}

	public void setCompanynum(int companynum) {
		this.companynum = companynum;
	}

	public String getCeoname() {
		return ceoname;
	}

	public void setCeoname(String ceoname) {
		this.ceoname = ceoname;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}

	public String getCompanytype() {
		return companytype;
	}

	public void setCompanytype(String companytype) {
		this.companytype = companytype;
	}

	public int getCompanyseq() {
		return companyseq;
	}

	public void setCompanyseq(int companyseq) {
		this.companyseq = companyseq;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getComimage() {
		return comimage;
	}

	public void setComimage(String comimage) {
		this.comimage = comimage;
	}

	public String getEmpcount() {
		return empcount;
	}

	public void setEmpcount(String empcount) {
		this.empcount = empcount;
	}

	public String getSalaryavg() {
		return salaryavg;
	}

	public void setSalaryavg(String salaryavg) {
		this.salaryavg = salaryavg;
	}

	public String getSalarystart() {
		return salarystart;
	}

	public void setSalarystart(String salarystart) {
		this.salarystart = salarystart;
	}

	public String getComyear() {
		return comyear;
	}

	public void setComyear(String comyear) {
		this.comyear = comyear;
	}

	public String getRetiree() {
		return retiree;
	}

	public void setRetiree(String retiree) {
		this.retiree = retiree;
	}

	public String getJoinner() {
		return joinner;
	}

	public void setJoinner(String joinner) {
		this.joinner = joinner;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getMainservice() {
		return mainservice;
	}

	public void setMainservice(String mainservice) {
		this.mainservice = mainservice;
	}

	public String getTotalsale() {
		return totalsale;
	}

	public void setTotalsale(String totalsale) {
		this.totalsale = totalsale;
	}



	public CompanyDto(String companyname, String address, int companynum, String ceoname, int del, String companytype,
			int companyseq, String memberid, String content, String comimage, String empcount, String salaryavg,
			String salarystart, String comyear, String retiree, String joinner, String website, String mainservice,
			String totalsale, String updatecompanylist) {
		super();
		this.companyname = companyname;
		this.address = address;
		this.companynum = companynum;
		this.ceoname = ceoname;
		this.del = del;
		this.companytype = companytype;
		this.companyseq = companyseq;
		this.memberid = memberid;
		this.content = content;
		this.comimage = comimage;
		this.empcount = empcount;
		this.salaryavg = salaryavg;
		this.salarystart = salarystart;
		this.comyear = comyear;
		this.retiree = retiree;
		this.joinner = joinner;
		this.website = website;
		this.mainservice = mainservice;
		this.totalsale = totalsale;
		
	}



	@Override
	public String toString() {
		return "CompanyDto [companyname=" + companyname + ", address=" + address + ", companynum=" + companynum
				+ ", ceoname=" + ceoname + ", del=" + del + ", companytype=" + companytype + ", companyseq="
				+ companyseq + ", memberid=" + memberid + ", content=" + content + ", comimage=" + comimage
				+ ", empcount=" + empcount + ", salaryavg=" + salaryavg + ", salarystart=" + salarystart + ", comyear="
				+ comyear + ", retiree=" + retiree + ", joinner=" + joinner + ", website=" + website + ", mainservice="
				+ mainservice + ", totalsale=" + totalsale + "]";
	}
	
	
	
	

}
