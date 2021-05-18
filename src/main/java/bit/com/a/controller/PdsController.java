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

import bit.com.a.dto.PdsDto;
import bit.com.a.service.PdsService;
import bit.com.a.util.PdsUtil;

@Controller
public class PdsController {

	@Autowired
	PdsService service;
	
	
	@RequestMapping(value="pdslist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String getPdsList(Model model) {
		model.addAttribute("doc_title", "자료실");
		
		List<PdsDto>list = service.getPdsList();
		model.addAttribute("pdslist", list);
		
		return "pdslist.tiles";
	}
	@RequestMapping(value="pdswrite.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String pdswrite(Model model) {
		model.addAttribute("doc_title", "글올리기");
		return "pdswrite.tiles";
	}

	
	
	@RequestMapping(value = "pdsupload.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String pdsupload(PdsDto pdsdto, 
						@RequestParam(value = "fileload", required = false)
						MultipartFile fileload, 
						HttpServletRequest req) {
		
		System.out.println(pdsdto.toString());
		
		/*
		
		// filename 취득
		String filename = fileload.getOriginalFilename();
		pdsdto.setFilename(filename);	// 원본 파일명을 설정
		
	
		
		// upload 경로 설정
		// server(tomcat)
		String fupload = req.getServletContext().getRealPath("/upload");
		
		// 폴더
		// String fupload = "d:\\tmp";
		
		System.out.println("fupload:" + fupload);
		
		// 파일명 변경 처리
		String newfilename = PdsUtil.getNewFileName(pdsdto.getFilename());		
		pdsdto.setNewfilename(newfilename);
		
		File file = new File(fupload + "/" + newfilename); 
		
		try {
			// 실제로 업로드 되는 부분
			FileUtils.writeByteArrayToFile(file, fileload.getBytes());
			
			// db에 저장
			service.uploadPds(pdsdto);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		*/
		
		return "redirect:/pdslist.do";
	}
	
	@RequestMapping(value = "fileDownload.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String fileDownload(String newfilename, int seq, HttpServletRequest req, Model model) {
		
		// 경로
		// server
		String fupload = req.getServletContext().getRealPath("/upload");
		
		// 폴더
		// String fupload = "d:\\tmp";
		
		File downloadFile = new File(fupload + "/" + newfilename);
		
		model.addAttribute("downloadFile", downloadFile);
		model.addAttribute("seq", seq);
		
		return "downloadView";
		
	}
	
}
