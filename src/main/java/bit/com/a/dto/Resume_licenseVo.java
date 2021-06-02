package bit.com.a.dto;

import java.util.List;

public class Resume_licenseVo {
	List<Resume_LicenseDto> list;

	public Resume_licenseVo() {
		super();
	}

	public Resume_licenseVo(List<Resume_LicenseDto> list) {
		super();
		this.list = list;
	}

	public List<Resume_LicenseDto> getList() {
		return list;
	}

	public void setList(List<Resume_LicenseDto> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Resume_licenseVo [list=" + list + "]";
	}
	
	
}
