package bit.com.a.dto;

import java.io.Serializable;

public class CalendarDto implements Serializable {
	
	private int seq;
	private int jobseq;
	private String memberid;
	private String title;
	private String content;
	private String rdate;	// 일정이 있는 날  20/08/03
	private String wdate;	// 작성일		  20/07/31()	
	
	public CalendarDto() {
	}

	
	public CalendarDto(int seq, int jobseq, String memberid, String title, String content, String rdate, String wdate) {
		super();
		this.seq = seq;
		this.jobseq = jobseq;
		this.memberid = memberid;
		this.title = title;
		this.content = content;
		this.rdate = rdate;
		this.wdate = wdate;
	}


	public CalendarDto(String memberid, String title, String content, String rdate) {
		super();
		this.memberid = memberid;
		this.title = title;
		this.content = content;
		this.rdate = rdate;
	}


	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
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


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}


	@Override
	public String toString() {
		return "CalendarDto [seq=" + seq + ", memberid=" + memberid + ", title=" + title + ", content=" + content
				+ ", rdate=" + rdate + ", wdate=" + wdate + "]";
	}
	

}
