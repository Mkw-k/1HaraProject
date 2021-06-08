package bit.com.a.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import bit.com.a.dao.ResumeDao;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.ApplyDto;
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
	public List<ResumeDto> getresume(String memberid) {
		// TODO Auto-generated method stub
		return session.selectList(ns + "getresume", memberid);	
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



	@Override
	public boolean deleteResume(int seq) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "deleteResume", seq);
		
        return i>0?true:false;	
	}



	@Override
	public boolean deleteEduResume(int seq) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "deleteEduResume", seq);
		
        return i>0?true:false;	
	}



	@Override
	public boolean deleteCareerResume(int seq) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "deleteCareerResume", seq);
		
        return i>0?true:false;	
	}



	@Override
	public boolean deleteLicenseResume(int seq) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "deleteLicenseResume", seq);
		
        return i>0?true:false;	
	}



	@Override
	public boolean deleteActivityResume(int seq) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "deleteResume", seq);
		
        return i>0?true:false;	
	}



	@Override
	public boolean deleteAwardResume(int seq) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "deleteAwardResume", seq);
		
        return i>0?true:false;	
	}



	@Override
	public boolean deleteLanResume(int seq) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "deleteLanResume", seq);
		
        return i>0?true:false;	
	}



	@Override
	public List<ResumeDto> getNoresume(String memberid) {
		// TODO Auto-generated method stub
		return session.selectList(ns+"getNoresume", memberid);
	}



	@Override
	public void upProgress(ResumeDto dto) {
		// TODO Auto-generated method stub
		session.update(ns + "upProgress", dto);
	}



	@Override
	public boolean updateProgress(int resumeseq) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "updateProgress", resumeseq);
		
        return i>0?true:false;	
	}



	@Override
	public void updateResume(ResumeDto dto) {
		// TODO Auto-generated method stub
		session.update(ns + "updateResume", dto);
	}



	@Override
	public boolean updateEdu(Resume_EduVo eduvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "updateEdu", eduvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean updateCareer(Resume_CareerVo carvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "updateCareer", carvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean updateLic(Resume_licenseVo licvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "updateLic", licvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean updateAct(Resume_ActivityVo actvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "updateAct", actvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean updateAward(Resume_AwardVo awdvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "updateAward", awdvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean updateLan(Resume_LanguageVo lanvo) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "updateLan", lanvo);
		
        return i>0?true:false;	
	}



	@Override
	public boolean addApply(ApplyDto param) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "addApply", param);
		
        return i>0?true:false;
	}



	@Override
	public List<ApplyDto> getApplyList(String memberid) {
		// TODO Auto-generated method stub
		return session.selectList(ns+"getApplyList", memberid);
	}



	@Override
	public String getJobtitle(int jobseq) {
		// TODO Auto-generated method stub
		return session.selectOne(ns+"getJobtitle", jobseq);
	}



	@Override
	public String getResumeTitle(int resumeseq) {
		// TODO Auto-generated method stub
		return session.selectOne(ns+"getResumeTitle", resumeseq);
	}
	
	
	
	
	
	
}
