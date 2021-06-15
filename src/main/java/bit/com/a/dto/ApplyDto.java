package bit.com.a.dto;

public class ApplyDto {
	private int applyseq;
	private int jobseq;
	private int resumeseq;
	private String memberid;
	private String applydate;
	private int companyread;
	
	
	public ApplyDto() {
		super();
	}


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


	public int getResumeseq() {
		return resumeseq;
	}


	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}


	public String getMemberid() {
		return memberid;
	}


	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}


	public String getApplydate() {
		return applydate;
	}


	public void setApplydate(String applydate) {
		this.applydate = applydate;
	}


	public int getCompanyread() {
		return companyread;
	}


	public void setCompanyread(int companyread) {
		this.companyread = companyread;
	}


	public ApplyDto(int applyseq, int jobseq, int resumeseq, String memberid, String applydate, int companyread) {
		super();
		this.applyseq = applyseq;
		this.jobseq = jobseq;
		this.resumeseq = resumeseq;
		this.memberid = memberid;
		this.applydate = applydate;
		this.companyread = companyread;
	}


	@Override
	public String toString() {
		return "ApplyDto [applyseq=" + applyseq + ", jobseq=" + jobseq + ", resumeseq=" + resumeseq + ", memberid="
				+ memberid + ", applydate=" + applydate + ", companyread=" + companyread + "]";
	}

	

	
	
	
}
