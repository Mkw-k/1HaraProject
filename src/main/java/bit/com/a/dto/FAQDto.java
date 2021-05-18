package bit.com.a.dto;

public class FAQDto {
	private int faqseq;
	private String memberid;
	private String question;
	private String faqanswer;
	private int readcount;
	private String regdate;
	private int faqnum;
	
	public FAQDto(String memberid, String question, String faqanswer, int faqnum) {
		super();
		this.memberid = memberid;
		this.question = question;
		this.faqanswer = faqanswer;
		this.faqnum = faqnum;
	}
	
	public FAQDto(int faqseq, String memberid, String question, String faqanswer, int readcount, String regdate,
			int faqnum) {
		super();
		this.faqseq = faqseq;
		this.memberid = memberid;
		this.question = question;
		this.faqanswer = faqanswer;
		this.readcount = readcount;
		this.regdate = regdate;
		this.faqnum = faqnum;
	}

	public int getFaqseq() {
		return faqseq;
	}

	public void setFaqseq(int faqseq) {
		this.faqseq = faqseq;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getFaqanswer() {
		return faqanswer;
	}

	public void setFaqanswer(String faqanswer) {
		this.faqanswer = faqanswer;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getFaqnum() {
		return faqnum;
	}

	public void setFaqnum(int faqnum) {
		this.faqnum = faqnum;
	}

	@Override
	public String toString() {
		return "FAQDto [faqseq=" + faqseq + ", memberid=" + memberid + ", question=" + question + ", faqanswer="
				+ faqanswer + ", readcount=" + readcount + ", regdate=" + regdate + ", faqnum=" + faqnum + "]";
	}
	
}
