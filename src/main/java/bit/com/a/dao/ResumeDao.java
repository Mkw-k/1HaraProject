package bit.com.a.dao;

import java.util.List;
import java.util.Map;

import bit.com.a.dto.ResumeDto;
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
	
	List<ResumeDto> getresume();
	
	int getTotalPage();
	
	ResumeDto getResumeDetail(int seq);
	
	List<Resume_EduVo> getEduDetail(int seq);
	
	List<Resume_CareerVo> getCareerDetail(int seq);
	
	List<Resume_licenseVo> getLicDetail(int seq);
	
	List<Resume_ActivityVo> getActDetail(int seq);

	List<Resume_AwardVo> getAwdDetail(int seq);
	
	List<Resume_LanguageVo> getlanDetail(int seq);
}
