package bit.com.a.dto;

import java.io.Serializable;

public class RecruitReplyDto implements Serializable {

	private int replyrecruitseq;	// 댓글 번호
	private int jobseq; // 채용공고 번호
	private String reply_content;
	private String memberid;
	private String rdate;
	private int reply_count;	// 답글 수
	
	
	
	public RecruitReplyDto() {
		super();
		// TODO Auto-generated constructor stub
	}


	

	

	public RecruitReplyDto(int replyrecruitseq, int jobseq, String reply_content, String memberid, String rdate,
			int reply_count) {
		super();
		this.replyrecruitseq = replyrecruitseq;
		this.jobseq = jobseq;
		this.reply_content = reply_content;
		this.memberid = memberid;
		this.rdate = rdate;
		this.reply_count = reply_count;
	}


	



	public int getReplyrecruitseq() {
		return replyrecruitseq;
	}






	public void setReplyrecruitseq(int replyrecruitseq) {
		this.replyrecruitseq = replyrecruitseq;
	}






	public int getJobseq() {
		return jobseq;
	}


	public void setJobseq(int jobseq) {
		this.jobseq = jobseq;
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
	
	
	
}
