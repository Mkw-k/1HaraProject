package bit.com.a.dto;

import java.util.List;

public class Resume_LanguageVo {
	List<Resume_LanguageDto> list;

	public Resume_LanguageVo() {
		super();
	}

	public Resume_LanguageVo(List<Resume_LanguageDto> list) {
		super();
		this.list = list;
	}

	public List<Resume_LanguageDto> getList() {
		return list;
	}

	public void setList(List<Resume_LanguageDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_LanguageVo [list=" + list + "]";
	}
	
	
}
