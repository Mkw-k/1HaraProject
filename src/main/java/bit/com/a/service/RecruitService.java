package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.BbsParam;
import bit.com.a.dto.RecruitDto;

public interface RecruitService {

	boolean writeRecruit(RecruitDto dto);
	
	List<RecruitDto> getallRecruitlist();
	
	int getRecruitCount(BbsParam param);
	
	List<RecruitDto> getRecruitPagingList(BbsParam param);
	
	RecruitDto getRecruitListOne(int jobseq);
	
	boolean deleteRecruit(int jobseq);
	
}
