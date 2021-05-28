package bit.com.a.controller;




import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import bit.com.a.dto.BbsParam;
import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;
import bit.com.a.service.RecruitService;

@Controller
public class RecruitController {

	@Autowired
	RecruitService service;
	
//TODO채용공고 리스트로 이동
	@RequestMapping(value = "recuruitlist.do", method = RequestMethod.GET)
	public String recuruitlist(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		return "recruit/recruitlist";
	}

//TODO채용공고작성
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
	
	
//TODO Ajax로 페이징 리스트 불러오기(검색, 페이지 추가)
	//parameter Dto는 동일해서 BbsParam가져다 썻음 
	@ResponseBody
	@RequestMapping(value = "recruitPagingListData.do", method = RequestMethod.GET)
	public List<RecruitDto> recruitPagingListData(BbsParam param) {	
		
		System.out.println("param tostring :" + param.toString());
		
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
		
		//System.out.println(list.toString());
		
		return list;
	}




//TODOAjax로 리스트의 총수 불러오기
	//parameter Dto는 동일해서 BbsParam가져다 썻음 
	@ResponseBody
	@RequestMapping(value = "recruitlistCount.do", method = RequestMethod.GET)
	public int recruitListCount(Model model, BbsParam param) {		
		model.addAttribute("doc_title", "채용공고");
		
		int count = service.getRecruitCount(param);
		
		return count;
	}	
	
//TODO공고작성페이지로이동(구형)
	@RequestMapping(value = "recuruitcreate.do", method = RequestMethod.GET)
	public String recuruitcreate(Model model) {		
		model.addAttribute("doc_title", "채용공고");
		return "recruit/recuruitcreate";
	}

//TODO 채용공고 작성 After(DB에 입력)
	@RequestMapping(value = "recuruitcreateAf.do", method = RequestMethod.POST)
	public String recuruitcreateAf(RecruitDto dto, Model model, HttpServletRequest req) {		
		model.addAttribute("doc_title", "채용공고");

		  System.out.println("디티오 데이터 :" +dto.toString());
		
		  //시작일 종료일 데이터 정비 
		  String start = dto.getJobStart(); 
		  String end = dto.getJobEnd();
		  //datetime-local 데이터는 중간에 T가 들어있어서 DB저장을 위해 잘라준다
		  start = start.replace("T", " "); 
		  end = end.replace("T", " ");
		  dto.setJobStart(start);
		  dto.setJobEnd(end);
		  
		  System.out.println("시작일 :"+dto.getJobStart());
		  System.out.println("종료일 :"+dto.getJobEnd());
		  
		  //지역 데이터 재설정 해주기 
		  String area1 = dto.getArea1Name();
		  //상세 주소 현재 사용안함 (컴퍼니 테이블과 조인하면 상세주소를 가져올수 있을거라 생각됨 여기선 필요없)
		  String area2 = dto.getArea2Name();
		  //다음 주소 api를 통해 가져온 주소를 split메서드를 통해 띄어쓰기를 기준으로 잘라준다
		  String[] area = area1.split("\\s+");
		  //대분류 지역이름에서 특별시 광역시는 제거해준다 
		  String area1Name = area[0]
				  				.replace("특별시", "")
				  				.replace("광역시", "");
		  System.out.println(area1Name);
		  dto.setArea1Name(area1Name);
		  dto.setArea2Name(area[1]);
		  
				  
		  System.out.println("변경된 데이터 :"+dto.toString());
		
		
		
		Map<String, Object> param = new HashMap<String, Object>();
		//dto를 map에 넣는다.
		param.put("dto", dto); 
		//buscode 여러개를 넘겨받고 배열에 넣어준다 
		String[] arrayParam = req.getParameterValues("buscode");
		for (int i = 0; i < arrayParam.length; i++) {
		System.out.println("넘어온버스코드:"+arrayParam[i]);
		}
		//map에 배열을 넣는다
		param.put("arrayParam", arrayParam); 
		
		boolean b = service.writeRecruit(param);
		
		if(b) {
			System.out.println("공고등록성공");
		}else {
			System.out.println("공고등록실패");
		}
		
		return "redirect:/recuruitlist.do";
	}

//TODO 채용공고 디테일 창으로 이동 (삭제)
	@RequestMapping(value = "recruitdetail.do", method = RequestMethod.GET)
	public String recuruitdetail(RecruitDto dto, String seq) {	
		
		
		System.out.println("seq : "+seq);
		
		return "recruit/recruitDetail";
	}

//TODO 디테일 창으로 이동	
	@RequestMapping(value = "RecruitDetail.do", method = RequestMethod.GET)
	public String RecruitDetail(int jobseq, Model model) {		
		model.addAttribute("doc_title", "채용공고");
		
		System.out.println("seq:"+jobseq);
		RecruitDto dto = service.getRecruitListOne(jobseq);
		
		System.out.println(dto.toString());
		
		
		List<String> list = service.getBsnameForDetail(jobseq);
		System.out.println("직무이름 :"+ list.toString());
		
		dto.setBusname(list);
		
		System.out.println("변경된 Dto :"+dto.toString());
		
		model.addAttribute("dto", dto);
		return "recruit/recruitDetail";
	}
	
//TODO 디테일 수정시 데이터 가져가기 Ajax
		@RequestMapping(value = "RecruitUpdate.do", method = RequestMethod.GET)
		public String getRecruitDetailUpdData(int jobseq, Model model) {		
			
			System.out.println("seq:"+jobseq);
			RecruitDto dto = service.getRecruitListOne(jobseq);
			System.out.println(dto.toString());
			
			List<String> list = service.getBsnameForDetail(jobseq);
			System.out.println("직무이름 :"+ list.toString());
			dto.setBusname(list);
			System.out.println("변경된 Dto :"+dto.toString());
			
			//날짜 재설정 중간에 'T'를 넣어줌으로써 datetime-local input형식에 맡도록 변경
			//시작일 종료일 데이터 정비 
			  String start = dto.getJobStart(); 
			  String end = dto.getJobEnd();
			  //T추가
			  StringBuffer sb1 = new StringBuffer();
			  StringBuffer sb2 = new StringBuffer();
			  start = start.replace("T", " "); 
			  end = end.replace("T", " ");
			  
			  sb1.append(start);
			  sb1.insert(10, 'T');
			  
			  start = sb1.toString();
			  
			  sb2.append(end);
			  sb2.insert(10, 'T');
			  
			  end = sb2.toString();
			  
			  start = start.replaceAll(" ", "");
			  end = end.replaceAll(" ", "");
			  
			  dto.setJobStart(start);
			  dto.setJobEnd(end);
			  
			  System.out.println("시작일 :"+dto.getJobStart());
			  System.out.println("종료일 :"+dto.getJobEnd());
			
			model.addAttribute("dto", dto);
			
			return "recruit/createTest";
		}
		
	
//TODO 삭제 
		@RequestMapping(value = "deleteRecruit.do", method = {RequestMethod.GET, RequestMethod.POST}) 
		public String deleteRecruit(int jobSeq, Model model) {
			
			System.out.println("seq:"+jobSeq);
			
		
			boolean b = service.deleteRecruit(jobSeq);
			
			if(b) {
				System.out.println("공고삭제성공");
			}else {
				System.out.println("공고삭제실패");
			}
			
			
			return "redirect:/recuruitlist.do";
		}
		
//TODO 업데이트 
		
		
		
		
			
	//채용공고 등록창에 직무코드 채용공고를 태그 안에 append시켜주는 코드 (직업분류1 대분류)
		@ResponseBody
		@RequestMapping(value = "buscodeListData.do", method = {RequestMethod.GET, RequestMethod.POST}) 
		public List<RecruitParam> buscodeListData(Model model) {
			
			List<RecruitParam> list = service.buscodeListData();
			
			System.out.println(list.toString());
			
			return list;
		}
		
		//채용공고 등록창에 직무코드 채용공고를 태그 안에 append시켜주는 코드 (직업분류1 대분류)
		@ResponseBody
		@RequestMapping(value = "buscode2ListData.do", method = {RequestMethod.GET, RequestMethod.POST}) 
		public List<RecruitParam> buscode2ListData(int buscode, Model model) {
			
			System.out.println("넘어온 버스코드 :"+ buscode);
			
			//int형 변수의 길이를 구하는 코드 
			int length = (int)( Math.log10(buscode)+1 ); 
			
			List<RecruitParam> list = null;
			
			if(length == 1) {
				list = service.buscode2ListData(buscode);
			}
			else if(length == 4 || length == 3) {
				list = service.buscode3ListData(buscode);
			}
					
			System.out.println(list.toString());
			
			return list;
		}

	
}
