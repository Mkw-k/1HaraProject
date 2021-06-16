package bit.com.a.controller;

import java.util.List;

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
	
	 @Autowired
	ResumeService resumeservice;
	 
	 @Autowired
	RecruitService service1;
	
	
	@RequestMapping(value="replyinsert.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insert(@ModelAttribute replyDto dto, RedirectAttributes rttr) {
		service.readCount(dto.getReplyseq());
		service.insertreply(dto);
		rttr.addAttribute("jobtalkseq", dto.getJobtalkseq());
		return "redirect:/Jobtalkdetail.do";
	}
	
	@RequestMapping(value="insertreplyRecruit.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String insert(@ModelAttribute RecruitReplyDto dto, RedirectAttributes rttr,  Model model) {
		service.readCount(dto.getReplyrecruitseq());
		boolean b = recruitservice.insertreply(dto);
		System.out.println(b);
		rttr.addAttribute("jobseq", dto.getJobSeq());
		
		System.out.println("멤버아이디 : " +dto.getMemberid());
		
		 //디테일 데이터 받아오기
	      System.out.println("seq:"+dto.getJobSeq());
	      RecruitDto recruitdto = service1.getRecruitListOne(dto.getJobSeq());
	      List<ResumeDto> resumelist = resumeservice.getresume(dto.getMemberid());

	      System.out.println(recruitdto.toString());

	      //직무이름 받아오는 코드
	      List<String> list = service1.getBsnameForDetail(dto.getJobSeq());
	      System.out.println("직무이름 :"+ list.toString());

	      recruitdto.setBusname(list);

	      //검색용 파라미터 dto설정
	      RecruitParam param = new RecruitParam();
	      String jobSeq = dto.getJobSeq() + "";
	      param.setJobSeq(jobSeq);
	      param.setMemberid(dto.getMemberid());

	      //즐겨찾기 받아오기 (즐겨찾기 여부확인 코드 0보다 크면 이미 즐겨찾기 되있는거)
	      int IjobFavoriteCount = service1.getJobFavorite(param);
	      String jobFavoriteCount = IjobFavoriteCount + "";

	      recruitdto.setFavoriteJob(jobFavoriteCount);


	      //검색용 파라미터 dto설정
	      param.setCompanyId(recruitdto.getCompanyId());
	      param.setMemberid(dto.getMemberid());

	      //즐겨찾기 받아오기 (즐겨찾기 여부확인 코드 0보다 크면 이미 즐겨찾기 되있는거)
	      int IcomFavoriteCount = service1.getComFavorite(param);
	      String comFavoriteCount = IcomFavoriteCount + "";

	      recruitdto.setFavoriteCom(comFavoriteCount);

	      System.out.println("변경된 Dto :"+dto.toString());

	      model.addAttribute("dto", recruitdto);
	      model.addAttribute("resumelist", resumelist);
	      
	      
	      
	      List<RecruitReplyDto> replylist = recruitservice.list(dto.getJobSeq());
	      model.addAttribute("replylist", replylist);
	
		
		
		return "redirect:/RecruitDetail.do";
		
	}
	
}
