package bit.com.a.dao;

import java.util.List;
import java.util.Map;

import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.ApplyDto;
import bit.com.a.dto.Resume_ActivityVo;
import bit.com.a.dto.Resume_AwardVo;
import bit.com.a.dto.Resume_CareerVo;
import bit.com.a.dto.Resume_EduVo;
import bit.com.a.dto.Resume_LanguageVo;
import bit.com.a.dto.Resume_licenseVo;



public interface ResumeDao {
	

	
	boolean writeResume(ResumeDto dto);
	
	int getseq(String resumetitle);

	boolean writeEdu(Resume_EduVo eduvo);
	
	boolean writeCareer(Resume_CareerVo carvo);
	
	boolean writeLic(Resume_licenseVo licvo);
	
	boolean writeAct(Resume_ActivityVo actvo);
	
	boolean writeAward(Resume_AwardVo awdvo);
	
	boolean writeLan(Resume_LanguageVo lanvo);
	
	List<ResumeDto> getresume(String memberid);
	
	int getTotalPage();
	
	ResumeDto getResumeDetail(int seq);
	
	List<Resume_EduVo> getEduDetail(int seq);
	
	List<Resume_CareerVo> getCareerDetail(int seq);
	
	List<Resume_licenseVo> getLicDetail(int seq);
	
	List<Resume_ActivityVo> getActDetail(int seq);

	List<Resume_AwardVo> getAwdDetail(int seq);
	
	List<Resume_LanguageVo> getlanDetail(int seq);
	
	boolean deleteResume(int seq);
	
	boolean deleteEduResume(int seq);

	boolean deleteCareerResume(int seq);

	boolean deleteLicenseResume(int seq);

	boolean deleteActivityResume(int seq);

	boolean deleteAwardResume(int seq);

	boolean deleteLanResume(int seq);
	
	List<ResumeDto> getNoresume(String memberid);
	
	void upProgress(ResumeDto dto);
	
	boolean updateProgress(int resumeseq);
	
	void updateResume(ResumeDto dto);
	
	boolean updateEdu(Resume_EduVo eduvo);
	
	boolean updateCareer(Resume_CareerVo carvo);
	
	boolean updateLic(Resume_licenseVo licvo);

	boolean updateAct(Resume_ActivityVo actvo);
	
	boolean updateAward(Resume_AwardVo awdvo);
	
	boolean updateLan(Resume_LanguageVo lanvo);

	boolean addApply(ApplyDto param);
	
	List<ApplyDto> getApplyList(String memberid);
	
	String getJobtitle(int jobseq);
	
	String getResumeTitle(int resumeseq);
}
