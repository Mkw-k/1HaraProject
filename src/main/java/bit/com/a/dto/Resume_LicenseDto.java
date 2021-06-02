package bit.com.a.dto;
/*
--13. 자격증테이블 
----RESUME 테이블 작성후 실행 
CREATE TABLE LICENSE(   
LICSEQ NUMBER PRIMARY KEY,	--SEQ
RESUMESEQ NUMBER,	--이력서SEQ
LIC_TYPE VARCHAR2(50),	--자격증종류
LIC_DATE VARCHAR2(50),	--자격증취득일
LIC_NAME VARCHAR2(50),	--자격증이름
LIC_PUBLISHER VARCHAR2(50),	--자격증발행기관
LIC_PASS VARCHAR2(10),	--합격여부
  

CONSTRAINT "LICENSE_FK1" FOREIGN KEY (RESUMESEQ)
REFERENCES RESUME (RESUMESEQ)
 );
 */

import java.io.Serializable;

public class Resume_LicenseDto implements Serializable {
	private int licseq;
	private int resumeseq;
	private String lic_type;
	private String lic_date;
	private String lic_name;
	private String lic_publisher;
	private String lic_pass;
	
	public Resume_LicenseDto() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Resume_LicenseDto(String lic_type, String lic_date, String lic_name, String lic_publisher, String lic_pass) {
		super();
		this.lic_type = lic_type;
		this.lic_date = lic_date;
		this.lic_name = lic_name;
		this.lic_publisher = lic_publisher;
		this.lic_pass = lic_pass;
	}



	public Resume_LicenseDto(int licseq, int resumeseq, String lic_type, String lic_date, String lic_name,
			String lic_publisher, String lic_pass) {
		super();
		this.licseq = licseq;
		this.resumeseq = resumeseq;
		this.lic_type = lic_type;
		this.lic_date = lic_date;
		this.lic_name = lic_name;
		this.lic_publisher = lic_publisher;
		this.lic_pass = lic_pass;
	}

	public int getLicseq() {
		return licseq;
	}

	public void setLicseq(int licseq) {
		this.licseq = licseq;
	}

	public int getResumeseq() {
		return resumeseq;
	}

	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}

	public String getLic_type() {
		return lic_type;
	}

	public void setLic_type(String lic_type) {
		this.lic_type = lic_type;
	}

	public String getLic_date() {
		return lic_date;
	}

	public void setLic_date(String lic_date) {
		this.lic_date = lic_date;
	}

	public String getLic_name() {
		return lic_name;
	}

	public void setLic_name(String lic_name) {
		this.lic_name = lic_name;
	}

	public String getLic_publisher() {
		return lic_publisher;
	}

	public void setLic_publisher(String lic_publisher) {
		this.lic_publisher = lic_publisher;
	}

	public String getLic_pass() {
		return lic_pass;
	}

	public void setLic_pass(String lic_pass) {
		this.lic_pass = lic_pass;
	}



	@Override
	public String toString() {
		return "Resume_LicenseDto [licseq=" + licseq + ", resumeseq=" + resumeseq + ", lic_type=" + lic_type
				+ ", lic_date=" + lic_date + ", lic_name=" + lic_name + ", lic_publisher=" + lic_publisher
				+ ", lic_pass=" + lic_pass + "]";
	}
	
	
	
}
