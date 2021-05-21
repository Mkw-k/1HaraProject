package bit.com.a.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bit.com.a.dto.FAQDto;
import bit.com.a.service.FAQservice;
import bit.com.a.util.PdsUtil;


@Controller
public class FAQController {
	
	@Autowired
	FAQservice service;

	@RequestMapping(value = "FAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goFAQ() {	
	
		
		return "FAQ/FAQ";
	}
	
	@RequestMapping(value = "memberFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gomemberFAQ() {	
	
		
		return "FAQ/memberFAQ";
	}
	
	@RequestMapping(value = "companyFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gocompanyFAQ() {	
	
		
		return "FAQ/companyFAQ";
	}
	
	@RequestMapping(value = "commonFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gocommonFAQ() {	
	
		
		return "FAQ/commonFAQ";
	}
	
	@RequestMapping(value = "getmemberFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String getmemberFAQ(Model model) {	

		List<FAQDto> list = service.getmemberFAQ();
		
		model.addAttribute("memlist", list);
		
		return "FAQ/memberFAQ";
	}
	
	@RequestMapping(value = "writeFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeFAQ() {	
		
		return "FAQ/writeFAQ";
	}
	
	@RequestMapping(value = "writeAfFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
    public String writeAfFAQ(FAQDto dto, 
                        @RequestParam(value = "fileload", required = false)
                        MultipartFile fileload, 
                        HttpServletRequest req){
     
		System.out.println("fileload : " + fileload);
		System.out.println(dto.toString());
        // filename 취득
        String filename = fileload.getOriginalFilename();
        dto.setFilename(filename);    // 원본 파일명을 설정
        
        // upload 경로 설정
        // server(tomcat)
        String fupload = req.getServletContext().getRealPath("/upload");
        
        // 폴더
        // String fupload = "d:\\tmp";
        
        System.out.println("fupload:" + fupload);
        
        // 파일명 변경 처리
        String newfilename = PdsUtil.getNewFileName(dto.getFilename());        
        dto.setNewFilename(newfilename);
        
        File file = new File(fupload + "/" + newfilename); 
        
        try {
            // 실제로 업로드 되는 부분
            FileUtils.writeByteArrayToFile(file, fileload.getBytes());
            
            // db에 저장
            service.writeFAQ(dto);
            
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
      
		return "FAQ/FAQ";
	}
}
