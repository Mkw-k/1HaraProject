package bit.com.a.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;
import bit.com.a.dto.RecruitReplyDto;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.replyDto;
import bit.com.a.service.RecruitReplyService;
import bit.com.a.service.RecruitService;
import bit.com.a.service.ReplyService;
import bit.com.a.service.ResumeService;

@Controller
public class ReplyController {

	@Autowired
	ReplyService service;
	
	@Autowired
	RecruitReplyService recruitservice;

	
	
	@RequestMapping(value="replyinsert.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insert(@ModelAttribute replyDto dto, RedirectAttributes rttr) {
		service.readCount(dto.getReplyseq());
		service.insertreply(dto);
		rttr.addAttribute("jobtalkseq", dto.getJobtalkseq());
		return "redirect:/Jobtalkdetail.do";
	}
	
	@RequestMapping(value="insertreplyRecruit.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insert(@ModelAttribute RecruitReplyDto dto, RedirectAttributes rttr,  Model model) {
		
		System.out.println("insertreplyRecruit 1/5");
		
		service.readCount(dto.getReplyrecruitseq());
		
		System.out.println("insertreplyRecruit 2/5");
		
		System.out.println("seq ==" + dto.getJobSeq());
		
		System.out.println("insertreplyRecruit 3/5");
		
		//Write
		boolean b = recruitservice.insertreply(dto);
		
		System.out.println("insertreplyRecruit 4/5");
		
		
		System.out.println(b);
		
		System.out.println("멤버아이디 : " +dto.getMemberid());
		
		System.out.println("insertreplyRecruit 5/5");
		
		
    	//요기서 컨트롤러로 보낼때 파라미터를 설정해서 보내야 되는데 설정이 안됨
		//상대 컨트롤러 메서드에서 jobSeq와 memberid를 받아야함 
		rttr.addAttribute("jobSeq", dto.getJobSeq());
		rttr.addAttribute("memberid", dto.getMemberid());
		

		return "redirect:/RecruitDetail.do";
		
	}
	
	
	
	
}
