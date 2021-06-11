package bit.com.a.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.MemberDto;
import bit.com.a.service.BusinessService;
import bit.com.a.util.PdsUtil;

@Controller
public class BusinessController {

	@Autowired
	BusinessService service;
	
	
	@RequestMapping(value = "businessRegi.do", method=RequestMethod.GET)
	public String BusinessRegi() {
		return "login/businessRegi";
	}
	
	@ResponseBody
	@RequestMapping(value = "businessgetId.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String getId(BusinessDto bus) {	
		System.out.println("getId bus = " + bus.toString());
		int count = service.getId(bus);
		String msg = "";
		
		if(count == 0) {
			msg = "YES";
		}else {
			msg = "NO";
		}
		
		return msg;
	}
	
	@RequestMapping(value = "businessregiAf.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String regiAf(BusinessDto dto, @RequestParam(value = "fileload", required = false) 
    MultipartFile fileload,
    HttpServletRequest req) {		

		System.out.println("fileload:" + fileload);

		 //filename 취득 
	      String filename = fileload.getOriginalFilename();
	      dto.setFilename(filename);   //원본 파일명을 설정 
	      
	      //upload 경로 설정 
	      //server(tomcat) 
	      //String fupload = req.getServletContext().getRealPath("/upload");
	      String fupload = req.getServletContext().getRealPath("/upload");
	      
	      
	      //폴더에 올리는 법 
	      //String fupload = "d:\\tmp";
	      
	      System.out.println("fupload:"+fupload);
	      
	      String newfilename = PdsUtil.getNewFileName(dto.getFilename());
	      
	      dto.setNewfilename(newfilename);
	      
	      File file = new File(fupload + "/" + newfilename);

	      try {
	    	  FileUtils.writeByteArrayToFile(file, fileload.getBytes());
	    	
	    	  boolean b = service.addmember(dto); 
	    	  if(b) { 
	    		  	System.out.println("회원 가입되었습니다 " + new Date()); 
	 		 		
	    	  			return "home"; 
	    	  		} 
	      } catch (IOException e) {
	    	  	
	    	  System.out.println("가입되지 않았습니다 " + new Date());	      
	      }
	      return "login/businessRegi";

	}
	
	@ResponseBody
	@RequestMapping(value = "businesssendSms.do", method = RequestMethod.POST)

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
	
	
	
	@RequestMapping(value = "businessloginAf.do", method = {RequestMethod.GET,RequestMethod.POST}) 
	public String loginAf(BusinessDto dto, HttpServletRequest req) {
	  
	  System.out.println("씨발 쫌 들어와라");

	  BusinessDto login = service.login(dto); 
	  if(login != null && !login.getMemberid().equals("")) {
		  System.out.println("login id="+login.getMemberid());
		  req.getSession().setAttribute("login", login); 
		  // req.getSession().setMaxInactiveInterval(60 * 60 * 24);
	  
		  return "redirect:/home.do";
	  
	  }else { 
		  return "redirect:/login.do"; 
	  	} 
	}
	
	@RequestMapping(value = "businessDelete.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String businessDelete(BusinessDto bus, HttpSession session, RedirectAttributes rttr) throws Exception {
		return "business/businessDelete";
	}
	
	@RequestMapping(value = "businessDeleteAf.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String businessDeleteAf(BusinessDto dto, HttpSession session, RedirectAttributes rttr) throws Exception{
		//business변수 가져옴
		BusinessDto bus = (BusinessDto) session.getAttribute("login");
		System.out.println("비번: " + bus.getPwd());
		// 세션에 있는 비밀번호
		String sessionPass = bus.getPwd();
		
		// dto로 들어오는 비밀번호 
		String dtopass = dto.getPwd();
		
		if(!(sessionPass.equals(dtopass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:businessDelete.do";
		}
		service.businessDelete(dto);
		session.invalidate();
		return "home";
		
		
		
	}
	
}
