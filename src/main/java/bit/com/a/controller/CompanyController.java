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
	public String companydetail(Model model, CompanyDto dto, String companyid) {
		
		
		dto = service.getCompany(companyid);
		
		
		
		System.out.println("나는 디떼일~");
		
		return "company/companydetail";
	}
	
}

