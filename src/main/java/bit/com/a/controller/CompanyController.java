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
	
	@RequestMapping(value = "companydetail.do",  method = {RequestMethod.GET, RequestMethod.POST})
	public String companydetail(Model model, String companyid) {
		
		
		CompanyDto dto = service.getCompany(companyid);
		model.addAttribute("company", dto);
		
		
		System.out.println(dto.toString());
		
		return "company/companydetail";
	}
	
	
	@RequestMapping(value = "companywrite.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String companywrite() {

		return "company/companywrite";
		
	}
	
	@RequestMapping(value = "companywriteAf.do",  method = {RequestMethod.GET, RequestMethod.POST})
	public String companywriteAf(Model model, CompanyDto dto) {
	
		
		
		model.addAttribute("company", dto);
		
	
		service.companywrite(dto);
		
		
		System.out.println("dto : "+dto.toString());
		
		System.out.println("아이디:" + dto.getMemberid() + "," + dto.getCompanyname());
		if(dto.getMemberid().equals("") || dto.getCompanyname().equals("")){
			/* return "company/companywrite"; */
			return "company/companywrite";
		}
		return "redirect:/recuruitlist.do";
	}
	
	@RequestMapping(value = "companyupdate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyupdate(Model model, String memberid) {
		//페이지 받아오기 
		CompanyDto dto = service.getCompany(memberid);
		System.out.println("아이디: "+dto.getMemberid());
		
		dto.setUpdatecompanylist("YES");
		model.addAttribute("company",dto);
		System.out.println("af투스트링" + dto.toString());
		
		return "company/companyupdate";
	}

		
	@RequestMapping(value = "companyupdateAf.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyupdateAf(Model model, CompanyDto dto) {
		System.out.println("업데이트 실행됨");
		//넘어온 데이터 확인 
		System.out.println("업데이트 데이타 : "+ dto.toString());
		//업데이트 진행
		boolean b = service.companyupdate(dto);
		
		if(b) {
			System.out.println("업데이트성공");
		}else {
			System.out.println("업데이트실패");
		}
		
	
		return "redirect:/recuruitlist.do";
	}
	
	
}

