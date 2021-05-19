package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.RecruitDto;

public interface RecruitDao {

	boolean writeRecruit(RecruitDto dto);
	
	List<RecruitDto> getallRecruitlist();
	
}
