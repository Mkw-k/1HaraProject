package bit.com.a.controller;


import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityDto;
import bit.com.a.dto.Resume_AwardDto;
import bit.com.a.dto.Resume_CareerDto;
import bit.com.a.dto.Resume_EduDto;
import bit.com.a.dto.Resume_LanguageDto;
import bit.com.a.dto.Resume_LicenseDto;
import bit.com.a.service.ResumeService;
import bit.com.a.util.PdsUtil;


@Controller
public class ResumeController {
	
	
	@Autowired 
	ResumeService service;
	 

	@RequestMapping(value = "resumeMain.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goResumeMain() {	
	
		return "resume/resumeMain";
	}
	
	@RequestMapping(value = "writeResume.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeResume() {	
	
		return "resume/writeResume";
	}
	
	@RequestMapping(value = "writeAfResume.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String writeAfResume(ResumeDto dto, Resume_EduDto[] edulist, Resume_CareerDto[] careerlist, Resume_LicenseDto[] liclist, Resume_ActivityDto[] actlist,
								Resume_AwardDto[] awardlist, Resume_LanguageDto[] lanlist, 
								@RequestParam(value = "fileload", required = false)
							    MultipartFile fileload, 
							    @RequestParam(value = "fileload2", required = false)
							    MultipartFile fileload2,
							    HttpServletRequest req, Model model) {	
	
		System.out.println("7777777777777777777777777777777777 start");
		System.out.println("컨트롤 넘어온 자소서제목 =" + dto.getResume_intro_title());
		System.out.println("컨트롤 넘어온 주소 =" + dto.getDesiredjob1());
		System.out.println("7777777777777777777777777777777777 end");
		
		System.out.println("fileload : " + fileload);
		System.out.println("fileload2 : " + fileload);
		System.out.println(dto.toString());
		
		if(!fileload.isEmpty() && !fileload2.isEmpty()) {
			System.out.println("안비었다");
        // filename 취득
        String filename = fileload.getOriginalFilename();
        String filename2 = fileload2.getOriginalFilename();
        
        dto.setResumeimage(filename);    // 원본 파일명을 설정
        dto.setPortfolio(filename2);
        
        // upload 경로 설정
        // server(tomcat)
        String fupload = req.getServletContext().getRealPath("/upload");
        
        // 폴더
        // String fupload = "d:\\tmp";
        
        System.out.println("fupload:" + fupload);
        System.out.println(dto.getResumeimage());
        System.out.println(dto.getPortfolio());
        // 파일명 변경 처리
        String newfilename = PdsUtil.getNewFileName(dto.getResumeimage());        
        String newfilename2 = PdsUtil.getNewFileName(dto.getPortfolio()); 
      
        dto.setNewresumeimage(newfilename);
        dto.setNewportfolio(newfilename2);
        
        File file = new File(fupload + "/" + newfilename); 
        
        try {
            // 실제로 업로드 되는 부분
            FileUtils.writeByteArrayToFile(file, fileload.getBytes());
            
            //넘어온 데이터 haspmap에 저장
            Map<String, Object> param = new HashMap<String, Object>();
            param.put("dto", dto);
            param.put("edulist", edulist);
            param.put("careerlist", careerlist);
            param.put("liclist", liclist);
            param.put("actlist", actlist);
            param.put("awardlist", awardlist);
            param.put("awardlist", lanlist);
            // db에 저장
            service.writeResume(param);
            
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
		}
		
		else {
			dto.setResumeimage("");
			dto.setPortfolio("");
			
			dto.setNewresumeimage("");
			dto.setNewportfolio("");
			
			Map<String, Object> param = new HashMap<String, Object>();
            param.put("dto", dto);
            param.put("edulist", edulist);
            param.put("careerlist", careerlist);
            param.put("liclist", liclist);
            param.put("actlist", actlist);
            param.put("awardlist", awardlist);
            param.put("awardlist", lanlist);
			
			System.out.println("비었다");
			service.writeResume(param);
		}
		
		return "resume/resumeMain";
	}
	
	
}
