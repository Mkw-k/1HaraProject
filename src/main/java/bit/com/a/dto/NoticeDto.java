package bit.com.a.dto;

import java.io.Serializable;

/*CREATE TABLE "HR"."NOTICE" 
(	"NOTICESEQ" NUMBER(8,0) NOT NULL ENABLE, 
	"MEMBERID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"NOTICE_TITLE" VARCHAR2(200 BYTE) NOT NULL ENABLE, 
	"NOTICE_CONTENT" VARCHAR2(400 BYTE) NOT NULL ENABLE, 
	"NOTICE_FILENAME" VARCHAR2(400 BYTE), 
	"NOTICE_NEWFILENAME" VARCHAR2(400 BYTE), 
	"READCOUNT" NUMBER(10,0) NOT NULL ENABLE, 
	"DOWNCOUNT" NUMBER(10,0) NOT NULL ENABLE, 
	"REGDATE" DATE NOT NULL ENABLE, 
	 CONSTRAINT "NOTICE_PK" PRIMARY KEY ("NOTICESEQ")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "NOTICE_FK1" FOREIGN KEY ("MEMBERID")
	  REFERENCES "HR"."MEMBERTALBE" ("MEMBERID") ENABLE
) SEGMENT CREATION IMMEDIATE 
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
TABLESPACE "USERS" ;*/



public class NoticeDto implements Serializable{

	private int noticeseq;					// 번호
	private String memberid;				// 작성자
	private String title;			// 제목
	private String content;			// 내용
	private String filename;			// 기존 업로드 파일이름
	private String newfilename;		// 년월일로 파일이름업로드
	private int readcount;					// 조회수
	private int downcount;					// 다운횟수
	private String regdate;					// 등록일
	private int notice_ref;
	private int del;
	
	public NoticeDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	



	public NoticeDto(int noticeseq, String memberid, String title, String content, String filename, String newfilename,
			int readcount, int downcount, String regdate, int notice_ref, int del) {
		super();
		this.noticeseq = noticeseq;
		this.memberid = memberid;
		this.title = title;
		this.content = content;
		this.filename = filename;
		this.newfilename = newfilename;
		this.readcount = readcount;
		this.downcount = downcount;
		this.regdate = regdate;
		this.notice_ref = notice_ref;
		this.del = del;
	}





	public int getNoticeseq() {
		return noticeseq;
	}

	public void setNoticeseq(int noticeseq) {
		this.noticeseq = noticeseq;
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

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getNewfilename() {
		return newfilename;
	}

	public void setNewfilename(String newfilename) {
		this.newfilename = newfilename;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public int getDowncount() {
		return downcount;
	}

	public void setDowncount(int downcount) {
		this.downcount = downcount;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	public int getNotice_ref() {
		return notice_ref;
	}


	public void setNotice_ref(int notice_ref) {
		this.notice_ref = notice_ref;
	}
	

	public int getDel() {
		return del;
	}



	public void setDel(int del) {
		this.del = del;
	}





	@Override
	public String toString() {
		return "NoticeDto [noticeseq=" + noticeseq + ", memberid=" + memberid + ", title=" + title + ", content="
				+ content + ", filename=" + filename + ", newfilename=" + newfilename + ", readcount=" + readcount
				+ ", downcount=" + downcount + ", regdate=" + regdate + ", notice_ref=" + notice_ref + ", del=" + del
				+ "]";
	}
	
	
}
