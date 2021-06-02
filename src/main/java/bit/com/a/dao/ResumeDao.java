package bit.com.a.dao;

import java.util.Map;

import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityDto;
import bit.com.a.dto.Resume_AwardDto;
import bit.com.a.dto.Resume_CareerDto;
import bit.com.a.dto.Resume_EduDto;
import bit.com.a.dto.Resume_LanguageDto;
import bit.com.a.dto.Resume_LicenseDto;

public interface ResumeDao {
	

	
	boolean writeResume(Map<String, Object> param);

}
