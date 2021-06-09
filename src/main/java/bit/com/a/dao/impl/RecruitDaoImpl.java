package bit.com.a.dao.impl;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.RecruitDao;
import bit.com.a.dto.BbsParam;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;


@Repository
public class RecruitDaoImpl implements RecruitDao{

	@Autowired
	SqlSession session;

	String ns = "Recruit.";

	@Override
	public boolean writeRecruit(Map<String, Object> param) {
		return session.insert(ns+"writerecru", param) >0? true:false;
	}

	@Override
	public List<RecruitDto> getallRecruitlist() {
		return session.selectList(ns+"getallrecrulist");
	}

	/*
	 * @Override public int getRecruitCount(BbsParam param) { return
	 * session.selectOne(ns+"getRecruitCount", param); }
	 */
	@Override
	public List<RecruitDto> getRecruitPagingList(RecruitParam param) {
		return session.selectList(ns+"getRecruitPagingList", param);
	}

	@Override
	public RecruitDto getRecruitListOne(int jobseq) {
		return session.selectOne(ns+"getRecruitListOne", jobseq);
	}

	@Override
	public boolean deleteRecruit(int jobseq) {
		return session.update(ns+"deleteRecruit", jobseq)>0? true:false;
	}

	@Override
	public List<RecruitParam> buscodeListData() {
		return session.selectList(ns+"buscodeListData");
	}

	@Override
	public List<RecruitParam> buscode2ListData(int buscode) {
		return session.selectList(ns+"buscode2ListData", buscode);
	}

	@Override
	public List<RecruitParam> buscode3ListData(int buscode) {
		return session.selectList(ns+"buscode3ListData", buscode);
	}

	@Override
	public List<String> getBsnameForDetail(int jobseq) {
		return session.selectList(ns+"getBsnameForDetail", jobseq);
	}

	@Override
	public List<RecruitDto> getCalendarList(RecruitParam param) {
		return session.selectList(ns+"getCalendarList", param);
	}

	@Override
	public List<RecruitParam> areacodeListData() {
		return session.selectList(ns+"areacodeListData");
	}

	@Override
	public int getArea1code(String areaname) {
		return session.selectOne(ns+"getArea1Code", areaname);
	}

	@Override
	public List<RecruitParam> areacode2ListData(int areacode) {
		return session.selectList(ns+"areacode2ListData", areacode);
	}

	@Override
	public List<RecruitDto> getRecruitSearchList(Map<String, Object> map) {
		return session.selectList(ns+"getRecruitSearchList",map);
	}

	@Override
	public boolean updateRecruit(Map<String, Object> param) {
		return session.update(ns+"updateRecruit", param)>0? true:false;
	}

	@Override
	public boolean deleteBuscode(int jobSeq) {
		return session.delete(ns+"deleteBuscode", jobSeq)>0?true:false;
	}

	@Override
	public boolean insertBuscode(Map<String, Object> param) {
		return session.insert(ns+"insertBuscode", param)>0?true:false;
	}

	@Override
	public int getRecruitCount(Map<String, Object> param) {
		return session.selectOne(ns+"getRecruitCount", param);
	}

	@Override
	public boolean mgDetailUpdate(RecruitDto dto) {
		return session.update(ns+"mgDetailUpdate", dto)>0?true:false;
	}

	@Override
	public boolean mgDetailUpdate2(RecruitDto dto) {
		return session.update(ns+"mgDetailUpdate2", dto)>0?true:false;
	}

	@Override
	public boolean favoriteJob(RecruitParam param) {
		return session.insert(ns+"favoriteJob", param)>0?true:false;
	}

	@Override
	public int getJobFavorite(RecruitParam param) {
		return session.selectOne(ns+"getJobFavorite", param);
	}

	@Override
	public boolean dropFavoriteJob(RecruitParam param) {
		return session.delete(ns+"dropFavoriteJob", param)>0?true:false;
	}

	@Override
	public List<RecruitDto> getCalendarList_1() {
		return session.selectList(ns + "getCalendarList_1");
	}

	@Override
	public boolean favoriteCom(RecruitParam param) {
		return session.insert(ns+"favoriteCom", param)>0?true:false;
	}

	@Override
	public int getComFavorite(RecruitParam param) {
		return session.selectOne(ns+"getComFavorite", param);
	}

	@Override
	public boolean dropFavoriteCom(RecruitParam param) {
		return session.delete(ns+"dropFavoriteCom", param)>0?true:false;
	}

	@Override
	public boolean priMemberAf(BusinessDto dto) {
		return session.update(ns+"priMemberAf", dto)>0?true:false;
	}





}
