package bit.com.a.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import bit.com.a.dao.ResumeDao;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityVo;
import bit.com.a.dto.Resume_AwardVo;
import bit.com.a.dto.Resume_CareerVo;
import bit.com.a.dto.Resume_EduVo;
import bit.com.a.dto.Resume_LanguageVo;
import bit.com.a.dto.Resume_licenseVo;


@Repository
public class ResumeDaoImpl implements ResumeDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "Resume.";



	@Override
	public boolean writeResume(ResumeDto dao) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeResume", dao);
		
        return i>0?true:false;	
	}



	@Override
	public int getseq(String resumetitle) {
		// TODO Auto-generated method stub
		return session.selectOne(ns + "getseq", resumetitle);
	}



	@Override
	public boolean writeEdu(Resume_EduVo eduvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeEdu", eduvo);
		
        return i>0?true:false;	
	}
	
	

	@Override
	public boolean writeCareer(Resume_CareerVo carvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeCareer", carvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean writeLic(Resume_licenseVo licvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeLic", licvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean writeAct(Resume_ActivityVo actvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeAct", actvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean writeAward(Resume_AwardVo awdvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeAward", awdvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean writeLan(Resume_LanguageVo lanvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeLan", lanvo);
		
        return i>0?true:false;	
	}



	@Override
	public List<ResumeDto> getresume() {
		// TODO Auto-generated method stub
		return session.selectList(ns + "getresume");	
	}



	@Override
	public int getTotalPage() {
		// TODO Auto-generated method stub
		return session.selectOne(ns+"getTotalPage");
	}



	@Override
	public ResumeDto getResumeDetail(int seq) {
		// TODO Auto-generated method stub
		return session.selectOne(ns+"getResumeDetail", seq);
	}



	@Override
	public List<Resume_EduVo> getEduDetail(int seq) {
		// TODO Auto-generated method stub
		return session.selectList(ns+"getEduDetail", seq);
	}



	@Override
	public List<Resume_CareerVo> getCareerDetail(int seq) {
		// TODO Auto-generated method stub
		return session.selectList(ns+"getCareerDetail", seq);
	}



	@Override
	public List<Resume_licenseVo> getLicDetail(int seq) {
		// TODO Auto-generated method stub
		return session.selectList(ns+"getLicDetail", seq);
	}



	@Override
	public List<Resume_ActivityVo> getActDetail(int seq) {
		// TODO Auto-generated method stub
		return session.selectList(ns+"getActDetail", seq);
	}



	@Override
	public List<Resume_AwardVo> getAwdDetail(int seq) {
		// TODO Auto-generated method stub
		return session.selectList(ns+"getAwdDetail", seq);
	}



	@Override
	public List<Resume_LanguageVo> getlanDetail(int seq) {
		// TODO Auto-generated method stub
		return session.selectList(ns+"getlanDetail", seq);
	}
	
	
	
	
	
	
	
}
