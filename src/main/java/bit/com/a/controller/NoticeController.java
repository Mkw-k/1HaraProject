package bit.com.a.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import bit.com.a.dto.NoticeDto;
import bit.com.a.dto.NoticeParam;
import bit.com.a.service.NoticeService;

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
	
	@RequestMapping(value = "noticewriteAf.do", method = RequestMethod.GET)
	public String noticewriteAf() {
		return "notice/noticewrite";
	}
	
	@RequestMapping(value = "noticedetail.do", method = RequestMethod.GET)
	public String noticedetail() {
		return "notice/noticedetail";
	}
	
	
	
}
