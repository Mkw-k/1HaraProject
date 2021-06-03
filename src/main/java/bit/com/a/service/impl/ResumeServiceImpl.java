package bit.com.a.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.ResumeDao;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityVo;
import bit.com.a.dto.Resume_CareerVo;
import bit.com.a.dto.Resume_EduVo;
import bit.com.a.dto.Resume_licenseVo;
import bit.com.a.service.ResumeService;

@Service
public class ResumeServiceImpl implements ResumeService {
	

	@Autowired
	ResumeDao dao;

	@Override
	public boolean writeResume(ResumeDto dto) {
		// TODO Auto-generated method stub
		return dao.writeResume(dto);
	}

	@Override
	public int getseq(String resumetitle) {
		// TODO Auto-generated method stub
		return dao.getseq(resumetitle);
	}

	@Override
	public boolean writeEdu(Resume_EduVo eduvo) {
		// TODO Auto-generated method stub
		return dao.writeEdu(eduvo);
	}

	@Override
	public boolean writeCareer(Resume_CareerVo carvo) {
		// TODO Auto-generated method stub
		return dao.writeCareer(carvo);
	}

	@Override
	public boolean writeLic(Resume_licenseVo licvo) {
		// TODO Auto-generated method stub
		return dao.writeLic(licvo);
	}

	@Override
	public boolean writeAct(Resume_ActivityVo actvo) {
		// TODO Auto-generated method stub
		return dao.writeAct(actvo);
	}

	
	
	
	
	
	

	
}
