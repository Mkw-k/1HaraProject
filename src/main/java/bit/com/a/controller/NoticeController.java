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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import bit.com.a.dto.NoticeDto;
import bit.com.a.dto.NoticeParam;
import bit.com.a.service.NoticeService;
import bit.com.a.util.NoticeUtil;


@Controller
public class NoticeController {

	@Autowired
	NoticeService service;
	
	@RequestMapping(value = "notice.do", method = RequestMethod.GET)
	public String notice() {	
		return "notice/noticelist";
	}
	
	@ResponseBody
	@RequestMapping(value = "noticelistData.do", method = {RequestMethod.GET, RequestMethod.POST})
	public List<NoticeDto> NoticelistData(NoticeParam param, Model model) {		
		
		// paging 처리
		int sn = param.getPage();
		int start = sn * 10 + 1;	// 1 	11
		int end = (sn + 1) * 10; 	// 10   20
		
		param.setStart(start);
		param.setEnd(end);
				
		List<NoticeDto> list = service.getNoticelist(param);		
		model.addAttribute("noticelist", list);
		
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value = "noticelistCount.do", method = {RequestMethod.GET, RequestMethod.POST})
	public int noticelistCount(NoticeParam param) {
		int count = service.getNoticeCount(param);
		return count;
	}
	
	@RequestMapping(value = "noticewrite.do", method = RequestMethod.GET)
	public String noticewrite() {
		return "notice/noticewrite";
	}
	
	@RequestMapping(value = "noticeupload.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticewriteAf(NoticeDto dto, @RequestParam(value = "notice_fileload", required = false)
											   MultipartFile fileload,
											   HttpServletRequest req) {
		
		System.out.println("upload tostring :" + dto.toString() );
		System.out.println("fileload = " + fileload);
		
		// filename 취득
		String filename = fileload.getOriginalFilename();
		dto.setNotice_filename(filename); 	// 원본 파일명을 설정
		
		// upload 경로 설정
		// server(tomcat)
		String fupload = req.getServletContext().getRealPath("/upload");
		
		//폴더 
		// String fupload = "d:\\tmp";
		
		System.out.println("fupload:" + fupload);
		
		// 파일명 변경 처리
		String newfilename = NoticeUtil.getNewFileName(dto.getNotice_filename());
		dto.setNotice_newfilename(newfilename);
		
		File file = new File(fupload + "/" + newfilename);
		try {
			// 실제로 업로드 되는 부분
			FileUtils.writeByteArrayToFile(file, fileload.getBytes());
			
			// db에 저장
			service.uploadNotice(dto);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/notice.do";
	}
	
	@RequestMapping(value = "noticedetail.do", method = RequestMethod.GET)
	public String noticedetail() {
		return "notice/noticedetail";
	}
	
	
	
}
