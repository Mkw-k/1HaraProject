package bit.com.a.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityDto;
import bit.com.a.dto.Resume_AwardDto;
import bit.com.a.dto.Resume_CareerDto;
import bit.com.a.dto.Resume_EduDto;
import bit.com.a.dto.Resume_LanguageDto;
import bit.com.a.dto.Resume_LicenseDto;


@Controller
public class ResumeController {
	
	/*
	 * @Autowired ResumeService service;
	 */

	@RequestMapping(value = "resumeMain.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goResumeMain() {	
	
		return "resume/resumeMain";
	}
	
	@RequestMapping(value = "writeResume.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeResume() {	
	
		return "resume/writeResume";
	}
	
	@RequestMapping(value = "writeAfResume.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeAfResume(ResumeDto dto, Resume_EduDto edudto, Resume_CareerDto careerdto, Resume_LicenseDto licdto, Resume_ActivityDto actdto,
								Resume_AwardDto awarddto, Resume_LanguageDto landto, Model model) {	
		
		System.out.println("777777777777777777777 start");
		System.out.println("컨트롤  넘어온 주소 =" + edudto.getHighschool());
		System.out.println("777777777777777777777 end");
		return "resume/resumeMain";
	}
	
	
}
