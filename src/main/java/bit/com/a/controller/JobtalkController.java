
  package bit.com.a.controller;
 
  import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;
 
  import org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.stereotype.Controller; import
  org.springframework.ui.Model; import
  org.springframework.web.bind.annotation.RequestMapping; import
  org.springframework.web.bind.annotation.RequestMethod; import
  org.springframework.web.bind.annotation.ResponseBody; import
  bit.com.a.dto.JobtalkDto; import bit.com.a.dto.JobtalkParam; import
  bit.com.a.service.JobtalkService;
 
 
 
  @Controller public class JobtalkController {
 
  @Autowired JobtalkService service;
 
  @RequestMapping(value = "Jobtalklist.do", method = RequestMethod.GET) 
  public String jobtalklist(Model model, JobtalkParam param) { 
	  model.addAttribute("doc_title", "글목록");
	// paging 처리 
		  int sn = param.getPage(); 
		  int start = sn * 10 + 1; // 1 11 
		  int end = (sn + 1) * 10; // 10 20
	 
		  param.setStart(start); param.setEnd(end);
	 
		  List<JobtalkDto> list = service.getJobtalklist(param); 
		  model.addAttribute("jobtalklist", list);
	  
	  
	  return "jobtalk/jobtalklist"; 
  }

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "JobtalklistData.do", method = RequestMethod.GET)
	 * public List<JobtalkDto> JobtalklistData(JobtalkParam param) {
	 * 
	 * 
	 * return list; }
	 */
  @ResponseBody
  @RequestMapping(value = "JobtalklistCount.do", method = RequestMethod.GET)
  public int JobtalklistCount(JobtalkParam param) { 
	  int count = service.getJobtalkCount(param); 
	  
	  return count; 
  }
 
  @RequestMapping(value = "Jobtalkwrite.do", method = RequestMethod.GET) 
  public String Jobtalkwrite(Model model) { 
	  model.addAttribute("doc_title", "글쓰기");
	  return "jobtalk/jobtalkwrite"; 
  }
 
  @RequestMapping(value = "JobtalkwriteAf.do", method = {RequestMethod.GET, RequestMethod.POST})
  public String bbswriteAf(JobtalkDto job, Model model) throws Exception {
	  System.out.println("들어옴?");
	  if(job.getJobtalk_content().equals("") || job.getJobtalk_title().equals("")){ 
		  System.out.println("DTO: " + job.toString());	
	  return "jobtalk/jobtalkwrite"; 
	  
  } 
  	service.writeJobtalk(job); 
  	System.out.println("DTO: " + job.toString());	
  	return "redirect:/Jobtalklist.do"; 
  }
 
  @RequestMapping(value = "Jobtalkdetail.do", method = {RequestMethod.GET, RequestMethod.POST}) 
  public String Jobtalkdetail(int jobtalkseq, Model model) {
  model.addAttribute("doc_title", "상세글 보기");
 
  service.readCount(jobtalkseq); // 조회수 증가
 
  JobtalkDto job = service.getJobtalk(jobtalkseq);
  System.out.println("job : " + job);
  
  model.addAttribute("jobtalk", job);
 
  return "jobtalk/jobtalkdetail"; 
  
  }
 
  @RequestMapping(value = "answer.do", method = {RequestMethod.GET, RequestMethod.POST}) 
  public String answer(int seq, Model model) throws Exception { 
	 model.addAttribute("doc_title", "답글추가"); 
	 JobtalkDto job = null;
	 job = service.getJobtalk(seq); 
	 model.addAttribute("job", job); 
	 return "answer"; 
  }
 
  @RequestMapping(value = "answerAf.do", method = {RequestMethod.GET, RequestMethod.POST}) 
  public String answerAf(JobtalkDto job, Model model) {
	  service.reply(job); 
	  return "redirect:/Jobtalklist.do"; 
  }
 
  @RequestMapping(value = "Jobtalkdelete.do", method = {RequestMethod.GET, RequestMethod.POST}) 
  public String deleteJobtalk(int jobtalkseq, Model model) {
	  	service.deleteJobtalk(jobtalkseq); 
  		return "redirect:/jobtalklist.do"; 
  }
 
  @RequestMapping(value = "Jobtalkupdate.do", method = {RequestMethod.GET, RequestMethod.POST}) 
  public String Jobtalkupdate(int jobtalkseq, Model model){
	  model.addAttribute("doc_title", "글수정"); 
	  JobtalkDto job = service.getJobtalk(jobtalkseq); 
	  model.addAttribute("job", job); 
	  return "jobtalk/jobtalkupdate"; 
  }
 
  @RequestMapping(value = "JobtalkupdateAf.do", method = RequestMethod.POST)
  public String JobtalkupdateAf(JobtalkDto job,Model model) {
	  	service.updateJobtalk(job); 
  
	  	return "redirect:/Jobtalklist.do"; 
	  	} 
  }
 