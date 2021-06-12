package bit.com.a.dto;

public class ApplyDto {
	private int applyseq;
	private int jobseq;
	private int resumeseq;
	private String memberid;
	private String applydate;
	
	
	public ApplyDto() {
		super();
	}

	public ApplyDto(int applyseq, int jobseq, int resumeseq, String memberid) {
		super();
		this.applyseq = applyseq;
		this.jobseq = jobseq;
		this.resumeseq = resumeseq;
		this.memberid = memberid;
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

	@Override
	public String toString() {
		return "ResumeParam [applyseq=" + applyseq + ", jobseq=" + jobseq + ", resumeseq=" + resumeseq + ", memberid="
				+ memberid + ", applydate=" + applydate + "]";
	}
	
	

	
	
	
}
