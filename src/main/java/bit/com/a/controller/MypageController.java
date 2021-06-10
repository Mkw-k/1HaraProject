package bit.com.a.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bit.com.a.dto.MemberDto;
import bit.com.a.service.MypageService;
import bit.com.a.util.PdsUtil;

@Controller
public class MypageController {

   @Autowired

   MypageService service;
   
   /*마이페이지*/
   @RequestMapping(value = "mypage.do", method = RequestMethod.GET)
   public String mypage() throws Exception {

      return "mypage";

   }
   
   /* 회원정보수정페이지*/
   
   @RequestMapping(value = "mypageUpdate.do", method = RequestMethod.GET)
   public String mypageUpdate() throws Exception {

      return "mypageUpdate";
   }
   
   @RequestMapping(value = "mypageUpdateAf.do", method = {RequestMethod.GET,RequestMethod.POST})
   public String mypageUpdateAf(MemberDto dto, @RequestParam(value = "fileload", required = false) MultipartFile fileload,
			HttpServletRequest req) throws Exception {
      
	  System.out.println("memberupdate:" + dto.toString());
	  
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
			 service.updateMypage(dto);
			 return "mypage";
      
	  }catch(IOException e) {
		  e.printStackTrace();
		  System.out.println("가입되지않았습니다" + new Date());
	  }
      
      System.out.println(dto.toString());
      return "mypage";
  
      
   }

   /*
    * @RequestMapping(value = "mypageupdate.do", method = RequestMethod.GET) public
    * String mypageupdate(HttpSession session, Model model) throws Exception {
    * 
    * model.Attributes("MemberDto", service.getMypage(dto))
    * 
    * 
    * }
    */

}