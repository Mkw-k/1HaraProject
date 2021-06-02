package bit.com.a.dto;

import java.util.List;

public class Resume_EduVo {
	List<Resume_EduDto> list;

	public Resume_EduVo() {
		super();
	}

	public Resume_EduVo(List<Resume_EduDto> list) {
		super();
		this.list = list;
	}

	public List<Resume_EduDto> getList() {
		return list;
	}

	public void setList(List<Resume_EduDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_EduVo [list=" + list + "]";
	}
	
	
	
}
