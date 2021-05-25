package bit.com.a.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String notice(NoticeParam param, Model model) {
		//System.out.println("제목 : " + dto.getTitle() );
		// paging 처리
		int sn = param.getPage();
		int start = sn * 10 + 1;	// 1 	11
		int end = (sn + 1) * 10; 	// 10   20
		
		param.setStart(start);
		param.setEnd(end);
		List<NoticeDto> list = service.getNoticelist(param);		
		model.addAttribute("noticelist", list);
		
		return "notice/noticelist";
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "noticelistData.do", method = {RequestMethod.GET,
	 * RequestMethod.POST}) public List<NoticeDto> NoticelistData(NoticeParam param,
	 * Model model) { NoticeDto dto = new NoticeDto(); System.out.println("제목 : " +
	 * dto.getTitle() ); // paging 처리 int sn = param.getPage(); int start = sn * 10
	 * + 1; // 1 11 int end = (sn + 1) * 10; // 10 20
	 * 
	 * param.setStart(start); param.setEnd(end);
	 * 
	 * List<NoticeDto> list = service.getNoticelist(param);
	 * model.addAttribute("noticelist", list);
	 * 
	 * return list; }
	 */
	
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
	public String noticewriteAf(NoticeDto dto, @RequestParam(value = "fileload", required = false)
											   MultipartFile fileload,
											   HttpServletRequest req) {
		
		System.out.println("upload tostring :" + dto.toString() );
		System.out.println("fileload = " + fileload);
		
		// filename 취득
		String filename = fileload.getOriginalFilename();
		dto.setFilename(filename); 	// 원본 파일명을 설정
		
		// upload 경로 설정
		// server(tomcat)
		String fupload = req.getServletContext().getRealPath("/upload");

		
		//폴더 
		// String fupload = "d:\\tmp";
		
		System.out.println("fupload:" + fupload);
		
		// 파일명 변경 처리
		String newfilename = NoticeUtil.getNewFileName(dto.getFilename());
		dto.setNewfilename(newfilename);
		
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
	public String noticedetail(int seq, Model model) {
		System.out.println("씨발 쫌 들어와라");
		System.out.println(seq);
		NoticeDto noticedto = service.getNotice(seq);
		System.out.println("값들어옴:" + noticedto.toString());
		model.addAttribute("notice", noticedto);
		
		return "notice/noticedetail";
	}
	
	@RequestMapping(value = "noticeupdate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeupdate(int seq, Model model) {
		NoticeDto  noticedto = service.getNotice(seq);
		model.addAttribute("notice", noticedto);
		
		return "notice/noticeupdate";
	
	}
	
	@RequestMapping(value = "noticeupdateAf.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeupdateAf ( NoticeDto noticedto, 
									String namefile,
									HttpServletRequest req,
									@RequestParam(value = "fileload", required = false)MultipartFile fileload) {
					
					System.out.println("fileload =" + fileload);
					System.out.println("af=" + noticedto.toString());
					noticedto.setFilename(fileload.getOriginalFilename());
					
					// 파일 경로
					String fupload = req.getServletContext().getRealPath("/upload");
					System.out.println("경로:" +fupload);
					
					
					// 수정할 파일이 있음
					if(noticedto.getFilename() != null && !noticedto.getFilename().equals("")) {
						
						System.out.println("성공");
						String f = noticedto.getFilename();
						String newfilename = NoticeUtil.getNewFileName(f);
						
						File file = new File(fupload + "/" + newfilename);
						
						System.out.println("파일들어옴?:" + newfilename);
						try {
							// 실제 업로드
							FileUtils.writeByteArrayToFile(file, fileload.getBytes());
						
							noticedto.setNewfilename(newfilename);
							
							// db 갱신
							System.out.println("dto:"+noticedto.toString());
							service.updateNotice(noticedto);
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
					else {	// 수정할 파일 없음
						System.out.println("실패");
						
						// 기존의 파일명으로 설정
						noticedto.getFilename();
						
						// db 갱신
						service.updateNotice(noticedto);
					}
				
					return "redirect:/notice.do";
				}
	
	
	@RequestMapping(value = "noticefileDownload.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String fileDownload(String newfilename, String filename, int seq, HttpServletRequest req, Model model) {
		
		System.out.println("다운로드 = " + newfilename);
		System.out.println(seq);
		//경로
		String fupload = req.getServletContext().getRealPath("/upload");
		
		File downloadFile = new File(fupload + "/" + newfilename);
		
		model.addAttribute("downloadFile", downloadFile);
		model.addAttribute("originalFile", filename);
		model.addAttribute("seq", seq);
		
		return "downloadView";
		
	}
	@RequestMapping(value="noticedelete.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticedelete(int seq, Model model) {
		System.out.println("번호=" + seq);
		service.deleteNotice(seq);
		return "redirect:/notice.do";
	}
	
	
	
	
	
}
