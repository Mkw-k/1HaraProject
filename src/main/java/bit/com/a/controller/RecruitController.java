package bit.com.a.controller;
import java.util.Calendar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import bit.com.a.util.UtilEx;

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

//TODO채용공고 디테일 창으로 이동 (삭제)
   @RequestMapping(value = "recruitdetail.do", method = RequestMethod.GET)
   public String recuruitdetail(RecruitDto dto, String seq) {


      System.out.println("seq : "+seq);

      return "recruit/recruitDetail";
   }

//TODO디테일 창으로 이동
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
		String calendarlist1(Model model, RecruitParam param, HttpSession session) {

			//넘어온값 확인
			System.out.println("넘어온값 : "+param.toString());

			//해시맵 생성
			Map<String, Object> map = new HashMap<String, Object>();

			
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
			//List<RecruitDto> list1 = service.getCalendarList(fcal);
			//System.out.println(list1.toString());
			// 짐싸!
			model.addAttribute("flist", list);	// 일정목록을 포장
			model.addAttribute("cal", param);	// 설정된 날짜를 포장

			return "recruit/recruitcalendar";
		}
		
		//기존 캘린더
		@RequestMapping(value = "calendarlist2.do",  method = {RequestMethod.GET, RequestMethod.POST})
		String calendarlist2(Model model, RecruitParam param, HttpSession session) {		
			
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
			List<RecruitDto> list = service.getCalendarList_1();
			System.out.println(fcal);
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
		public void favoriteJob(int jobSeq, Model model) {

		  boolean b = service.favoriteJob(jobSeq);



		}



}
