package bit.com.a.dto;

public class Resume_HighschoolDto {
	private int highschoolseq;
	private int resumeseq;
	private String highschool;
	private String high_str;
	private String high_str_status;
	private String high_end;
	private String high_end_status;
	
	
	public Resume_HighschoolDto() {
		super();
	}
	
	
	public Resume_HighschoolDto(int highschoolseq, int resumeseq, String highschool, String high_str,
			String high_str_status, String high_end, String high_end_status) {
		super();
		this.highschoolseq = highschoolseq;
		this.resumeseq = resumeseq;
		this.highschool = highschool;
		this.high_str = high_str;
		this.high_str_status = high_str_status;
		this.high_end = high_end;
		this.high_end_status = high_end_status;
	}


	public int getHighschoolseq() {
		return highschoolseq;
	}
	public void setHighschoolseq(int highschoolseq) {
		this.highschoolseq = highschoolseq;
	}
	public int getResumeseq() {
		return resumeseq;
	}
	public void setResumeseq(int resumeseq) {
		this.resumeseq = resumeseq;
	}
	public String getHighschool() {
		return highschool;
	}
	public void setHighschool(String highschool) {
		this.highschool = highschool;
	}
	public String getHigh_str() {
		return high_str;
	}
	public void setHigh_str(String high_str) {
		this.high_str = high_str;
	}
	public String getHigh_str_status() {
		return high_str_status;
	}
	public void setHigh_str_status(String high_str_status) {
		this.high_str_status = high_str_status;
	}
	public String getHigh_end() {
		return high_end;
	}
	public void setHigh_end(String high_end) {
		this.high_end = high_end;
	}
	public String getHigh_end_status() {
		return high_end_status;
	}
	public void setHigh_end_status(String high_end_status) {
		this.high_end_status = high_end_status;
	}


	@Override
	public String toString() {
		return "Resume_HighschoolDto [highschoolseq=" + highschoolseq + ", resumeseq=" + resumeseq + ", highschool="
				+ highschool + ", high_str=" + high_str + ", high_str_status=" + high_str_status + ", high_end="
				+ high_end + ", high_end_status=" + high_end_status + "]";
	}
	
	
}
