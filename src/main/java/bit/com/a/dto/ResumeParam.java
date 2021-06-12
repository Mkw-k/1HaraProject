package bit.com.a.dto;

public class ResumeParam {
	private int applyseq;
	private int jobseq;
	private String jobtitle;
	private int resumeseq;
	private String resumetitle;
	private String applydate;
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
	public ResumeParam(int applyseq, int jobseq, String jobtitle, int resumeseq, String resumetitle, String applydate) {
		super();
		this.applyseq = applyseq;
		this.jobseq = jobseq;
		this.jobtitle = jobtitle;
		this.resumeseq = resumeseq;
		this.resumetitle = resumetitle;
		this.applydate = applydate;
	}
	public ResumeParam() {
		super();
	}
	@Override
	public String toString() {
		return "ResumeParam [applyseq=" + applyseq + ", jobseq=" + jobseq + ", jobtitle=" + jobtitle + ", resumeseq="
				+ resumeseq + ", resumetitle=" + resumetitle + ", applydate=" + applydate + "]";
	}
	
	
	
	
}
