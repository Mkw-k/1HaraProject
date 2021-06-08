package bit.com.a.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bit.com.a.dto.replyDto;
import bit.com.a.service.ReplyService;

@Controller
public class ReplyController {

	@Autowired
	ReplyService service;
	
	@RequestMapping(value="replyinsert.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insert(@ModelAttribute replyDto dto, RedirectAttributes rttr) {
		service.readCount(dto.getReplyseq());
		service.insertreply(dto);
		rttr.addAttribute("jobtalkseq", dto.getJobtalkseq());
		return "redirect:/Jobtalkdetail.do";
	}
	
	
}
