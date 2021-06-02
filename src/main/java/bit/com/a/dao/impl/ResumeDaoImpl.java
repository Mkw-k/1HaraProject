package bit.com.a.dao.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import bit.com.a.dao.ResumeDao;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityDto;
import bit.com.a.dto.Resume_AwardDto;
import bit.com.a.dto.Resume_CareerDto;
import bit.com.a.dto.Resume_EduDto;
import bit.com.a.dto.Resume_LanguageDto;
import bit.com.a.dto.Resume_LicenseDto;

@Repository
public class ResumeDaoImpl implements ResumeDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "Resume.";


	@Override
	public boolean writeResume(Map<String, Object> param) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeResume", param);
		
        return i>0?true:false;	
	}
	
	

	
}
