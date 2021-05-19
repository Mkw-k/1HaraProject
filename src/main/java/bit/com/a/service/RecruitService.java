package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.RecruitDto;

public interface RecruitService {

	boolean writeRecruit(RecruitDto dto);
	
	List<RecruitDto> getallRecruitlist();
	
}
