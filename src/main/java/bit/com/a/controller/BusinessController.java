package bit.com.a.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.MemberDto;
import bit.com.a.service.BusinessService;

@Controller
public class BusinessController {

	@Autowired
	BusinessService service;
	
	
	@RequestMapping(value = "businessRegi.do", method=RequestMethod.GET)
	public String BusinessRegi() {
		return "login/businessRegi";
	}
	
	@ResponseBody
	@RequestMapping(value = "businessgetId.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String getId(BusinessDto bus) {	
		System.out.println("getId bus = " + bus.toString());
		int count = service.getId(bus);
		String msg = "";
		
		if(count == 0) {
			msg = "YES";
		}else {
			msg = "NO";
		}
		
		return msg;
	}
	
	@RequestMapping(value = "businessregiAf.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String regiAf(BusinessDto dto) {		

		System.out.println("addmember:" + dto.toString());

		
		 boolean b = service.addmember(dto); 
		 if(b) { System.out.println("회원 가입되었습니다 " + new Date()); 
		 return "home"; 
		 } 
		 System.out.println("가입되지 않았습니다 " + new Date());
		 return "login/businessRegi";
	}
	
	@RequestMapping(value = "businessloginAf.do", method = {RequestMethod.GET,RequestMethod.POST}) 
	public String loginAf(BusinessDto dto, HttpServletRequest req) {
	  
	  System.out.println("씨발 쫌 들어와라");
	 
	  BusinessDto login = service.login(dto); 
	  if(login != null && !login.getMemberid().equals("")) {
		  req.getSession().setAttribute("login", login); 
		  // req.getSession().setMaxInactiveInterval(60 * 60 * 24);
	  
		  return "redirect:/home.do"; 
	  
	  }else { 
		  return "redirect:/login.do"; 
	  	} 
	}
}
