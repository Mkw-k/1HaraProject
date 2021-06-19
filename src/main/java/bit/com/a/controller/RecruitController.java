package bit.com.a.controller;
import java.util.Calendar;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import bit.com.a.dto.BbsParam;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.CompanyDto;
import bit.com.a.dto.MemberDto;
import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;
import bit.com.a.dto.RecruitReplyDto;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_Portfolio;
import bit.com.a.service.RecruitReplyService;
import bit.com.a.service.BuspageService;
import bit.com.a.service.CompanyService;
import bit.com.a.service.MypageService;
import bit.com.a.service.RecruitService;
import bit.com.a.service.ResumeService;
import bit.com.a.util.UtilEx;

@Controller
public class RecruitController {

   @Autowired
   RecruitService service;

   @Autowired
   MypageService Myservice;

   @Autowired
   ResumeService resumeservice;

   @Autowired
   RecruitReplyService recruitservice;
   
   @Autowired
   BuspageService bsService;
   
   @Autowired
   CompanyService comservice;

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


//TODOAjax로 페이징 리스트 불러오기(검색, 페이지 추가)(XXXXXXX사용안함)
	//parameter Dto는 동일해서 BbsParam가져다 썻음
	@ResponseBody
	@RequestMapping(value = "recruitPagingListData.do", method = RequestMethod.GET)
	public List<RecruitDto> recruitPagingListData(RecruitParam param, HttpServletRequest req) {

		System.out.println("param tostring :" + param.toString());

		//paging 처리
		if(param.getPage() == 0) {

			int sn = param.getPage();
			int start = sn * 5 + 1; 	//1  11
			int end = (sn + 1) * 5; 	//10 20

			System.out.println("start ="+start);
			System.out.println("end ="+end);
			param.setStart(start);
			param.setEnd(end);
//		List<BbsDto> list = service.getBbsList(param);

		}
//		model.addAttribute("bbslist", list);

		List<RecruitDto> list = service.getRecruitPagingList(param);

//		System.out.println(list.toString());

		return list;
	}


	//TODO 모든 검색조건 추가하여 검색한 결과를 리스트로 반환하여 Ajax로 전송
	//getRecruitSearchList
	@ResponseBody
	@RequestMapping(value = "recruitTest.do", method = RequestMethod.POST)
	public List<RecruitDto> test(RecruitParam param, HttpServletRequest req) {

		String page = req.getParameter("page");
		System.out.println("이게 페이지 : "+ page);
		//넘어온값 확인
		System.out.println("넘어온값 : "+param.toString());

		//해시맵 생성
		Map<String, Object> map = new HashMap<String, Object>();

		//paging 처리
		int sn = param.getPage();
		int start = sn * 5 + 1; 	//1  11
		int end = (sn + 1) * 5; 	//10 20

		System.out.println("start ="+start);
		System.out.println("end ="+end);
		param.setStart(start);
		param.setEnd(end);

		//1. 직무코드 받아오기
		String arrBuscode[] = null;

		if(param.getBuscode() != null) {
			System.out.println(param.getBuscode().toString() );
			String buscode = param.getBuscode();
			System.out.println("이게버스코드:"+buscode);

			//띄어쓰기 기준으로 잘랐음 buscode도 실제 buscode임
			arrBuscode = buscode.split(",");

			//확인
			for (String item : arrBuscode) {
				System.out.println(item.toString());
			}
			//직무코드 넣기
		}
		map.put("arrBusi", arrBuscode);

		//2. 지역코드 받아오기
		String arrAreacode[] = null;

		if(param.getArea2name() != null) {
			String areaname = param.getArea2name();
			System.out.println("이게지역이름:"+areaname);

			//배열에 ,기준으로 잘라서 담기 (지역네임)
			 arrAreacode = areaname.split(",");

			//확인
			for (String item : arrAreacode) {
				System.out.println(item.toString());
			}
			//지역코드 넣기
		}
		map.put("arrAreacode", arrAreacode);

		String search = param.getSearch();
		String choice = param.getChoice();

		System.out.println("서치 + 초이스 : " +search+", " + choice);
		System.out.println("결과값 : "+param.toString());
		//디티오 넣기
		map.put("param", param);
		//choice 넣기(검색범주선택)
		map.put("choice", choice);
		//search 넣기(검색어)
		map.put("search", search);

		String education = "0";
		if(param.getEducation() != null && !param.getEducation().equals("")) {
			 education = param.getEducation();
		}
		map.put("education", education);

		String CareerStart = "0";
		if(param.getCareerStart() != null && !param.getCareerStart().equals("")) {
			 CareerStart = param.getCareerStart();
		}
		map.put("CareerStart", CareerStart);

		String CareerEnd = "0";
		if(param.getCareerEnd() != null && !param.getCareerEnd().equals("")) {
			CareerEnd = param.getCareerEnd();
		}
		map.put("CareerEnd", CareerEnd);

		//최종결과 리스트로 받기
		List<RecruitDto> list = service.getRecruitSearchList(map);

		System.out.println("결과:"+list.toString());

		return list;
	}




//TODOAjax로 리스트의 총수 불러오기
	//parameter Dto는 동일해서 BbsParam가져다 썻음
	@ResponseBody
	@RequestMapping(value = "recruitlistCount.do", method = RequestMethod.GET)
	public int recruitListCount(Model model, BbsParam param) {
		//넘어온값 확인
				System.out.println("넘어온값 : "+param.toString());

				//해시맵 생성
				Map<String, Object> map = new HashMap<String, Object>();

				//paging 처리
				/*
				int sn = param.getPage();
				int start = sn * 5 + 1; 	//1  11
				int end = (sn + 1) * 5; 	//10 20

				System.out.println("start ="+start);
				System.out.println("end ="+end);
				param.setStart(start);
				param.setEnd(end);
					*/

				//1. 직무코드 받아오기
				String arrBuscode[] = null;

				if(param.getBuscode() != null) {
					System.out.println(param.getBuscode().toString() );
					String buscode = param.getBuscode();
					System.out.println("이게버스코드:"+buscode);

					//띄어쓰기 기준으로 잘랐음 buscode도 실제 buscode임
					arrBuscode = buscode.split(",");

					//확인
					for (String item : arrBuscode) {
						System.out.println(item.toString());
					}
					//직무코드 넣기
				}
				map.put("arrBusi", arrBuscode);

				//2. 지역코드 받아오기
				String arrAreacode[] = null;

				if(param.getArea2name() != null) {
					String areaname = param.getArea2name();
					System.out.println("이게지역이름:"+areaname);

					//배열에 ,기준으로 잘라서 담기 (지역네임)
					 arrAreacode = areaname.split(",");

					//확인
					for (String item : arrAreacode) {
						System.out.println(item.toString());
					}
					//지역코드 넣기
				}
				map.put("arrAreacode", arrAreacode);

				String search = param.getSearch();
				String choice = param.getChoice();

				System.out.println("서치 + 초이스 : " +search+", " + choice);
				System.out.println("결과값 : "+param.toString());
				//디티오 넣기
				map.put("param", param);
				//choice 넣기(검색범주선택)
				map.put("choice", choice);
				//search 넣기(검색어)
				map.put("search", search);

				String education = "0";
				if(param.getEducation() != null && !param.getEducation().equals("")) {
					 education = param.getEducation();
				}
				map.put("education", education);

				String CareerStart = "0";
				if(param.getCareerStart() != null && !param.getCareerStart().equals("")) {
					 CareerStart = param.getCareerStart();
				}
				map.put("CareerStart", CareerStart);

				String CareerEnd = "0";
				if(param.getCareerEnd() != null && !param.getCareerEnd().equals("")) {
					CareerEnd = param.getCareerEnd();
				}
				map.put("CareerEnd", CareerEnd);

				//최종결과 리스트로 받기
				int count = service.getRecruitCount(map);

				System.out.println("결과 :"+count);

				return count;
	}




	/*
	 * @ResponseBody
	 *
	 * @RequestMapping(value = "recruitlistCount.do", method = RequestMethod.GET)
	 * public int recruitListCount(Model model, BbsParam param) {
	 * model.addAttribute("doc_title", "채용공고");
	 *
	 * int count = service.getRecruitCount(param);
	 *
	 * return count; }
	 */





//TODO공고작성페이지로이동(구형)
   @RequestMapping(value = "recuruitcreate.do", method = RequestMethod.GET)
   public String recuruitcreate(Model model) {
      model.addAttribute("doc_title", "채용공고");
      return "recruit/recuruitcreate";
   }

//TODO채용공고 작성 After(DB에 입력)
   @RequestMapping(value = "recuruitcreateAf.do", method = {RequestMethod.GET, RequestMethod.POST})
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
		  String[] area = area1.split("\\s");
		  //디테일주소 1 셋팅
		  String detailAdress1 = "";
		  for (int i = 2; i < area.length; i++) {
			  detailAdress1 += area[i] + " ";
		  }
		  //대분류 지역이름에서 특별시 광역시는 제거해준다
		  String area1Name = area[0]
				  				.replace("특별시", "")
				  				.replace("광역시", "");
		  System.out.println(area1Name);
		  dto.setArea1Name(area1Name);
		  dto.setArea2Name(area[1]);
		  dto.setDetailAdress1(detailAdress1);
		  dto.setDetailAdress2(area2);

		  String[] mgDetail = new String [] {dto.getDetailAdress1(), dto.getDetailAdress2(), dto.getMgName(), dto.getMgEmail(), dto.getMgPhone()};

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
		param.put("mgDetail", mgDetail);

		boolean b = service.writeRecruit(param);

		if(b) {
			System.out.println("공고등록성공");
		}else {
			System.out.println("공고등록실패");
		}

		return "redirect:/recuruitlist.do";
	}



//TODO 디테일 창으로 이동
   @RequestMapping(value = "RecruitDetail.do", method = RequestMethod.GET)
   public String RecruitDetail(int jobseq, Model model, String memberid) {

     model.addAttribute("doc_title", "채용공고");

		 RecruitDto dto = service.getRecruitListOne(jobseq);

      List<ResumeDto> resumelist = null;
      List<Resume_Portfolio> portlist = null;

      //로그인 시에만 이력서와 포트폴리오를 받아오도록
		  if(memberid != null) {
  			  resumelist = resumeservice.getresume(memberid);
          portlist = resumeservice.getPortfolio(memberid);
  			  model.addAttribute("resumelist", resumelist);
		  }

      //직무이름 받아오는 코드
		  List<String> list = service.getBsnameForDetail(jobseq);
		  System.out.println("직무이름 :"+ list.toString());


		  RecruitParam param = new RecruitParam();

		  if(memberid != null) {
      		  //즐겨찾기 여부 검색용 파라미터 dto설정
      		  String jobSeq = jobseq + "";
      		  param.setJobSeq(jobSeq);
      		  param.setMemberid(memberid);

      		  //즐겨찾기 받아오기 (즐겨찾기 여부확인 코드 0보다 크면 이미 즐겨찾기 되있는거)
      		  int IjobFavoriteCount = service.getJobFavorite(param);
      		  String jobFavoriteCount = IjobFavoriteCount + "";

      		  dto.setFavoriteJob(jobFavoriteCount);

      		  //검색용 파라미터 dto설정
      		  param.setCompanyId(dto.getCompanyId());
      		  param.setMemberid(memberid);

      		  //즐겨찾기 받아오기 (즐겨찾기 여부확인 코드 0보다 크면 이미 즐겨찾기 되있는거)
      		  int IcomFavoriteCount = service.getComFavorite(param);
      		  String comFavoriteCount = IcomFavoriteCount + "";
      		  dto.setFavoriteCom(comFavoriteCount);

		  }
		  
		  
		  BusinessDto bsdto = new BusinessDto();
		  
		  bsdto = bsService.getbuspage(dto.getCompanyId());
		  
		  model.addAttribute("bsdto", bsdto);
		  
		  String companyid = bsdto.getMemberid();
		  CompanyDto com = comservice.getCompany(companyid);
		  model.addAttribute("com", com);
			
		  System.out.println("변경된 Dto :"+dto.toString());

		  model.addAttribute("dto", dto);
		  model.addAttribute("resumelist", resumelist);
		  model.addAttribute("portlist", portlist);


      return "recruit/recruitDetail";
   }


 //TODO 기업 상세정보 가져오기
   @RequestMapping(value = "getDetailCompany.do", method = RequestMethod.GET)
   public String getDetailCompany(int jobSeq, Model model, String memberid) {
      model.addAttribute("doc_title", "채용공고");

      MemberDto mem = Myservice.getMypage(memberid);



      CompanyDto com = service.getCompany(jobSeq);

      if(com !=null) {
      System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"+com.toString());
      }
      model.addAttribute("com", com);

      //디테일 데이터 받아오기
      System.out.println("seq:"+jobSeq);
      RecruitDto dto = service.getRecruitListOne(jobSeq);
      List<ResumeDto> resumelist = resumeservice.getresume(memberid);
      List<Resume_Portfolio> portlist = resumeservice.getPortfolio(memberid);

      System.out.println(dto.toString());

      //직무이름 받아오는 코드
      List<String> list = service.getBsnameForDetail(jobSeq);
      System.out.println("직무이름 :"+ list.toString());

      dto.setBusname(list);

      //검색용 파라미터 dto설정
      RecruitParam param = new RecruitParam();
      String jobseq = jobSeq + "";
      param.setJobSeq(jobseq);
      param.setMemberid(memberid);

      //즐겨찾기 받아오기 (즐겨찾기 여부확인 코드 0보다 크면 이미 즐겨찾기 되있는거)
      int IjobFavoriteCount = service.getJobFavorite(param);
      String jobFavoriteCount = IjobFavoriteCount + "";

      dto.setFavoriteJob(jobFavoriteCount);


      //검색용 파라미터 dto설정
      param.setCompanyId(dto.getCompanyId());
      param.setMemberid(memberid);

      //즐겨찾기 받아오기 (즐겨찾기 여부확인 코드 0보다 크면 이미 즐겨찾기 되있는거)
      int IcomFavoriteCount = service.getComFavorite(param);
      String comFavoriteCount = IcomFavoriteCount + "";

      dto.setFavoriteCom(comFavoriteCount);

      System.out.println("변경된 Dto :"+dto.toString());

      model.addAttribute("dto", dto);
      model.addAttribute("resumelist", resumelist);
      model.addAttribute("portlist", portlist);


      List<RecruitReplyDto> replylist = recruitservice.list(jobSeq);
      model.addAttribute("replylist", replylist);

		/* model.addAttribute("mem", mem); */

      return "recruit/recruitDetail";
   }




//TODO디테일 수정시 데이터 가져가기 Ajax(컨트롤러에서 상세공고 데이터를 취득하여 업데이트 페이지로 이동)
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

           dto.setCertifyUpdate("YES");
           System.out.println("업뎃셋팅 :" + dto.getCertifyUpdate());

         model.addAttribute("dto", dto);

         return "recruit/createTest";
      }


      //TODO채용공고 작성 After(DB에 입력)
      @RequestMapping(value = "recuruitupdateAf.do", method = RequestMethod.POST)
      public String RecruitUpdate(RecruitDto dto, Model model, HttpServletRequest req) {
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
           String[] area = area1.split(",");

           System.out.println("지역배열 출력:"+ Arrays.toString(area));

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


         boolean delB = service.deleteBuscode(dto.getJobSeq());

         if(delB) {
            System.out.println("버스코드삭제성공");
         }

         boolean codeUpB = service.insertBuscode(param);

         if(codeUpB) {
            System.out.println("버스코드 등록성공");
         }

         boolean b = service.updateRecruit(param);

         if(b) {
            System.out.println("공고등록성공");
         }else {
            System.out.println("공고등록실패");
         }

         return "redirect:/recuruitlist.do";
      }


//TODO삭제
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

//TODO업데이트





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

			if(length == 1 || length ==2) {
				list = service.buscode2ListData(buscode);
			}
			else if(length == 4 || length == 3) {
				list = service.buscode3ListData(buscode);
			}

			System.out.println(list.toString());

			return list;
		}

		//TODO 5단검색 캘린더
		@RequestMapping(value = "calendarlist1.do",  method = {RequestMethod.GET, RequestMethod.POST})
		String calendarlist1(Model model, RecruitParam param, HttpSession session, HttpServletRequest req) {

				String page = req.getParameter("page");
				System.out.println("이게 페이지 : "+ page);
				//넘어온값 확인
				System.out.println("넘어온값 : "+param.toString());

				//해시맵 생성
				Map<String, Object> map = new HashMap<String, Object>();

				//paging 처리
				int sn = param.getPage();
				int start = sn * 5 + 1; 	//1  11
				int end = (sn + 1) * 5; 	//10 20

				System.out.println("start ="+start);
				System.out.println("end ="+end);
				param.setStart(start);
				param.setEnd(end);

				//1. 직무코드 받아오기
				String arrBuscode[] = null;

				if(param.getBuscode() != null) {
					System.out.println(param.getBuscode().toString() );
					String buscode = param.getBuscode();
					System.out.println("이게버스코드:"+buscode);

					//띄어쓰기 기준으로 잘랐음 buscode도 실제 buscode임
					arrBuscode = buscode.split(",");

					//확인
					for (String item : arrBuscode) {
						System.out.println(item.toString());
					}
					//직무코드 넣기
				}
				map.put("arrBusi", arrBuscode);

				//2. 지역코드 받아오기
				String arrAreacode[] = null;

				if(param.getArea2name() != null) {
					String areaname = param.getArea2name();
					System.out.println("이게지역이름:"+areaname);

					//배열에 ,기준으로 잘라서 담기 (지역네임)
					 arrAreacode = areaname.split(",");

					//확인
					for (String item : arrAreacode) {
						System.out.println(item.toString());
					}
					//지역코드 넣기
				}
				map.put("arrAreacode", arrAreacode);

				String search = param.getSearch();
				String choice = param.getChoice();

				System.out.println("서치 + 초이스 : " +search+", " + choice);
				System.out.println("결과값 : "+param.toString());
				//디티오 넣기
				map.put("param", param);
				//choice 넣기(검색범주선택)
				map.put("choice", choice);
				//search 넣기(검색어)
				map.put("search", search);

				String education = "0";
				if(param.getEducation() != null && !param.getEducation().equals("")) {
					 education = param.getEducation();
				}
				map.put("education", education);

				String CareerStart = "0";
				if(param.getCareerStart() != null && !param.getCareerStart().equals("")) {
					 CareerStart = param.getCareerStart();
				}
				map.put("CareerStart", CareerStart);

				String CareerEnd = "0";
				if(param.getCareerEnd() != null && !param.getCareerEnd().equals("")) {
					CareerEnd = param.getCareerEnd();
				}
				map.put("CareerEnd", CareerEnd);

				//최종결과 리스트로 받기
				List<RecruitDto> list = service.getCalendarSearchList(map);

				System.out.println("결과:"+list.toString());


			Calendar cal = Calendar.getInstance();


			int year = param.getYear();
			int month = param.getMonth();
			int day = param.getDay();

			if(month == 0) {
				year--;
				month = 12;
			}
			else if(month == 13) {
				year++;
				month = 1;
			}
			else if(month < 0) {	// 처음 들어온 경우 여기로 들어 와서 연월일을 현재 날짜로 셋팅한다
				year = cal.get(Calendar.YEAR);
				month = cal.get(Calendar.MONTH) + 1;
				if(day < 0) {
					day = cal.get(Calendar.DATE);
				}
			}
			cal.set(year, month - 1, 1);	// 요일을 구하기 위한 설정

			// 요일
			int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
			// 마지막 날짜
			int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

			// 셋팅된 날짜를 다시 넘겨주기 위한 set
			param.setYear(year);
			param.setMonth(month);
			param.setDay(day);
			param.setDayOfWeek(dayOfWeek);
			param.setLastDay(lastDay);

			// 로그인 정보
			//String id = ((MemberDto)session.getAttribute("login")).getId();
			// 날짜 취득
			String yyyymmdd = UtilEx.yyyymmdd(param.getYear(), param.getMonth(), param.getDay());

			// DB에서 그달의 일정을 모두 취득하기 위한 Dto
			RecruitDto fcal = new RecruitDto();
			fcal.setJobStart(yyyymmdd);
			System.out.println(fcal.toString());


			// Db로부터 일정들을 취득한다
			//List<RecruitDto> list1 = service.getCalendarList(fcal);
			//System.out.println(list1.toString());

			// 짐싸!
			model.addAttribute("flist", list);	// 일정목록을 포장
			model.addAttribute("cal", param);	// 설정된 날짜를 포장

			return "recruit/recruitcalendar";
		}

		//기존 캘린더
		@RequestMapping(value = "calendarlist2.do",  method = {RequestMethod.GET, RequestMethod.POST})
		String calendarlist2(Model model, RecruitParam param, HttpSession session, HttpServletRequest req) {

			String page = req.getParameter("page");
			System.out.println("이게 페이지 : "+ page);
			//넘어온값 확인
			System.out.println("넘어온값 : "+param.toString());

			//해시맵 생성
			Map<String, Object> map = new HashMap<String, Object>();

			//paging 처리
			int sn = param.getPage();
			int start = sn * 5 + 1; 	//1  11
			int end = (sn + 1) * 5; 	//10 20

			System.out.println("start ="+start);
			System.out.println("end ="+end);
			param.setStart(start);
			param.setEnd(end);

			//1. 직무코드 받아오기
			String arrBuscode[] = null;

			if(param.getBuscode() != null) {
				System.out.println(param.getBuscode().toString() );
				String buscode = param.getBuscode();
				System.out.println("이게버스코드:"+buscode);

				//띄어쓰기 기준으로 잘랐음 buscode도 실제 buscode임
				arrBuscode = buscode.split(",");

				//확인
				for (String item : arrBuscode) {
					System.out.println(item.toString());
				}
				//직무코드 넣기
			}
			map.put("arrBusi", arrBuscode);

			//2. 지역코드 받아오기
			String arrAreacode[] = null;

			if(param.getArea2name() != null) {
				String areaname = param.getArea2name();
				System.out.println("이게지역이름:"+areaname);

				//배열에 ,기준으로 잘라서 담기 (지역네임)
				 arrAreacode = areaname.split(",");

				//확인
				for (String item : arrAreacode) {
					System.out.println(item.toString());
				}
				//지역코드 넣기
			}
			map.put("arrAreacode", arrAreacode);

			String search = param.getSearch();
			String choice = param.getChoice();

			System.out.println("서치 + 초이스 : " +search+", " + choice);
			System.out.println("결과값 : "+param.toString());
			//디티오 넣기
			map.put("param", param);
			//choice 넣기(검색범주선택)
			map.put("choice", choice);
			//search 넣기(검색어)
			map.put("search", search);

			String education = "0";
			if(param.getEducation() != null && !param.getEducation().equals("")) {
				 education = param.getEducation();
			}
			map.put("education", education);

			String CareerStart = "0";
			if(param.getCareerStart() != null && !param.getCareerStart().equals("")) {
				 CareerStart = param.getCareerStart();
			}
			map.put("CareerStart", CareerStart);

			String CareerEnd = "0";
			if(param.getCareerEnd() != null && !param.getCareerEnd().equals("")) {
				CareerEnd = param.getCareerEnd();
			}
			map.put("CareerEnd", CareerEnd);

			//최종결과 리스트로 받기
			List<RecruitDto> list = service.getRecruitSearchList(map);

			System.out.println("결과:"+list.toString());

			Calendar cal = Calendar.getInstance();


			int year = param.getYear();
			int month = param.getMonth();
			int day = param.getDay();

			if(month == 0) {
				year--;
				month = 12;
			}
			else if(month == 13) {
				year++;
				month = 1;
			}
			else if(month < 0) {	// 처음 들어온 경우 여기로 들어 와서 연월일을 현재 날짜로 셋팅한다
				year = cal.get(Calendar.YEAR);
				month = cal.get(Calendar.MONTH) + 1;
				if(day < 0) {
					day = cal.get(Calendar.DATE);
				}
			}
			cal.set(year, month - 1, 1);	// 요일을 구하기 위한 설정

			// 요일
			int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
			// 마지막 날짜
			int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

			// 셋팅된 날짜를 다시 넘겨주기 위한 set
			param.setYear(year);
			param.setMonth(month);
			param.setDay(day);
			param.setDayOfWeek(dayOfWeek);
			param.setLastDay(lastDay);

			// 로그인 정보
			//String id = ((MemberDto)session.getAttribute("login")).getId();
			// 날짜 취득
			String yyyymmdd = UtilEx.yyyymmdd(param.getYear(), param.getMonth(), param.getDay());

			// DB에서 그달의 일정을 모두 취득하기 위한 Dto
			RecruitDto fcal = new RecruitDto();
			fcal.setJobStart(yyyymmdd);
			System.out.println(fcal.toString());


			// Db로부터 일정들을 취득한다
			//List<RecruitDto> list = service.getCalendarList_1();
			//System.out.println(fcal);
			// 짐싸!
			model.addAttribute("flist", list);	// 일정목록을 포장
			model.addAttribute("cal", param);	// 설정된 날짜를 포장

			return "recruit/recruitcalendar";
		}



	//채용공고 리스트에 지역코드를 뿌려주는 코드 (지역1)
		@ResponseBody
		@RequestMapping(value = "areacodeListData.do", method = {RequestMethod.GET, RequestMethod.POST})
		public List<RecruitParam> areacodeListData(Model model) {

			List<RecruitParam> list = service.areacodeListData();

			System.out.println(list.toString());

			return list;
		}



		//채용공고 리스트에 지역코드를 뿌려주는 코드 (지역2)
		@ResponseBody
		@RequestMapping(value = "areacode2ListData.do", method = {RequestMethod.GET, RequestMethod.POST})
		public List<RecruitParam> areacode2ListData(int areacode, Model model) {

			//int areacode = service.getArea1Code(areaname);

			List<RecruitParam> list = service.areacode2ListData(areacode);

			System.out.println(list.toString());

			return list;
		}

		//담당자 상세정보 업데이트
		@RequestMapping(value = "mgDetailUpdate.do", method = {RequestMethod.GET, RequestMethod.POST})
		public void mgDetailUpdate(RecruitDto dto, Model model) {

		  //int areacode = service.getArea1Code(areaname);

		  //지역 데이터 재설정 해주기
		  String area1 = dto.getArea1Name();
		  //상세 주소 현재 사용안함 (컴퍼니 테이블과 조인하면 상세주소를 가져올수 있을거라 생각됨 여기선 필요없)
		  String area2 = dto.getArea2Name();
		  //다음 주소 api를 통해 가져온 주소를 split메서드를 통해 띄어쓰기를 기준으로 잘라준다
		  String[] area = area1.split("\\s");
		  //디테일주소 1 셋팅
		  String detailAdress1 = "";
		  for (int i = 2; i < area.length; i++) {
			  detailAdress1 += area[i] + " ";
		  }
		  //대분류 지역이름에서 특별시 광역시는 제거해준다
		  String area1Name = area[0]
				  				.replace("특별시", "")
				  				.replace("광역시", "");
		  System.out.println(area1Name);
		  dto.setArea1Name(area1Name);
		  dto.setArea2Name(area[1]);
		  dto.setDetailAdress1(detailAdress1);
		  dto.setDetailAdress2(area2);

		//시작일 종료일 데이터 정비
		  String start = dto.getJobStart();
		  String end = dto.getJobEnd();
		  //datetime-local 데이터는 중간에 T가 들어있어서 DB저장을 위해 잘라준다
		  start = start.replace("T", " ");
		  end = end.replace("T", " ");
		  dto.setJobStart(start);
		  dto.setJobEnd(end);


			boolean b  = service.mgDetailUpdate(dto);
			boolean f = service.mgDetailUpdate2(dto);


			if(b) {
				System.out.println("담당자 업뎃 1성공");
			}else {
				System.out.println("담당자 업뎃 1실패");
			}
			if(f) {
				System.out.println("담당자 업뎃 2성공");
			}else {
				System.out.println("담당자 업뎃 2실패");
			}



		}

		//채용공고 즐겨찾기 추가
		@RequestMapping(value = "favoriteJob.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String favoriteJob(RecruitParam param, Model model)throws Exception {

			System.out.println("공고 즐겨찾기 메서드 실행");

		  boolean b = service.favoriteJob(param);
		  //boolean b2 = service.favoriteJob2(param);

		  if(b) {
			  	System.out.println("즐겨찾기 등록 성공");

			}else {
				System.out.println("즐겨찾기 실패");

			}

			model.addAttribute("jobseq", param.getJobSeq());
		  	model.addAttribute("memberid", param.getMemberid());

		  	return "redirect:/RecruitDetail.do";
		}




		//채용공고 즐겨찾기 해제
		@RequestMapping(value = "dropFavoriteJob.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String dropFavoriteJob(RecruitParam param, Model model)throws Exception {

			System.out.println("공고 즐겨찾기 해제 메서드 실행");

		  boolean b = service.dropFavoriteJob(param);
		  boolean b2 = service.dropFavoriteJob2(param);

		  if(b) {
			  	System.out.println("즐겨찾기 해제 성공");


			}else {
				System.out.println("즐겨찾기 해제 실패");

			}

		    int jobseq = Integer.parseInt(param.getJobSeq());
		  	model.addAttribute("jobseq", jobseq);
		  	model.addAttribute("memberid", param.getMemberid());



		  return "redirect:/RecruitDetail.do";
		}


		//TODO 회사 좋아요 추가
		@RequestMapping(value = "favoriteCom.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String favoriteCom(RecruitParam param, Model model)throws Exception {

			System.out.println("공고 즐겨찾기 메서드 실행");

			System.out.println("좋아요 파람:"+param.toString());
		  boolean b = service.favoriteCom(param);



		  if(b) {
			  	System.out.println("회사 좋아요! 성공");

			}else {
				System.out.println("회사 좋아요! 실패");

			}

			model.addAttribute("jobseq", param.getJobSeq());
		  	model.addAttribute("memberid", param.getMemberid());

		  	return "redirect:/RecruitDetail.do";
		}



		//TODO 회사 좋아요기 해제
		@RequestMapping(value = "dropFavoriteCom.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String dropFavoriteCom(RecruitParam param, Model model)throws Exception {

			System.out.println("공고 즐겨찾기 해제 메서드 실행");

		  boolean b = service.dropFavoriteCom(param);


		  if(b) {
			  	System.out.println("회사 좋아요! 해제 성공");


			}else {
				System.out.println("회사 좋아요! 해제 실패");

			}

		    int jobseq = Integer.parseInt(param.getJobSeq());

		    model.addAttribute("jobseq", jobseq);
		  	model.addAttribute("memberid", param.getMemberid());



		  return "redirect:/RecruitDetail.do";
		}


		//TODO 프리미엄회원 결제창으로 이동
		@RequestMapping(value = "priMember.do", method = RequestMethod.GET)
		public String priMember(Model model, BusinessDto dto) {
			model.addAttribute("doc_title", "채용공고");

			System.out.println("들어온 데이터 :" + dto.toString());

			model.addAttribute("dto", dto);

			return "recruit/payment";
		}

		//TODO 프리미엄회원 결제창으로 이동
		@RequestMapping(value = "priMemberAf.do", method = RequestMethod.GET)
		public String priMemberAf(Model model, BusinessDto dto) {
			model.addAttribute("doc_title", "채용공고");

			System.out.println("AF들어온 데이터 :" + dto.toString());

			boolean b = service.priMemberAf(dto);

			if(b) {
			  	System.out.println("프리미엄 등록 성공");

			}else {
				System.out.println("프리미엄 등록 실패");

			}


			return "redirect:/recuruitlist.do";
		}


		//TODO 즐겨찾기가 가장 많은 TOP10 공고 불러오기
		@ResponseBody
		@RequestMapping(value = "getTop10List.do", method = {RequestMethod.GET, RequestMethod.POST})
		public List<RecruitDto> getTop10List()throws Exception {

			List<RecruitDto> list = service.getTop10List();



			return list;

		}



		//폰번호만 가져오기
		@ResponseBody
		@RequestMapping(value = "getPhonenum.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String getPhonenum(String memberid) {

			String phonenumber = service.getPhonenum(memberid);

			System.out.println("폰번호 = "+ phonenumber);

			return phonenumber;
		}







}
