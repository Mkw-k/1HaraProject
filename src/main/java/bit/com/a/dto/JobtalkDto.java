package bit.com.a.dto;

import java.io.Serializable;

public class JobtalkDto implements Serializable{

	private int jobtalkseq;
	private String memberid;		// 작성자
	
	private int jobtalk_ref;		// 그룹번호
	private int jobtalk_step;		// 행번호
	private int jobtalk_depth;		// 깊이
	
	private String jobtalk_title;	// 제목
	private String jobtalk_content;	// 내용
	private String wdate;	// 작성일
	
	private int del;		// 삭제
	private int jobtalk_readcount;	// 댓글수
	
	public JobtalkDto() {
	}

	public JobtalkDto(int jobtalkseq, String memberid, int jobtalk_ref, int jobtalk_step, int jobtalk_depth,
			String jobtalk_title, String jobtalk_content, String wdate, int del, int jobtalk_readcount) {
		super();
		this.jobtalkseq = jobtalkseq;
		this.memberid = memberid;
		this.jobtalk_ref = jobtalk_ref;
		this.jobtalk_step = jobtalk_step;
		this.jobtalk_depth = jobtalk_depth;
		this.jobtalk_title = jobtalk_title;
		this.jobtalk_content = jobtalk_content;
		this.wdate = wdate;
		this.del = del;
		this.jobtalk_readcount = jobtalk_readcount;
	}

	public int getJobtalkseq() {
		return jobtalkseq;
	}

	public void setJobtalkseq(int jobtalkseq) {
		this.jobtalkseq = jobtalkseq;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public int getJobtalk_ref() {
		return jobtalk_ref;
	}

	public void setJobtalk_ref(int jobtalk_ref) {
		this.jobtalk_ref = jobtalk_ref;
	}

	public int getJobtalk_step() {
		return jobtalk_step;
	}

	public void setJobtalk_step(int jobtalk_step) {
		this.jobtalk_step = jobtalk_step;
	}

	public int getJobtalk_depth() {
		return jobtalk_depth;
	}

	public void setJobtalk_depth(int jobtalk_depth) {
		this.jobtalk_depth = jobtalk_depth;
	}

	public String getJobtalk_title() {
		return jobtalk_title;
	}

	public void setJobtalk_title(String jobtalk_title) {
		this.jobtalk_title = jobtalk_title;
	}

	public String getJobtalk_content() {
		return jobtalk_content;
	}

	public void setJobtalk_content(String jobtalk_content) {
		this.jobtalk_content = jobtalk_content;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public int getDel() {
		return del;
	}

	public void setDel(int del) {
		this.del = del;
	}

	public int getJobtalk_readcount() {
		return jobtalk_readcount;
	}

	public void setJobtalk_readcount(int jobtalk_readcount) {
		this.jobtalk_readcount = jobtalk_readcount;
	}

	@Override
	public String toString() {
		return "JobtalkDto [jobtalkseq=" + jobtalkseq + ", memberid=" + memberid + ", jobtalk_ref=" + jobtalk_ref
				+ ", jobtalk_step=" + jobtalk_step + ", jobtalk_depth=" + jobtalk_depth + ", jobtalk_title="
				+ jobtalk_title + ", jobtalk_content=" + jobtalk_content + ", wdate=" + wdate + ", del=" + del
				+ ", jobtalk_readcount=" + jobtalk_readcount + "]";
	}

	
	
	
}