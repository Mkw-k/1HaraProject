package bit.com.a.dao.impl;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.RecruitDao;
import bit.com.a.dto.BbsParam;
import bit.com.a.dto.RecruitDto;


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

	@Override
	public int getRecruitCount(BbsParam param) {
		return session.selectOne(ns+"getRecruitCount", param);
	}

	@Override
	public List<RecruitDto> getRecruitPagingList(BbsParam param) {
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
	
	
}
