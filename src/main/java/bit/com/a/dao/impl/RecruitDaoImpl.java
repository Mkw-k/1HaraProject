package bit.com.a.dao.impl;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.RecruitDao;
import bit.com.a.dto.RecruitDto;


@Repository
public class RecruitDaoImpl implements RecruitDao{

	@Autowired
	SqlSession session;
	
	String ns = "Recruit.";

	@Override
	public boolean writeRecruit(RecruitDto dto) {
		return session.insert(ns+"writerecru", dto) >0? true:false;
	}
	
	
}
