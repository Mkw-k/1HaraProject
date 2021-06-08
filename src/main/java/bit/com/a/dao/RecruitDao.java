package bit.com.a.dao;

import java.util.List;
import java.util.Map;

import bit.com.a.dto.BbsParam;
import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;

public interface RecruitDao {

	boolean writeRecruit(Map<String, Object> param);

	List<RecruitDto> getallRecruitlist();

	//int getRecruitCount(BbsParam param);

	List<RecruitDto> getRecruitPagingList(RecruitParam param);

	RecruitDto getRecruitListOne(int jobseq);

	boolean deleteRecruit(int jobseq);

	List<RecruitParam> buscodeListData();

	List<RecruitParam> buscode2ListData(int buscode);

	List<RecruitParam> buscode3ListData(int buscode);

	List<RecruitDto> getCalendarList(RecruitParam param);

	List<String> getBsnameForDetail(int jobseq);

	List<RecruitParam> areacodeListData();

	int getArea1code(String areaname);

	List<RecruitParam> areacode2ListData(int areacode);

	List<RecruitDto> getRecruitSearchList(Map<String, Object> map);

	boolean updateRecruit(Map<String, Object> param);

	boolean deleteBuscode(int jobSeq);

	boolean insertBuscode(Map<String, Object> param);

	int getRecruitCount(Map<String, Object> param);

	boolean mgDetailUpdate(RecruitDto dto);

	boolean mgDetailUpdate2(RecruitDto dto);

	boolean favoriteJob(RecruitParam param);

	int getJobFavorite(RecruitParam param);

	boolean dropFavoriteJob(RecruitParam param);

	List<RecruitDto> getCalendarList_1();

}
