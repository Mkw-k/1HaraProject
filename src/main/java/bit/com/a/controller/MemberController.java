package bit.com.a.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.mybatis.logging.LoggerFactory;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bit.com.a.dto.MemberDto;
import bit.com.a.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	//@Inject    //서비스를 호출하기 위해서 의존성을 주입
	MemberService service;

	//JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.


	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(Model model, MemberDto mem) {
		model.addAttribute("mem", mem);
		return "home";
	}


	@RequestMapping(value = "kokolog.do", method = RequestMethod.GET)
	public String kokolog(Model model, MemberDto mem) {
		model.addAttribute("mem", mem);
		return "login/kokolog";
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
		}else {
			msg = "NO";
		}

		return msg;
	}

	@RequestMapping(value = "regiAf.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String regiAf(MemberDto dto) {

		System.out.println("addmember:" + dto.toString());


		 boolean b = service.addmember(dto);
		 if(b) { System.out.println("회원 가입되었습니다 " + new Date());
		 return "home";
		 }
		 System.out.println("가입되지 않았습니다 " + new Date());
		 return "login/memberRegi";


	}


	@RequestMapping(value = "loginAf.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String loginAf(MemberDto dto, HttpServletRequest req) {

		System.out.println("씨발 쫌 들어와라");

		MemberDto login = service.login(dto);
		if(login != null && !login.getMemberid().equals("")) {

			req.getSession().setAttribute("login", login);
		//	req.getSession().setMaxInactiveInterval(60 * 60 * 24);

			return "redirect:/home.do";
		}
		else {
			return "redirect:/login.do";
		}
	}
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
	       set.put("to",(String)request.getParameter("to")); // 수신번호
	       set.put("from", "01059559878"); // 발신번호
	       set.put("text", "안녕하세요 인증번호는 ["+(String)request.getParameter("text")+"]입니다"); // 문자내용
	       set.put("type", "sms"); // 문자 타입

	       System.out.println(set);

	       JSONObject result = coolsms.send(set); // 보내기&전송결과받기

	       if ((boolean)result.get("status") == true) {
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



	@RequestMapping(value = "/", method = {RequestMethod.GET,RequestMethod.POST})
		/**
		 * Simply selects the home view to render by returning its name.
		 */
		public String home(Locale locale, Model model) {
			System.out.println("카카오 들어옴");

			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

			String formattedDate = dateFormat.format(date);

			model.addAttribute("serverTime", formattedDate );

			return "home";

	}

	@RequestMapping("/sample10")
    public String loginkakao(@RequestParam(value = "code", required = false) String code) throws Exception{
        System.out.println("loginkakao#########" + code);
        return "login/login";
    }


}
