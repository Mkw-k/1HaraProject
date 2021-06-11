package bit.com.a.dto;

public class ApplyParam {
	private int applyseq;
	private int jobseq;
	private String memberid;
	private int resumeseq;
	private String applydate;
	private String resumetitle;
	private String name;
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
	public ApplyParam(int applyseq, int jobseq, String memberid, int resumeseq, String applydate, String resumetitle,
			String name) {
		super();
		this.applyseq = applyseq;
		this.jobseq = jobseq;
		this.memberid = memberid;
		this.resumeseq = resumeseq;
		this.applydate = applydate;
		this.resumetitle = resumetitle;
		this.name = name;
	}
	public ApplyParam() {
		super();
	}
	@Override
	public String toString() {
		return "ApplyParam [applyseq=" + applyseq + ", jobseq=" + jobseq + ", memberid=" + memberid + ", resumeseq="
				+ resumeseq + ", applydate=" + applydate + ", resumetitle=" + resumetitle + ", name=" + name + "]";
	}
	
	
	
}
