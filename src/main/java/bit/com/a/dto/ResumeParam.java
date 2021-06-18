package bit.com.a.dto;

public class ResumeParam {
	private int applyseq;
	private int jobseq;
	private String jobtitle;
	private int resumeseq;
	private String resumetitle;
	private String applydate;
	private int companyread;
	private String portfolioname;
	
	public ResumeParam() {
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

	public String getJobtitle() {
		return jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String getResumetitle() {
		return resumetitle;
	}

	public void setResumetitle(String resumetitle) {
		this.resumetitle = resumetitle;
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

	public String getPortfolioname() {
		return portfolioname;
	}

	public void setPortfolioname(String portfolioname) {
		this.portfolioname = portfolioname;
	}

	public ResumeParam(int applyseq, int jobseq, String jobtitle, int resumeseq, String resumetitle, String applydate,
			int companyread, String portfolioname) {
		super();
		this.applyseq = applyseq;
		this.jobseq = jobseq;
		this.jobtitle = jobtitle;
		this.resumeseq = resumeseq;
		this.resumetitle = resumetitle;
		this.applydate = applydate;
		this.companyread = companyread;
		this.portfolioname = portfolioname;
	}

	@Override
	public String toString() {
		return "ResumeParam [applyseq=" + applyseq + ", jobseq=" + jobseq + ", jobtitle=" + jobtitle + ", resumeseq="
				+ resumeseq + ", resumetitle=" + resumetitle + ", applydate=" + applydate + ", companyread="
				+ companyread + ", portfolioname=" + portfolioname + "]";
	}
	
	
	
	
	
}
