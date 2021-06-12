package bit.com.a.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.ResumeDao;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.ApplyDto;
import bit.com.a.dto.Resume_ActivityVo;
import bit.com.a.dto.Resume_AwardVo;
import bit.com.a.dto.Resume_CareerVo;
import bit.com.a.dto.Resume_HighschoolDto;
import bit.com.a.dto.Resume_LanguageVo;
import bit.com.a.dto.Resume_UniversityVo;
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

	/*
	 * @Override public boolean writeEdu(Resume_EduVo eduvo) { // TODO
	 * Auto-generated method stub return dao.writeEdu(eduvo); }
	 */

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
	public List<ResumeDto> getresume(String memberid) {
		// TODO Auto-generated method stub
		return dao.getresume(memberid);
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

	/*
	 * @Override public List<Resume_EduVo> getEduDetail(int seq) { // TODO
	 * Auto-generated method stub return dao.getEduDetail(seq); }
	 */

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

	@Override
	public boolean deleteResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteResume(seq);
	}

	@Override
	public boolean deleteEduResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteEduResume(seq);
	}

	@Override
	public boolean deleteCareerResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteCareerResume(seq);
	}

	@Override
	public boolean deleteLicenseResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteLicenseResume(seq);
	}

	@Override
	public boolean deleteActivityResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteLicenseResume(seq);
	}

	@Override
	public boolean deleteAwardResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteLicenseResume(seq);
	}

	@Override
	public boolean deleteLanResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteLanResume(seq);
	}

	@Override
	public List<ResumeDto> getNoresume(String memberid) {
		// TODO Auto-generated method stub
		return dao.getNoresume(memberid);
	}

	@Override
	public void upProgress(ResumeDto dto) {
		// TODO Auto-generated method stub
		dao.upProgress(dto);
	}

	@Override
	public boolean updateProgress(int resumeseq) {
		// TODO Auto-generated method stub
		return dao.updateProgress(resumeseq);
	}

	@Override
	public void updateResume(ResumeDto dto) {
		// TODO Auto-generated method stub
		 dao.updateResume(dto);
	}

	/*
	 * @Override public boolean updateEdu(Resume_EduVo eduvo) { // TODO
	 * Auto-generated method stub return dao.updateEdu(eduvo); }
	 */

	@Override
	public boolean updateCareer(Resume_CareerVo carvo) {
		// TODO Auto-generated method stub
		return dao.updateCareer(carvo);
	}

	@Override
	public boolean updateLic(Resume_licenseVo licvo) {
		// TODO Auto-generated method stub
		return dao.updateLic(licvo);
	}

	@Override
	public boolean updateAct(Resume_ActivityVo actvo) {
		// TODO Auto-generated method stub
		return dao.updateAct(actvo);
	}

	@Override
	public boolean updateAward(Resume_AwardVo awdvo) {
		// TODO Auto-generated method stub
		return dao.updateAward(awdvo);
	}

	@Override
	public boolean updateLan(Resume_LanguageVo lanvo) {
		// TODO Auto-generated method stub
		return dao.updateLan(lanvo);
	}

	@Override
	public boolean addApply(ApplyDto param) {
		// TODO Auto-generated method stub
		return dao.addApply(param);
	}

	@Override
	public List<ApplyDto> getApplyList(String memberid) {
		// TODO Auto-generated method stub
		return dao.getApplyList(memberid);
	}

	@Override
	public String getJobtitle(int jobseq) {
		// TODO Auto-generated method stub
		return dao.getJobtitle(jobseq);
	}

	@Override
	public String getResumeTitle(int resumeseq) {
		// TODO Auto-generated method stub
		return dao.getResumeTitle(resumeseq);
	}

	@Override
	public boolean writeHigh(Resume_HighschoolDto highdto) {
		// TODO Auto-generated method stub
		return dao.writeHigh(highdto);
	}

	@Override
	public boolean writeUni(Resume_UniversityVo univo) {
		// TODO Auto-generated method stub
		return dao.writeUni(univo);
	}

	@Override
	public boolean updateHigh(Resume_HighschoolDto highdto) {
		// TODO Auto-generated method stub
		return dao.updateHigh(highdto);
	}

	@Override
	public boolean updateUni(Resume_UniversityVo univo) {
		// TODO Auto-generated method stub
		return dao.updateUni(univo);
	}

	@Override
	public Resume_HighschoolDto getHighDetail(int seq) {
		// TODO Auto-generated method stub
		return dao.getHighDetail(seq);
	}

	@Override
	public List<Resume_UniversityVo> getUniDetail(int seq) {
		// TODO Auto-generated method stub
		return dao.getUniDetail(seq);
	}

	@Override
	public boolean deleteApply(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteApply(seq);
	}

	@Override
	public boolean deleteHighResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteHighResume(seq);
	}

	@Override
	public boolean deleteUniResume(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteUniResume(seq);
	}

	@Override
	public boolean cancelApply(int seq) {
		// TODO Auto-generated method stub
		return dao.cancelApply(seq);
	}
	
	
	
	
	
	
	
}
