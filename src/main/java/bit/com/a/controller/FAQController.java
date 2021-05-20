package bit.com.a.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.MemberDto;
import bit.com.a.service.FAQservice;

@Controller
public class FAQController {
	
	@Autowired
	FAQservice service;
	
	@RequestMapping(value = "FAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goFAQ() {	
	
		
		return "FAQ/FAQ";
	}
	
	@RequestMapping(value = "memberFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gomemberFAQ() {	
	
		
		return "FAQ/memberFAQ";
	}
	
	@RequestMapping(value = "companyFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gocompanyFAQ() {	
	
		
		return "FAQ/companyFAQ";
	}
	
	@RequestMapping(value = "commonFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gocommonFAQ() {	
	
		
		return "FAQ/commonFAQ";
	}
}
