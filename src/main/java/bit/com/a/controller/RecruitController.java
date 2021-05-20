package bit.com.a.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.RecruitDto;
import bit.com.a.service.RecruitService;

@Controller
public class RecruitController {

	@Autowired
	RecruitService service;
	
	@RequestMapping(value = "recuruitlist.do", method = RequestMethod.GET)
	public String recuruitlist(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		return "recruit/recruitlist";
	}
	
	@RequestMapping(value = "recuruitcreate.do", method = RequestMethod.GET)
	public String recuruitcreate(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		return "recruit/recuruitcreate";
	}
	
	@RequestMapping(value = "recuruitcreateAf.do", method = RequestMethod.GET)
	public String recuruitcreateAf(RecruitDto dto, Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		String start = dto.getJobStart();
		String end = dto.getJobEnd();
		
		start.replace("T", "");
		end.replace("T", "");
		
		System.out.println("시작일 :"+dto.getJobStart());
		System.out.println("종료일 :"+dto.getJobEnd());
		
		dto.setJobStart(start);
		dto.setJobEnd(end);
		
		boolean b = service.writeRecruit(dto);
		
		if(b) {
			System.out.println("공고등록성공");
		}else {
			System.out.println("공고등록실패");
		}
		
		return "redirect:/recuruitlist.do";
	}
	
}
