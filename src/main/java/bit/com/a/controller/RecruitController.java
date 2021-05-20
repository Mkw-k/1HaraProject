package bit.com.a.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
//채용공고 리스트로 이동
	@RequestMapping(value = "recuruitlist.do", method = RequestMethod.GET)
	public String recuruitlist(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		return "recruit/recruitlist";
	}

//AJAX로 데이터 가져가기 
	@ResponseBody
	@RequestMapping(value = "recuruitlistdata.do", method = RequestMethod.GET)
	public List<RecruitDto> recuruitlistdata(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		List<RecruitDto> list = service.getallRecruitlist();
		
		System.out.println(list.toString());
		
		return list;
	}

//채용공고 작성창으로 이동 
	@RequestMapping(value = "recuruitcreate.do", method = RequestMethod.GET)
	public String recuruitcreate(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		return "recruit/recuruitcreate";
	}

//채용공고 작성 After(DB에 입력)
	@RequestMapping(value = "recuruitcreateAf.do", method = RequestMethod.POST)
	public String recuruitcreateAf(RecruitDto dto, Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		  System.out.println("디티오 데이터 :" +dto.toString());
		
	
		  String start = dto.getJobStart(); 
		  String end = dto.getJobEnd();
		  
		  start = start.replace("T", " "); 
		  end = end.replace("T", " ");
		  
		 
		  dto.setJobStart(start);
		  dto.setJobEnd(end);
		 
		  System.out.println("변경된 데이터 :"+dto.toString());
		
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

//채용공고 디테일 창으로 이동 
	@RequestMapping(value = "recruitdetail.do", method = RequestMethod.GET)
	public String recuruitdetail(RecruitDto dto, String seq) {	
		
		
		System.out.println("seq : "+seq);
		
		return "recruit/recruitDetail";
	}
	
}
