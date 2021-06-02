package bit.com.a.dto;

import java.util.List;

public class Resume_ActivityVo {
	List<Resume_ActivityDto> list;

	public Resume_ActivityVo() {
		super();
	}

	public Resume_ActivityVo(List<Resume_ActivityDto> list) {
		super();
		this.list = list;
	}

	public List<Resume_ActivityDto> getList() {
		return list;
	}

	public void setList(List<Resume_ActivityDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_activityVo [list=" + list + "]";
	}
	
	
}
