package bit.com.a.dto;

import java.util.List;

public class Resume_AwardVo {
	private int awdseq;
	private int resumeseq;
	private String awd_name;
	private String awd_date;
	private String awd_org;

	public Resume_AwardVo() {
		super();
	}

	public int getAwdseq() {
		return awdseq;
	}

	public void setAwdseq(int awdseq) {
		this.awdseq = awdseq;
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String getAwd_name() {
		return awd_name;
	}

	public void setAwd_name(String awd_name) {
		this.awd_name = awd_name;
	}

	public String getAwd_date() {
		return awd_date;
	}

	public void setAwd_date(String awd_date) {
		this.awd_date = awd_date;
	}

	public String getAwd_org() {
		return awd_org;
	}

	public void setAwd_org(String awd_org) {
		this.awd_org = awd_org;
	}

	public Resume_AwardVo(int awdseq, int resumeseq, String awd_name, String awd_date, String awd_org) {
		super();
		this.awdseq = awdseq;
		this.resumeseq = resumeseq;
		this.awd_name = awd_name;
		this.awd_date = awd_date;
		this.awd_org = awd_org;
	}

	@Override
	public String toString() {
		return "Resume_AwardVo [awdseq=" + awdseq + ", resumeseq=" + resumeseq + ", awd_name=" + awd_name
				+ ", awd_date=" + awd_date + ", awd_org=" + awd_org + "]";
	}


	
	
	
}
