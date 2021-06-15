package bit.com.a.dto;

public class ApplyParam {
	private int applyseq;
	private int jobseq;
	private String memberid;
	private int resumeseq;
	private String applydate;
	private String resumetitle;
	private String name;
	private String birth;
	private String address;
	private String detailaddress;
	private String phonenum;
	private String email;
	private int companyread;
	
	public int getApplyseq() {
		return applyseq;
	}
	public void setApplyseq(int applyseq) {
		this.applyseq = applyseq;
	}
	public int getJobseq() {
		return jobseq;
	}
	public void setJobseq(int jobseq) {
		this.jobseq = jobseq;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public int getResumeseq() {
		return resumeseq;
	}
	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}
	public String getApplydate() {
		return applydate;
	}
	public void setApplydate(String applydate) {
		this.applydate = applydate;
	}
	public String getResumetitle() {
		return resumetitle;
	}
	public void setResumetitle(String resumetitle) {
		this.resumetitle = resumetitle;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public int getCompanyread() {
		return companyread;
	}
	public void setCompanyread(int companyread) {
		this.companyread = companyread;
	}
	public ApplyParam() {
		super();
	}
	
	
	public ApplyParam(int applyseq, int jobseq, String memberid, int resumeseq, String applydate, String resumetitle,
			String name, String birth, String address, String detailaddress, String phonenum, String email,
			int companyread) {
		super();
		this.applyseq = applyseq;
		this.jobseq = jobseq;
		this.memberid = memberid;
		this.resumeseq = resumeseq;
		this.applydate = applydate;
		this.resumetitle = resumetitle;
		this.name = name;
		this.birth = birth;
		this.address = address;
		this.detailaddress = detailaddress;
		this.phonenum = phonenum;
		this.email = email;
		this.companyread = companyread;
	}
	@Override
	public String toString() {
		return "ApplyParam [applyseq=" + applyseq + ", jobseq=" + jobseq + ", memberid=" + memberid + ", resumeseq="
				+ resumeseq + ", applydate=" + applydate + ", resumetitle=" + resumetitle + ", name=" + name
				+ ", birth=" + birth + ", address=" + address + ", detailaddress=" + detailaddress + ", phonenum="
				+ phonenum + ", email=" + email + ", companyread=" + companyread + "]";
	}
	
	
	
	
	
	
	
}
