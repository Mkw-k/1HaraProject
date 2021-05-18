package bit.com.a.dto;

import java.io.Serializable;

public class PdsDto implements Serializable {
	
	private int pdsseq;
	private String memberid;
	private String title;
	private String content;
	private String filename;
	private String newfilename;
	private int readcount;
	private String downcount;
	private String regdate;
	
	
	
	public PdsDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public int getPdsseq() {
		return pdsseq;
	}



	public void setPdsseq(int pdsseq) {
		this.pdsseq = pdsseq;
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



	public String getDowncount() {
		return downcount;
	}



	public void setDowncount(String downcount) {
		this.downcount = downcount;
	}



	public String getRegdate() {
		return regdate;
	}



	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}



	@Override
	public String toString() {
		return "PdsDto [pdsseq=" + pdsseq + ", memberid=" + memberid + ", title=" + title + ", content=" + content
				+ ", filename=" + filename + ", newfilename=" + newfilename + ", readcount=" + readcount
				+ ", downcount=" + downcount + ", regdate=" + regdate + "]";
	}



	public PdsDto(String memberid, String title, String content, String filename) {
		super();
		this.memberid = memberid;
		this.title = title;
		this.content = content;
		this.filename = filename;
	}



	

	
}
