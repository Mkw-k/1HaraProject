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

import bit.com.a.dto.BbsDto;
import bit.com.a.dto.BbsParam;
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

	
	@RequestMapping(value = "createTest.do", method = RequestMethod.GET)
	public String createTest(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		return "recruit/createTest";
	}	
		
	//Ajax로 모든 데이터 다 불러오기 
	//초기 개발용 현재 사용안함 

	@ResponseBody
	@RequestMapping(value = "recuruitlistdata.do", method = RequestMethod.GET)
	public List<RecruitDto> recuruitlistdata(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		List<RecruitDto> list = service.getallRecruitlist();
		
		//System.out.println(list.toString());
		
		return list;
	}
	
	
	//Ajax로 페이징 리스트 불러오기(검색, 페이지 추가)
	//parameter Dto는 동일해서 BbsParam가져다 썻음 
	@ResponseBody
	@RequestMapping(value = "recruitPagingListData.do", method = RequestMethod.GET)
	public List<RecruitDto> recruitPagingListData(BbsParam param) {	
		
		System.out.println("param tostring :" + param.toString());
		
		int i = 5;
		
		
		
		param.getBusc1();
		param.getBusc2();
		
		//paging 처리 
		int sn = param.getPage(); 
		int start = sn * 5 + 1; 	//1  11
		int end = (sn + 1) * 5; 	//10 20 
		
		System.out.println("start ="+start);
		System.out.println("end ="+end);
		param.setStart(start);
		param.setEnd(end);
//		List<BbsDto> list = service.getBbsList(param);
		
//		model.addAttribute("bbslist", list);
		
		List<RecruitDto> list = service.getRecruitPagingList(param);
		
		System.out.println(list.toString());
		
		return list;
	}




	//Ajax로 리스트의 총수 불러오기
	//parameter Dto는 동일해서 BbsParam가져다 썻음 
	@ResponseBody
	@RequestMapping(value = "recruitlistCount.do", method = RequestMethod.GET)
	public int recruitListCount(Model model, BbsParam param) {		
		model.addAttribute("doc_title", "채용공고");
		
		int count = service.getRecruitCount(param);
		
		return count;
	}	
	

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
	
	@RequestMapping(value = "RecruitDetail.do", method = RequestMethod.GET)
	public String RecruitDetail(int jobseq, Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		System.out.println("seq:"+jobseq);
		
		RecruitDto dto = service.getRecruitListOne(jobseq);
		
		model.addAttribute("dto", dto);
		
		return "recruit/recruitDetail";
	}
	
	//삭제 
		@RequestMapping(value = "deleteRecruit.do", method = {RequestMethod.GET, RequestMethod.POST}) 
		public String deleteRecruit(int jobseq, Model model) {
			
			System.out.println("seq:"+jobseq);
			
			boolean b = service.deleteRecruit(jobseq);
			
			
			
			
			return "redirect:/recuruitlist.do";
		}
		
		
		
	
}
