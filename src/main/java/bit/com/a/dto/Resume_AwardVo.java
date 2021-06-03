package bit.com.a.dto;

import java.util.List;

public class Resume_AwardVo {
	List<Resume_AwardDto> list;

	public Resume_AwardVo() {
		super();
	}

	public Resume_AwardVo(List<Resume_AwardDto> list) {
		super();
		this.list = list;
	}

	public List<Resume_AwardDto> getList() {
		return list;
	}

	public void setList(List<Resume_AwardDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_AwardVo [list=" + list + "]";
	}
	
	
}
