package bit.com.a.service;

import java.util.List;
import java.util.Map;

import bit.com.a.dto.BbsParam;
import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;

public interface RecruitService {

	boolean writeRecruit(Map<String, Object> param);
	
	List<RecruitDto> getallRecruitlist();
	
	int getRecruitCount(BbsParam param);
	
	List<RecruitDto> getRecruitPagingList(RecruitParam param);
	
	RecruitDto getRecruitListOne(int jobseq);
	
	boolean deleteRecruit(int jobseq);
	
	List<RecruitParam> buscodeListData();
	
	List<RecruitParam> buscode2ListData(int buscode);

	List<RecruitParam> buscode3ListData(int buscode);

	List<RecruitDto> getCalendarList(RecruitDto rec);
	
	List<String> getBsnameForDetail(int jobseq);

	List<RecruitParam> areacodeListData();

	int getArea1Code(String areaname);

	List<RecruitParam> areacode2ListData(int areacode);

	List<RecruitDto> getRecruitSearchList(Map<String, Object> map);

	boolean updateRecruit(Map<String, Object> param);

	boolean deleteBuscode(int jobSeq);

	boolean insertBuscode(Map<String, Object> param);
	
}
