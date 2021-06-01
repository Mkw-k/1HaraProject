package bit.com.a.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.CompanyDto;
import bit.com.a.service.CompanyService;

@Controller
public class CompanyController {

	@Autowired
	CompanyService service;
	
	@RequestMapping(value = "companydetail.do", method = RequestMethod.GET)
	public String companydetail(Model model, String companyid) {
		
		
		CompanyDto dto = service.getCompany(companyid);
		model.addAttribute("company", dto);
		
		
		System.out.println(dto.toString());
		
		return "company/companydetail";
	}
	
}

