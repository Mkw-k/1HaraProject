package bit.com.a.dto;

import java.io.Serializable;

public class replyDto implements Serializable{

	private int replyseq;	// 댓글 번호
	private int jobtalkseq; // 취업톡톡 번호
	private String reply_content;
	private String memberid;
	private String rdate;
	private int reply_count;	// 답글 수
	
	
	
	
	public replyDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public replyDto(int replyseq, int jobtalkseq, String reply_content, String memberid, String rdate,
			int reply_count) {
		super();
		this.replyseq = replyseq;
		this.jobtalkseq = jobtalkseq;
		this.reply_content = reply_content;
		this.memberid = memberid;
		this.rdate = rdate;
		this.reply_count = reply_count;
	}




	public int getReplyseq() {
		return replyseq;
	}



	public void setReplyseq(int replyseq) {
		this.replyseq = replyseq;
	}



	public int getJobtalkseq() {
		return jobtalkseq;
	}



	public void setJobtalkseq(int jobtalkseq) {
		this.jobtalkseq = jobtalkseq;
	}



	public String getReply_content() {
		return reply_content;
	}



	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}



	public String getMemberid() {
		return memberid;
	}



	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}



	public String getRdate() {
		return rdate;
	}



	public void setRdate(String rdate) {
		this.rdate = rdate;
	}


	public int getReply_count() {
		return reply_count;
	}


	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}



	@Override
	public String toString() {
		return "replyDto [replyseq=" + replyseq + ", jobtalkseq=" + jobtalkseq + ", reply_content=" + reply_content
				+ ", memberid=" + memberid + ", rdate=" + rdate + ", reply_count=" + reply_count + "]";
	}
	
}
