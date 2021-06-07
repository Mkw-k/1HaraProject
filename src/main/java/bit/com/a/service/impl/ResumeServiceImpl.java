package bit.com.a.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.ResumeDao;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityVo;
import bit.com.a.dto.Resume_AwardVo;
import bit.com.a.dto.Resume_CareerVo;
import bit.com.a.dto.Resume_EduVo;
import bit.com.a.dto.Resume_LanguageVo;
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

	@Override
	public boolean writeAward(Resume_AwardVo awdvo) {
		// TODO Auto-generated method stub
		return dao.writeAward(awdvo);
	}

	@Override
	public boolean writeLan(Resume_LanguageVo lanvo) {
		// TODO Auto-generated method stub
		return dao.writeLan(lanvo);
	}

	@Override
	public List<ResumeDto> getresume() {
		// TODO Auto-generated method stub
		return dao.getresume();
	}

	@Override
	public int getTotalPage() {
		// TODO Auto-generated method stub
		return dao.getTotalPage();
	}

	@Override
	public ResumeDto getResumeDetail(int seq) {
		// TODO Auto-generated method stub
		return  dao.getResumeDetail(seq);
	}

	@Override
	public List<Resume_EduVo> getEduDetail(int seq) {
		// TODO Auto-generated method stub
		return dao.getEduDetail(seq);
	}

	@Override
	public List<Resume_CareerVo> getCareerDetail(int seq) {
		// TODO Auto-generated method stub
		return dao.getCareerDetail(seq);
	}

	@Override
	public List<Resume_licenseVo> getLicDetail(int seq) {
		// TODO Auto-generated method stub
		return dao.getLicDetail(seq);
	}

	@Override
	public List<Resume_ActivityVo> getActDetail(int seq) {
		// TODO Auto-generated method stub
		return dao.getActDetail(seq);
	}

	@Override
	public List<Resume_AwardVo> getAwdDetail(int seq) {
		// TODO Auto-generated method stub
		return dao.getAwdDetail(seq);
	}

	@Override
	public List<Resume_LanguageVo> getlanDetail(int seq) {
		// TODO Auto-generated method stub
		return dao.getlanDetail(seq);
	}
	
	
	
	
	
	
	
	

	
}
