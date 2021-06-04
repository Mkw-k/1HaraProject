package bit.com.a.dao;

import java.util.Map;

import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityVo;
import bit.com.a.dto.Resume_AwardVo;
import bit.com.a.dto.Resume_CareerVo;
import bit.com.a.dto.Resume_EduVo;
import bit.com.a.dto.Resume_licenseVo;



public interface ResumeDao {
	

	
	boolean writeResume(ResumeDto dto);
	
	int getseq(String resumetitle);

	boolean writeEdu(Resume_EduVo eduvo);
	
	boolean writeCareer(Resume_CareerVo carvo);
	
	boolean writeLic(Resume_licenseVo licvo);
	
	boolean writeAct(Resume_ActivityVo actvo);
	
	boolean writeAward(Resume_AwardVo awdvo);
}
