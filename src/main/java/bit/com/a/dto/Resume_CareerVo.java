package bit.com.a.dto;

import java.util.List;

public class Resume_CareerVo {
	List<Resume_CareerDto> list;

	public Resume_CareerVo() {
		super();
	}

	public Resume_CareerVo(List<Resume_CareerDto> list) {
		super();
		this.list = list;
	}

	public List<Resume_CareerDto> getList() {
		return list;
	}

	public void setList(List<Resume_CareerDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_careerVo [list=" + list + "]";
	}
	
	
}
