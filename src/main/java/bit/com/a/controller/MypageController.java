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
			String filename, HttpServletRequest req) throws Exception {
	  
	  System.out.println("fileload" + fileload);
	  System.out.println("memberupdate:" + dto.toString());
	  dto.setUserpic(fileload.getOriginalFilename());
	  
	// 파일 경로
	  String fupload = req.getServletContext().getRealPath("/upload");
	
	// 수정할 파일이 있음
	if(dto.getUserpic() != null && !dto.getUserpic().equals("")) {
		System.out.println("있음?");
		String f = dto.getUserpic();
		String newfilename = PdsUtil.getNewFileName(f);
		dto.setUserpic(f);
		dto.setNewuserpic(newfilename);  
		File file = new File(fupload + "/" + newfilename);	
		System.out.println(newfilename);
		try {
			// 실제 업로드
			FileUtils.writeByteArrayToFile(file, fileload.getBytes());
		
			// db 갱신
			service.updateMypage(dto);
		
		} catch(IOException e) {
			e.printStackTrace();
		}
		
	}
	else {
		System.out.println("fail");
		dto.setUserpic(filename);
		
		service.updateMypage(dto);
	}
	  
	return "redirect:/mypage.do";	  
      
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