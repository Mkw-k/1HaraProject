package bit.com.a.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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

import bit.com.a.dto.ApplyDto;
import bit.com.a.dto.ApplyParam;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.CompanyDto;
import bit.com.a.dto.PdsDto;
import bit.com.a.dto.RecruitDto;
import bit.com.a.service.BuspageService;
import bit.com.a.util.PdsUtil;

@Controller
public class BuspageController {

	
	@Autowired
	
	BuspageService service;
	
	
	@RequestMapping(value = "pwdcheck.do", method = RequestMethod.GET)
	public String pwdcheck(){
	
		return "busMypage/pwdcheck";
		
	}
	
	
	/*마이페이지*/
	@RequestMapping(value = "buspage.do", method = RequestMethod.GET)
	public String buspage(Model model, BusinessDto dto){
	
	dto = service.getbuspage(dto);
	model.addAttribute("business", dto);
		
	return "busMypage/buspage2";	
	
	}
	
	 /* 회원정보수정페이지*/
	
	@RequestMapping(value = "buspageUpdate.do", method = RequestMethod.GET)
	public String buspageUpdate(Model model, BusinessDto dto) {
		System.out.println("memberid="+dto.getMemberid());
		dto = service.getbuspage(dto);
		model.addAttribute("business", dto);
		return "busMypage/buspageupdate2";
	}
	
	
	@RequestMapping(value = "buspageUpdateAf.do", method = RequestMethod.GET)
	public String buspageUpdateAf( BusinessDto dto, 
								   String filename,	// 기존의 파일 명,
								   HttpServletRequest req,
								   @RequestParam(value = "fileload", required = false)MultipartFile fileload) {

		System.out.println("fileload" + fileload);
		System.out.println(dto.toString());
		dto.setFilename(fileload.getOriginalFilename());
		
		// 파일 경로
		String fupload = req.getServletContext().getRealPath("/upload");
		
		
		// 수정할 파일이 있음
		if(dto.getFilename() != null && !dto.getFilename().equals("")) {
			System.out.println("성");
			String f = dto.getFilename();
			String newfilename = PdsUtil.getNewFileName(f);
			
			dto.setFilename(f);
			dto.setNewfilename(newfilename);
			
			File file = new File(fupload + "/" + newfilename);			
			System.out.println(newfilename);
			try {
				// 실제 업로드
				FileUtils.writeByteArrayToFile(file, fileload.getBytes());
				
				// db 경신
				service.updateBuspage(dto);		
				
			} catch (IOException e) {				
				e.printStackTrace();
			}			
		}
		else {	// 수정할 파일 없음
			System.out.println("fall");
			// 기존의 파일명으로 설정
			dto.setFilename(filename);
			
			// DB
			service.updateBuspage(dto);	
		}
	/*					
		boolean b = service.updateBuspage(dto);
		if(b) {
			System.out.println("업데이트 성공");
		}else {
			System.out.println("업데이트 실패");
		}
		
		*/
		return "busMypage/buspage";
	}
	
	// 기업 마이페이지 공고현황 이동
	@RequestMapping(value = "myRecruitList.do", method = RequestMethod.GET)
	public String myRecruitList(Model model, String memberid) {
		
		List<RecruitDto> mylist = service.getMyrecruitList(memberid);
		
		model.addAttribute("mylist", mylist);

		return "busMypage/myrecruitList";
	}
	
	// 기업 마이페이지 공고현황 이동
	@RequestMapping(value = "goApplylist.do", method = RequestMethod.GET)
	public String goApplylist(Model model, int jobseq) {
		
		List<ApplyParam> applylist = service.getApplylist(jobseq);
		
		model.addAttribute("applylist", applylist);

		return "busMypage/applylist";
	}
	
	
}
