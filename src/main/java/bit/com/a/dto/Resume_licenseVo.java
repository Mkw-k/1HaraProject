package bit.com.a.dto;

import java.util.List;

public class Resume_licenseVo {
	private int licseq;
	private int resumeseq;
	private String lic_type;
	private String lic_date;
	private String lic_name;
	private String lic_publisher;
	private String lic_pass;

	public Resume_licenseVo() {
		super();
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

	public Resume_licenseVo(int licseq, int resumeseq, String lic_type, String lic_date, String lic_name,
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

	@Override
	public String toString() {
		return "Resume_licenseVo [licseq=" + licseq + ", resumeseq=" + resumeseq + ", lic_type=" + lic_type
				+ ", lic_date=" + lic_date + ", lic_name=" + lic_name + ", lic_publisher=" + lic_publisher
				+ ", lic_pass=" + lic_pass + "]";
	}

	
	
	
}
