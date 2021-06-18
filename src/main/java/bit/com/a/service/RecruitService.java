package bit.com.a.service;

import java.util.List;
import java.util.Map;

import bit.com.a.dto.BbsParam;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.CompanyDto;
import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;

public interface RecruitService {

   boolean writeRecruit(Map<String, Object> param);

   List<RecruitDto> getallRecruitlist();

   //int getRecruitCount(BbsParam param);

   List<RecruitDto> getRecruitPagingList(RecruitParam param);

   RecruitDto getRecruitListOne(int string);

   boolean deleteRecruit(int jobseq);

   List<RecruitParam> buscodeListData();

   List<RecruitParam> buscode2ListData(int buscode);

   List<RecruitParam> buscode3ListData(int buscode);

   List<RecruitDto> getCalendarList(RecruitParam param);

   List<String> getBsnameForDetail(int jobSeq);

   List<RecruitParam> areacodeListData();

   int getArea1Code(String areaname);

   List<RecruitParam> areacode2ListData(int areacode);

   List<RecruitDto> getRecruitSearchList(Map<String, Object> map);

   boolean updateRecruit(Map<String, Object> param);

   boolean deleteBuscode(int jobSeq);

   boolean insertBuscode(Map<String, Object> param);

	int getRecruitCount(Map<String, Object> map);

	boolean mgDetailUpdate(RecruitDto dto);

	boolean mgDetailUpdate2(RecruitDto dto);

	boolean favoriteJob(RecruitParam param);

	int getJobFavorite(RecruitParam param);

	boolean dropFavoriteJob(RecruitParam param);

	List<RecruitDto> getCalendarList_1();

	boolean favoriteCom(RecruitParam param);

	int getComFavorite(RecruitParam param);

	boolean dropFavoriteCom(RecruitParam param);

	boolean priMemberAf(BusinessDto dto);

	List<RecruitDto> getCalendarSearchList(Map<String, Object> map);

	List<RecruitDto> getTop10List();

	boolean favoriteJob2(RecruitParam param);

	boolean dropFavoriteJob2(RecruitParam param);

	CompanyDto getCompany(int jobseq);

	String getPhonenum(String memberid);

	List<RecruitDto> getNew6PreJob();

	List<RecruitDto> getHot10Comname();







}
