package bit.com.a.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.ResumeDao;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityDto;
import bit.com.a.dto.Resume_AwardDto;
import bit.com.a.dto.Resume_CareerDto;
import bit.com.a.dto.Resume_EduDto;
import bit.com.a.dto.Resume_LanguageDto;
import bit.com.a.dto.Resume_LicenseDto;
import bit.com.a.service.ResumeService;

@Service
public class ResumeServiceImpl implements ResumeService {
	

	@Autowired
	ResumeDao dao;

	@Override
	public boolean writeResume(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return dao.writeResume(param);
	}
	
	
	
	

	
}
