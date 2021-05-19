package bit.com.a.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping(value = "recuruitlistdata.do", method = RequestMethod.GET)
	public List<RecruitDto> recuruitlistdata(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		List<RecruitDto> list = service.getallRecruitlist();
		
		System.out.println(list.toString());
		
		return list;
	}
	
	@RequestMapping(value = "recuruitcreate.do", method = RequestMethod.GET)
	public String recuruitcreate(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		return "recruit/recuruitcreate";
	}
	
	@RequestMapping(value = "recuruitcreateAf.do", method = RequestMethod.POST)
	public String recuruitcreateAf(RecruitDto dto, Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		//System.out.println(dto.toString());
		
	
		  String start = dto.getJobStart(); String end = dto.getJobEnd();
		  
		  start = start.replace("T", " "); end = end.replace("T", " ");
		  
		 
		  dto.setJobStart(start); dto.setJobEnd(end);
		 
		
		System.out.println("시작일 :"+dto.getJobStart());
		System.out.println("종료일 :"+dto.getJobEnd());
		
		boolean b = service.writeRecruit(dto);
		
		if(b) {
			System.out.println("공고등록성공");
		}else {
			System.out.println("공고등록실패");
		}
		
		return "redirect:/recuruitlist.do";
	}
	
}
