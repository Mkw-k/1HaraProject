package bit.com.a.dto;
/*
 * DROP TABLE FAQ
CASCADE CONSTRAINTS;

DROP SEQUENCE FAQ_SEQ ;

CREATE SEQUENCE FAQ_SEQ
START WITH 1 
INCREMENT BY 1;

 -- 21. FAQ 테이블
CREATE TABLE FAQ(
FAQSEQ NUMBER PRIMARY KEY,              --SEQ
MEMBERID VARCHAR2(20) NOT NULL,         --글쓴이(관리자)
QUESTION VARCHAR2(200) NOT NULL,        --질문
FAQANSWER VARCHAR2(1000) NOT NULL,      --답글
READCOUNT NUMBER,                       --조회수
REGDATE DATE,                           --작성일
FAQNUM NUMBER,                 --키워드

CONSTRAINT FAQ_FK1 FOREIGN KEY (MEMBERID)
REFERENCES MEMBER(MEMBERID)
)
 */
public class FAQDto {
	private int faqseq;
	private String memberid;
	private String question;
	private String faqanswer;
	private int readcount;
	private String regdate;
	private int faqnum;
	private String Filename;
	private String NewFilename;
	
	public FAQDto() {
		// TODO Auto-generated constructor stub
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

	public String getFilename() {
		return Filename;
	}

	public void setFilename(String filename) {
		Filename = filename;
	}

	public String getNewFilename() {
		return NewFilename;
	}

	public void setNewFilename(String newFilename) {
		NewFilename = newFilename;
	}

	public FAQDto(int faqseq, String memberid, String question, String faqanswer, int readcount, String regdate,
			int faqnum, String filename, String newFilename) {
		super();
		this.faqseq = faqseq;
		this.memberid = memberid;
		this.question = question;
		this.faqanswer = faqanswer;
		this.readcount = readcount;
		this.regdate = regdate;
		this.faqnum = faqnum;
		Filename = filename;
		NewFilename = newFilename;
	}

	public FAQDto(String memberid, String question, String faqanswer, int faqnum, String filename) {
		super();
		this.memberid = memberid;
		this.question = question;
		this.faqanswer = faqanswer;
		this.faqnum = faqnum;
		Filename = filename;
	}

	
	

	


	
	

	
	
}
