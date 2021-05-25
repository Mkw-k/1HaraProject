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
	public String goFAQ(Model model) {	
	
		List<FAQDto> mem = service.getmemberFAQ();
		List<FAQDto> company = service.getcompanyFAQ();
		List<FAQDto> common = service.getcommonFAQ();
		
		model.addAttribute("memlist", mem);
		model.addAttribute("companylist", company);
		model.addAttribute("commonlist", common);
		
		return "FAQ/FAQ";
	}
	
	@RequestMapping(value = "memberFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gomemberFAQ(Model model) {	
	
		List<FAQDto> mem = service.getmemberFAQ();
		
		model.addAttribute("memlist", mem);
		
		return "FAQ/memberFAQ";
	}
	
	@RequestMapping(value = "companyFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gocompanyFAQ(Model model) {	
	
		List<FAQDto> company = service.getcompanyFAQ();
		
		model.addAttribute("companylist", company);
		
		return "FAQ/companyFAQ";
	}
	
	@RequestMapping(value = "commonFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gocommonFAQ(Model model) {	
		
		List<FAQDto> common = service.getcommonFAQ();
		
		model.addAttribute("commonlist", common);
		
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
                        HttpServletRequest req, Model model){
		
		System.out.println("fileload : " + fileload);
		System.out.println(dto.toString());
		
		if(!fileload.isEmpty()) {
			System.out.println("안비었다");
        // filename 취득
        String filename = fileload.getOriginalFilename();
        dto.setFilename(filename);    // 원본 파일명을 설정
        
        // upload 경로 설정
        // server(tomcat)
        String fupload = req.getServletContext().getRealPath("/upload");
        
        // 폴더
        // String fupload = "d:\\tmp";
        
        System.out.println("fupload:" + fupload);
        System.out.println(dto.getFilename());
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
        
		}
		
		else {
			dto.setFilename("");
			dto.setNewFilename("");
			System.out.println("비었다");
			service.writeFAQ(dto);
		}
        
        List<FAQDto> mem = service.getmemberFAQ();
		List<FAQDto> company = service.getcompanyFAQ();
		List<FAQDto> common = service.getcommonFAQ();
		
		model.addAttribute("memlist", mem);
		model.addAttribute("companylist", company);
		model.addAttribute("commonlist", common);
        
      
		return "FAQ/FAQ";
	}
	
	@RequestMapping(value = "FAQdetail.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String FAQdetail(Model model, int seq) {	

		FAQDto dto = service.getFAQ(seq);
		System.out.println(dto.toString());
		model.addAttribute("dto", dto);
		
		return "FAQ/FAQdetail";
	}
	
	@RequestMapping(value = "updateFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateFAQ(Model model, int seq) {	
		System.out.println("여기는 업데이트");
		FAQDto dto = service.getFAQ(seq);
		System.out.println(dto.toString());
		model.addAttribute("dto", dto);
		
		return "FAQ/updateFAQ";
	}
	
	@RequestMapping(value = "updateAfFAQ.do", method= {RequestMethod.GET, RequestMethod.POST})
    public String updateAfFAQ(  FAQDto dto, 
                                String namefile,    // 기존의 파일 명,
                                HttpServletRequest req,
                                @RequestParam(value = "fileload", required = false) MultipartFile fileload, Model model) {
		System.out.println("여기들어옴");
		System.out.println(dto.toString());
        dto.setFilename(fileload.getOriginalFilename());
        
        if(!fileload.isEmpty()) {
        // 파일 경로
        String fupload = req.getServletContext().getRealPath("/upload");
        
        // 수정할 파일이 있음
        if(dto.getFilename() != null && !dto.getFilename().equals("")) {
            
            String f = dto.getFilename();
            String newfilename = PdsUtil.getNewFileName(f);
            
            dto.setFilename(f);
            dto.setNewFilename(newfilename);
            
            File file = new File(fupload + "/" + newfilename);            
            
            try {
                // 실제 업로드
                FileUtils.writeByteArrayToFile(file, fileload.getBytes());
                
                // db 경신
                service.updateFAQ(dto);
                System.out.println("파일이 있다");
                
            } catch (IOException e) {                
                e.printStackTrace();
            }            
        }
        else {    // 수정할 파일 없음
            
            // 기존의 파일명으로 설정
            dto.setFilename(namefile);
            System.out.println("파일이 없다");
            // DB
            service.updateFAQ(dto); 
            
        }
        }
        else {
			dto.setFilename("");
			dto.setNewFilename("");
			System.out.println("비었다");
			System.out.println("dto question"+dto.getQuestion());
			service.updateFAQ(dto);
		}
        
        List<FAQDto> mem = service.getmemberFAQ();
		List<FAQDto> company = service.getcompanyFAQ();
		List<FAQDto> common = service.getcommonFAQ();
		
		model.addAttribute("memlist", mem);
		model.addAttribute("companylist", company);
		model.addAttribute("commonlist", common);

        
        return "FAQ/FAQ";
    }
	
	@RequestMapping(value = "deleteFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteFAQ(int seq, Model model) {	

		boolean b = service.deleteFAQ(seq);
		
		System.out.println(b);
		
		List<FAQDto> mem = service.getmemberFAQ();
		List<FAQDto> company = service.getcompanyFAQ();
		List<FAQDto> common = service.getcommonFAQ();
		
		model.addAttribute("memlist", mem);
		model.addAttribute("companylist", company);
		model.addAttribute("commonlist", common);

		
		return "FAQ/FAQ";
	}
	
	@RequestMapping(value = "searchFAQ.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String searchFAQ(Model model, String search) {	
		System.out.println("써치에 들어옴");
		System.out.println("search"+search);
		
		 List<FAQDto> searchlist = service.getsearchFAQ(search);
		 
		 model.addAttribute("searchlist", searchlist);
		
		return "FAQ/searchFAQ";
	}
	
	 @RequestMapping(value = "FAQfileDownload.do", method = {RequestMethod.GET, RequestMethod.POST})
	    public String fileDownload(String newfilename, String filename, int faqseq, HttpServletRequest req, Model model) {
	        
	        // 경로
	        // server
	        String fupload = req.getServletContext().getRealPath("/upload");
	        
	        // 폴더
	    //    String fupload = "d:\\tmp";
	        
	        File downloadFile = new File(fupload + "/" + newfilename);
	        
	        model.addAttribute("downloadFile", downloadFile);
	        model.addAttribute("originalFile", filename);
	        model.addAttribute("faqseq", faqseq);
	        
	        return "FAQdownloadView";
	    }
}
