package bit.com.a.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.service.ResumeService;

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
	
	@RequestMapping(value = "test.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gotest() {	
	
		return "resume/test";
	}
}
