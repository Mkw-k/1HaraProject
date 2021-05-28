package bit.com.a.dao;

import java.util.List;
import java.util.Map;

import bit.com.a.dto.BbsParam;
import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;

public interface RecruitDao {

	boolean writeRecruit(Map<String, Object> param);
	
	List<RecruitDto> getallRecruitlist();
	
	int getRecruitCount(BbsParam param);
	
	List<RecruitDto> getRecruitPagingList(BbsParam param);
	
	RecruitDto getRecruitListOne(int jobseq);
	
	boolean deleteRecruit(int jobseq);
	
	List<RecruitParam> buscodeListData();
	
	List<RecruitParam> buscode2ListData(int buscode);
	
	List<RecruitParam> buscode3ListData(int buscode);

	List<RecruitDto> getCalendarList(RecruitDto rec);
	
	List<String> getBsnameForDetail(int jobseq);
	
}
