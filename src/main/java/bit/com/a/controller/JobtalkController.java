/*
package bit.com.a.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.NoticeDto;
import bit.com.a.dto.NoticeParam;
import bit.com.a.service.JobtalkService;
import bit.com.a.service.NoticeService;

@Controller
public class JobtalkController {
	
	@Autowired
	JobtalkService service;

	@RequestMapping(value = "notice.do", method = RequestMethod.GET)
	public String notice(NoticeParam param, Model model) {
		//System.out.println("제목 : " + dto.getTitle() );
		// paging 처리
		int sn = param.getPage();
		int start = sn * 10 + 1;	// 1 	11
		int end = (sn + 1) * 10; 	// 10   20
		
		param.setStart(start);
		param.setEnd(end);
		List<NoticeDto> list = service.getJobtalklist(param);		
		model.addAttribute("noticelist", list);
		
		return "notice/noticelist";
	}
	
}
*/