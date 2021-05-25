package bit.com.a.controller;

import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.mybatis.logging.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	/*
	 //로깅을 위한 변수 
	 private static final Logger logger=
	 LoggerFactory.getLogger(MemberController.class);
	 */
    //private static final String String = null;
    
    
    // mailSending 코드
       /* @RequestMapping( value = "auth.do" , method=RequestMethod.POST )
        public ModelAndView mailSending(HttpServletRequest request, String e_mail, HttpServletResponse response_email) throws IOException {
 
            Random r = new Random();
            int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
            
            String setfrom = "dlgkstjq623@gamil.com";
            String tomail = request.getParameter("e_mail"); // 받는 사람 이메일
            String title = "회원가입 인증 이메일 입니다."; // 제목
            String content =
            
            System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
            
            System.getProperty("line.separator")+
                    
            "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
            
            +System.getProperty("line.separator")+
            
            System.getProperty("line.separator")+
    
            " 인증번호는 " +dice+ " 입니다. "
            
            +System.getProperty("line.separator")+
            
            System.getProperty("line.separator")+
            
            "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
            
            
            try {
                MimeMessage message = mailSender.createMimeMessage();
                MimeMessageHelper messageHelper = new MimeMessageHelper(message,
                        true, "UTF-8");
 
                messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
                messageHelper.setTo(tomail); // 받는사람 이메일
                messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
                messageHelper.setText(content); // 메일 내용
                
                mailSender.send(message);
            } catch (Exception e) {
                System.out.println(e);
            }
            
            ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
            mv.setViewName("/login/email_injeung");     //뷰의이름
            mv.addObject("dice", dice);
            
            System.out.println("mv : "+mv);
 
            response_email.setContentType("text/html; charset=UTF-8");
            PrintWriter out_email = response_email.getWriter();
            out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
            out_email.flush();
            
            
            return mv;
            
        }
    
    //이메일 인증 페이지 맵핑 메소드
    @RequestMapping("email.do")
    public String email() {
        return "login/memberRegi";
    }
    
    
    //이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드.
    //내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지 확인해서 맞으면 회원가입 페이지로 넘어가고,
    //틀리면 다시 원래 페이지로 돌아오는 메소드
    @RequestMapping(value = "join_injeung.do{dice}", method = RequestMethod.POST)
    public ModelAndView join_injeung(String email_injeung, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
 
        
        
        
        System.out.println("마지막 : email_injeung : "+email_injeung);
        
        System.out.println("마지막 : dice : "+dice);
        
        
        //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
         
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("join.do");
        
        mv.addObject("e_mail",email_injeung);
        
        if (email_injeung.equals(dice)) {
            
            //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
            
            
            
            mv.setViewName("login/join");
            
            mv.addObject("e_mail",email_injeung);
            
            //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
            //한번더 입력할 필요가 없게 한다.
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>");
            out_equals.flush();
    
            return mv;
            
            
        }else if (email_injeung != dice) {
            
            
            ModelAndView mv2 = new ModelAndView(); 
            
            mv2.setViewName("email_injeung");
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
            out_equals.flush();
            
    
            return mv2;
            
        }    
    
        return mv;
	
    }*/
 




	/*
	 //로깅을 위한 변수 
	 private static final Logger logger=
	 LoggerFactory.getLogger(MemberController.class);
	 */
    //private static final String String = null;


    // mailSending 코드
       /* @RequestMapping( value = "auth.do" , method=RequestMethod.POST )
        public ModelAndView mailSending(HttpServletRequest request, String e_mail, HttpServletResponse response_email) throws IOException {
 
            Random r = new Random();
            int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
            
            String setfrom = "dlgkstjq623@gamil.com";
            String tomail = request.getParameter("e_mail"); // 받는 사람 이메일
            String title = "회원가입 인증 이메일 입니다."; // 제목
            String content =
            
            System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
            
            System.getProperty("line.separator")+
                    
            "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
            
            +System.getProperty("line.separator")+
            
            System.getProperty("line.separator")+
    
            " 인증번호는 " +dice+ " 입니다. "
            
            +System.getProperty("line.separator")+
            
            System.getProperty("line.separator")+
            
            "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
            
            
            try {
                MimeMessage message = mailSender.createMimeMessage();
                MimeMessageHelper messageHelper = new MimeMessageHelper(message,
                        true, "UTF-8");
 
                messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
                messageHelper.setTo(tomail); // 받는사람 이메일
                messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
                messageHelper.setText(content); // 메일 내용
                
                mailSender.send(message);
            } catch (Exception e) {
                System.out.println(e);
            }
            
            ModelAndView mv = new ModelAndView();    //ModelAndView로 보낼 페이지를 지정하고, 보낼 값을 지정한다.
            mv.setViewName("/login/email_injeung");     //뷰의이름
            mv.addObject("dice", dice);
            
            System.out.println("mv : "+mv);
 
            response_email.setContentType("text/html; charset=UTF-8");
            PrintWriter out_email = response_email.getWriter();
            out_email.println("<script>alert('이메일이 발송되었습니다. 인증번호를 입력해주세요.');</script>");
            out_email.flush();
            
            
            return mv;
            
        }
    
    //이메일 인증 페이지 맵핑 메소드
    @RequestMapping("email.do")
    public String email() {
        return "login/memberRegi";
    }
    
    
    //이메일로 받은 인증번호를 입력하고 전송 버튼을 누르면 맵핑되는 메소드.
    //내가 입력한 인증번호와 메일로 입력한 인증번호가 맞는지 확인해서 맞으면 회원가입 페이지로 넘어가고,
    //틀리면 다시 원래 페이지로 돌아오는 메소드
    @RequestMapping(value = "join_injeung.do{dice}", method = RequestMethod.POST)
    public ModelAndView join_injeung(String email_injeung, @PathVariable String dice, HttpServletResponse response_equals) throws IOException {
 
        
        
        
        System.out.println("마지막 : email_injeung : "+email_injeung);
        
        System.out.println("마지막 : dice : "+dice);
        
        
        //페이지이동과 자료를 동시에 하기위해 ModelAndView를 사용해서 이동할 페이지와 자료를 담음
         
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("join.do");
        
        mv.addObject("e_mail",email_injeung);
        
        if (email_injeung.equals(dice)) {
            
            //인증번호가 일치할 경우 인증번호가 맞다는 창을 출력하고 회원가입창으로 이동함
            
            
            
            mv.setViewName("login/join");
            
            mv.addObject("e_mail",email_injeung);
            
            //만약 인증번호가 같다면 이메일을 회원가입 페이지로 같이 넘겨서 이메일을
            //한번더 입력할 필요가 없게 한다.
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하였습니다. 회원가입창으로 이동합니다.');</script>");
            out_equals.flush();
    
            return mv;
            
            
        }else if (email_injeung != dice) {
            
            
            ModelAndView mv2 = new ModelAndView(); 
            
            mv2.setViewName("email_injeung");
            
            response_equals.setContentType("text/html; charset=UTF-8");
            PrintWriter out_equals = response_equals.getWriter();
            out_equals.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); history.go(-1);</script>");
            out_equals.flush();
            
    
            return mv2;
            
        }    
    
        return mv;
	
    }*/
}    
