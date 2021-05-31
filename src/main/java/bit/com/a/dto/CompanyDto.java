package bit.com.a.dto;

public class CompanyDto {

	
	private String companyname;		// 회사이름 
	private String address;			// 주소 
	private int companynum;			// 사업자(회사) 번호
	private String ceoname;			// 대표자 이름
	private int del;				// 삭제용
	private String companytype;		// 회사 규모 (소 중 대)
	private int companyseq;   		// 시컨스
	private String companyid;   	// 가입한 기업아이디
	private String buscode;	    	// 업종
	private String comimage;	   	// 회사 이미지
	private int empcount; 	    	// 직원수
	private String salaryavg; 		// 평균 연봉
	private String salarystart;		// 초봉
	private int compyear;			// 회사 나이
	private int retiree;			// 퇴사자 수
	private int joinner;			// 입사자 수
	private String website;			// 웹사이트 주소
	private String mainservice;		// 주요서비스
	private String totalsale;		// 총매출
	
	public CompanyDto() {
		// TODO Auto-generated constructor stub
	}

	public CompanyDto(String companyname, String address, int companynum, String ceoname, int del, String companytype,
			int companyseq, String companyid, String buscode, String comimage, int empcount, String salaryavg,
			String salarystart, int compyear, int retiree, int joinner, String website, String mainservice,
			String totalsale) {
		super();
		this.companyname = companyname;
		this.address = address;
		this.companynum = companynum;
		this.ceoname = ceoname;
		this.del = del;
		this.companytype = companytype;
		this.companyseq = companyseq;
		this.companyid = companyid;
		this.buscode = buscode;
		this.comimage = comimage;
		this.empcount = empcount;
		this.salaryavg = salaryavg;
		this.salarystart = salarystart;
		this.compyear = compyear;
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
				+ companyseq + ", companyid=" + companyid + ", buscode=" + buscode + ", comimage=" + comimage
				+ ", empcount=" + empcount + ", salaryavg=" + salaryavg + ", salarystart=" + salarystart + ", compyear="
				+ compyear + ", retiree=" + retiree + ", joinner=" + joinner + ", website=" + website + ", mainservice="
				+ mainservice + ", totalsale=" + totalsale + "]";
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

	public String getCompanyid() {
		return companyid;
	}

	public void setCompanyid(String companyid) {
		this.companyid = companyid;
	}

	public String getBuscode() {
		return buscode;
	}

	public void setBuscode(String buscode) {
		this.buscode = buscode;
	}

	public String getComimage() {
		return comimage;
	}

	public void setComimage(String comimage) {
		this.comimage = comimage;
	}

	public int getEmpcount() {
		return empcount;
	}

	public void setEmpcount(int empcount) {
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

	public int getCompyear() {
		return compyear;
	}

	public void setCompyear(int compyear) {
		this.compyear = compyear;
	}

	public int getRetiree() {
		return retiree;
	}

	public void setRetiree(int retiree) {
		this.retiree = retiree;
	}

	public int getJoinner() {
		return joinner;
	}

	public void setJoinner(int joinner) {
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

	
	
	
	
}
