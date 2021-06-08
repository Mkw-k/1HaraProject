package bit.com.a.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.BusinessDto;

import bit.com.a.service.BuspageService;

@Controller
public class BuspageController {

	
	@Autowired
	
	BuspageService service;
	
	
	/*마이페이지*/
	@RequestMapping(value = "buspage.do", method = RequestMethod.GET)
	public String buspage(){
	
	
	
	return "buspage";	
	
	}
	
	 /* 회원정보수정페이지*/
	
	@RequestMapping(value = "buspageUpdate.do", method = RequestMethod.GET)
	public String buspageUpdate(BusinessDto dto) throws Exception {
	
		return "buspageupdate";
	}
	
	
	@RequestMapping(value = "buspageUpdateAf.do", method = RequestMethod.GET)
	public String buspageUpdateAf(BusinessDto dto) throws Exception {
		
		service.updateBuspage(dto);
		
		System.out.println(dto.toString());
		
		return "buspage";
	}
	
	
}
