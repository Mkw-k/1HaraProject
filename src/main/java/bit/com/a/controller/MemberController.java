package bit.com.a.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bit.com.a.dto.MemberDto;
import bit.com.a.service.MemberService;
import bit.com.a.util.PdsUtil;

@Controller
public class MemberController {

	@Autowired
	// @Inject //서비스를 호출하기 위해서 의존성을 주입
	MemberService service;
	// JavaMailSender mailSender; //메일 서비스를 사용하기 위해 의존성을 주입함.

	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(Model model, MemberDto mem) {
		model.addAttribute("mem", mem);
		return "home";
	}

	@RequestMapping(value = "login1.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String login1(Model model) {

		return "login/login";
	}


	@RequestMapping(value = "regiclick.do", method=RequestMethod.GET)

	public String regiclick(Model model, MemberDto mem) {
		return "login/regiclick";
		/* model.addAttribute("mem", mem); */
	}


	@RequestMapping(value = "memberRegi.do", method=RequestMethod.GET)

	public String MemberRegi() {
		return "login/memberRegi";
	}

	@ResponseBody
	@RequestMapping(value = "getId.do", method = {RequestMethod.GET, RequestMethod.POST})

	public String getId(MemberDto mem) {
		System.out.println("getId mem = " + mem.toString());
		int count = service.getId(mem);
		String msg = "";


		if(count == 0) {

			msg = "YES";
		} else {
			msg = "NO";
		}

		return msg;
	}

	@RequestMapping(value = "regiAf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String regiAf(MemberDto dto,
						@RequestParam(value = "fileload", required = false) MultipartFile fileload,
						HttpServletRequest req) {

		  System.out.println("addmember:" + dto.toString());

		  String userpic = fileload.getOriginalFilename();
		  dto.setUserpic(userpic);

		 //upload 경로 설정
		 //server(tomcat)
		 String fupload = req.getServletContext().getRealPath("/upload");

		 //폴더에 올리는 법
		 //String fupload = "d:\\tmp";

		 System.out.println("fupload:"+fupload);
		 String newuserpic = PdsUtil.getNewFileName(dto.getUserpic());

		 dto.setNewuserpic(newuserpic);

		 File file = new File(fupload + "/" + newuserpic);

		 try {
			 FileUtils.writeByteArrayToFile(file, fileload.getBytes());

			 boolean b = service.addmember(dto);
			 if(b) { System.out.println("회원 가입되었습니다 " + new Date());
			 return "home";

		 }
		 }catch (IOException e) {
			 e.printStackTrace();
			 System.out.println("가입되지 않았습니다 " + new Date());
		 }
		 
		 return "login/memberRegi";

		 }		 
	
	
	//TODO 로그인 
	@RequestMapping(value = "loginAf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String loginAf(MemberDto dto, HttpServletRequest req, HttpServletResponse response,
			@RequestParam(value="memberid", required=true) String userId,
			@RequestParam(value="pwd",required=true) String password ) throws Exception {

		MemberDto login = service.login(dto);

		if (login != null && !login.getMemberid().equals("")) {

			req.getSession().setAttribute("login", login);
			// req.getSession().setMaxInactiveInterval(60 * 60 * 24);

			return "redirect:/home.do";

		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
			
			return "redirect:/login1.do";

		}
	}

	/*
	 * @RequestMapping(value = "loginAf.do", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String loginAf(MemberDto dto, HttpServletRequest
	 * req, HttpServletResponse response,
	 *
	 * @RequestParam(value="memberid", required=true) String userId,
	 *
	 * @RequestParam(value="pwd",required=true) String password ) throws Exception {
	 *
	 * MemberDto login = service.login(dto); if (login == null) {
	 *
	 * response.setContentType("text/html; charset=UTF-8"); PrintWriter out =
	 * response.getWriter();
	 * out.println("<script>alert('로그인 정보를 확인해주세요.');</script>");
	 *
	 * return "redirect:/login1.do";
	 *
	 * } else { req.getSession().setAttribute("login", login); //
	 * req.getSession().setMaxInactiveInterval(60 * 60 * 24);
	 *
	 * return "redirect:/home.do";
	 *
	 * } }
	 */



	@RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session) {
        session.invalidate();
        ModelAndView mv = new ModelAndView("redirect:home.do");
        return mv;
    }

	@ResponseBody
	@RequestMapping(value = "/sendSms.do", method = RequestMethod.POST)

	public String sendSms(HttpServletRequest request) throws Exception {

		String api_key = "NCSLHXF31QIYUJCT";
		String api_secret = "T4SG4WFRBS1BGK9J7TOWKLVYJ9NVEGUI";

		Coolsms coolsms = new Coolsms(api_key, api_secret);

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", (String) request.getParameter("to")); // 수신번호
		set.put("from", "01059559878"); // 발신번호
		set.put("text", "안녕하세요 인증번호는 [" + (String) request.getParameter("text") + "]입니다"); // 문자내용
		set.put("type", "sms"); // 문자 타입

		System.out.println(set);

		JSONObject result = coolsms.send(set); // 보내기&전송결과받기

		if ((boolean) result.get("status") == true) {
			// 메시지 보내기 성공 및 전송결과 출력
			System.out.println("성공");
			System.out.println(result.get("group_id")); // 그룹아이디
			System.out.println(result.get("result_code")); // 결과코드
			System.out.println(result.get("result_message")); // 결과 메시지
			System.out.println(result.get("success_count")); // 메시지아이디
			System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
		} else {
			// 메시지 보내기 실패
			System.out.println("실패");
			System.out.println(result.get("code")); // REST API 에러코드
			System.out.println(result.get("message")); // 에러메시지
		}

		return "suc";
	}


	@ResponseBody
	@RequestMapping(value = "/reservSendSms.do", method = RequestMethod.POST)

	public String reservSendSms(HttpServletRequest request) throws Exception {

		String api_key = "NCSLHXF31QIYUJCT";
		String api_secret = "T4SG4WFRBS1BGK9J7TOWKLVYJ9NVEGUI";

		Coolsms coolsms = new Coolsms(api_key, api_secret);

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", (String) request.getParameter("to")); // 수신번호
		set.put("from", "01059559878"); // 발신번호
		set.put("text", "안녕하세요 일하라입니다"+ "스크랩하신 "+ "title" + "공고의 마감기한이 24시간 남았습니다" ); // 문자내용
		set.put("type", "sms"); // 문자 타입

		System.out.println(set);
		
		String datetime = "201401151230";
		
		set.put("datetime", datetime); // 예약전송시 날짜 설정    

		JSONObject result = coolsms.send(set); // 보내기&전송결과받기

		if ((boolean) result.get("status") == true) {
			// 메시지 보내기 성공 및 전송결과 출력
			System.out.println("성공");
			System.out.println(result.get("group_id")); // 그룹아이디
			System.out.println(result.get("result_code")); // 결과코드
			System.out.println(result.get("result_message")); // 결과 메시지
			System.out.println(result.get("success_count")); // 메시지아이디
			System.out.println(result.get("error_count")); // 여러개 보낼시 오류난 메시지 수
		} else {
			// 메시지 보내기 실패
			System.out.println("실패");
			System.out.println(result.get("code")); // REST API 에러코드
			System.out.println(result.get("message")); // 에러메시지
		}

		return "suc";
	}

	
	
	@RequestMapping(value = "loginProcess.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginProcess(@RequestParam String id, HttpServletRequest request) {

    	HttpSession session = request.getSession();
    	session.setAttribute("id", id);

		return "chat";
	}

	
	//TODO 카카오 로그인 애프터 
	@RequestMapping(value = "kakalogAf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String kakalogAf(String memberid, String name, String birth, HttpServletRequest req) {
		System.out.println("카카오토크");
		System.out.println("넘어오는 값 : "+memberid+ name+ birth);
		
		System.out.println("kakalogAf 1/6");
		
		MemberDto dto = new MemberDto();
		
		dto.setMemberid(memberid);
		dto.setName(name);
		dto.setBirth(birth);
		
		System.out.println("kakalogAf 2/6");
		
		//카카오톡 로그인시 아이디가 있을수 있으므로 있으면 패스워드 가져오기 
		String pwd = service.getKakaoPwd(memberid);
		
		System.out.println("kakalogAf 3/6");
		
		//만약에 아이디가 없다면 비번은 0000으로 셋팅 후 회원가입  
		if(pwd == null) { 
			dto.setPwd("0000");
			dto.setAuth(1);
			dto.setEmail(dto.getMemberid());
			dto.setDetailaddress("정보를 수정해주세요");
			dto.setAddress("정보를 수정해주세요");
			dto.setUserpic("0000");
			String newuserpic = new Date().getTime() + ".back";
			dto.setNewuserpic(newuserpic);
			
			
			
			System.out.println("kakalogAf 4/6");
			
			boolean b = service.addmember(dto);
			System.out.println("kakalogAf 5/6");
			
				if(b) {
					System.out.println("회원 가입되었습니다 " + new Date());
					System.out.println("kakao regi:" + dto.toString());
				}else {
					System.out.println("가입되지 않았습니다 " + new Date());
					return "login/memberRegi";
				}
			
			}
		  //아이디가 있으면 기존 패스워드로 로그인 처리 
		  else { 
			  dto.setPwd(pwd); 
			  System.out.println("kakalogAf 4/6");
			  System.out.println("kakalogAf 5/6");
			}
		 
		
		//로그인 프로세스 진행
		MemberDto login = service.kakaoLogin(dto);
		System.out.println("kakalogAf 6/6");
		
		//로그인 성공시 
		if (login != null) {
			req.getSession().setAttribute("login", login);

			System.out.println("kakao login:" + dto.toString());
			return "redirect:/login.do";
		}
		//로그인 실패시 가입 시키기 
		else {

				System.out.println("카카오 실패 " + new Date());
				return "login/memberRegi";

			}

		}

	

	@RequestMapping(value = "searchidpwd.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String idpwdsearch(Model model, MemberDto mem) {
		model.addAttribute("mem", mem);
		return "login/searchidpwd";
	}

	@RequestMapping(value ="memberDelete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memberDelete(MemberDto dto, HttpSession session, RedirectAttributes rttr) throws Exception {
		return "login/memberDelete";
	}

	@RequestMapping(value="memberDeleteAf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memberDeleteAf(MemberDto dto, HttpSession session, RedirectAttributes rttr) throws Exception{
		// member변수 가져옴
		MemberDto mem = (MemberDto) session.getAttribute("login");
		System.out.println("비번" + mem.getPwd());
		// 세션에 있는 비밀번호
		String sessionPass = mem.getPwd();

		// dto로 들어오는 비밀번호
		String dtopass = dto.getPwd();

		if(!(sessionPass.equals(dtopass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:memberDelete.do";
		}
		service.memberDelete(dto);
		session.invalidate();
		return "home";
	}

	@RequestMapping(value="memberlist.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String listGET(HttpSession session, Model model) throws Exception{

		// 1. 관리자 세션 제어
		MemberDto member = (MemberDto) session.getAttribute("login");
		if(member.getAuth()==3) {
			model.addAttribute("member", service.getMemberList());
			return "admin/memberlist";
		}
		else {
			return "redirect:home.do";
		}
	}

	@RequestMapping(value="memberdeletemerong.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView admin_member_forced_eviction(String memberid) throws Exception {
        System.out.println("들어오냐?");
        //유저의 아이디를 삭제 (강제탈퇴) 시키기위해서 dto에 담는다.
        MemberDto dto = new MemberDto();
        dto.setMemberid(memberid);

        //회원탈퇴 체크를 하기위한 메소드, 탈퇴 시키려는 회원의 아이디가 있는지 검사한후에 result 변수에 저장한다.

        service.admin_member_foced_evictionCheck(dto);

        ModelAndView mav = new ModelAndView();

        if(dto.getMemberid() != null) {    //회원 강제탈퇴가 성공했을시 출력되는 뷰

            mav.setViewName("home");

            mav.addObject("message", "회원이 정상적으로 강제탈퇴 처리 되었습니다.");

        }else {

            mav.setViewName("admin/memberlist");

            mav.addObject("message", "회원 목록에 없는 회원입니다. 다시 확인해주세요.");
        }


        return mav;

    }

}
