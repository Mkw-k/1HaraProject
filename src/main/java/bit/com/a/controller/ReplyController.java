package bit.com.a.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bit.com.a.dto.replyDto;
import bit.com.a.service.ReplyService;

@Controller
public class ReplyController {

	@Autowired
	ReplyService service;
	
	@RequestMapping(value="replyinsert.do", method = {RequestMethod.GET, RequestMethod.POST})
	public void insert(@ModelAttribute replyDto dto, HttpSession session, int replyseq) {
		String memberid = (String) session.getAttribute("login");
		dto.setMemberid(memberid);
		service.readCount(replyseq);
	}
	
	@RequestMapping(value="list.do",  method = {RequestMethod.GET, RequestMethod.POST}) 
	public ModelAndView list(@RequestParam int jobtalkseq, ModelAndView mav) {
		List<replyDto> list = service.list(jobtalkseq);
		
		// 뷰이름 지정
		mav.setViewName("jobtalk/jobtalklist");
	
		// 뷰에 전달한 데이터 지정
		mav.addObject("list", list);
		
		return mav;
	}
	
	
}
