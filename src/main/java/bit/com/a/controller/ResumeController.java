package bit.com.a.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.Resume_ActivityDto;
import bit.com.a.dto.Resume_ActivityVo;
import bit.com.a.dto.Resume_AwardDto;
import bit.com.a.dto.Resume_AwardVo;
import bit.com.a.dto.Resume_CareerDto;
import bit.com.a.dto.Resume_CareerVo;
import bit.com.a.dto.Resume_EduDto;
import bit.com.a.dto.Resume_EduVo;
import bit.com.a.dto.Resume_LanguageDto;
import bit.com.a.dto.Resume_LanguageVo;
import bit.com.a.dto.Resume_LicenseDto;
import bit.com.a.dto.Resume_licenseVo;
import bit.com.a.service.ResumeService;
import bit.com.a.util.PdsUtil;

@Controller
public class ResumeController {


	@Autowired
	ResumeService service;


	@RequestMapping(value = "resumeMain.do", method = {RequestMethod.GET, RequestMethod.POST})

	public String goResumeMain(Model model) {
		
		//이력서 리스트
		List<ResumeDto> resumelist = service.getresume();
		List<ResumeDto> resumeNolist = service.getNoresume();
		
		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);

		return "resume/resumeMain";
	}


	@RequestMapping(value = "writeResume.do", method = {RequestMethod.GET, RequestMethod.POST})

	public String writeResume() {

		return "resume/writeResume";
	}



	@RequestMapping(value = "writeAfResume.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeAfResume(ResumeDto dto, Resume_EduDto edudto, Resume_CareerDto careerdto,
			Resume_LicenseDto licdto, Resume_ActivityDto actdto, Resume_AwardDto awarddto, Resume_LanguageDto landto,
			@RequestParam(value = "fileload", required = false) MultipartFile fileload, HttpServletRequest req,
			Model model) throws Exception {


		System.out.println("fileload : " + fileload);


		if (!fileload.isEmpty()) {
			System.out.println("안비었다");
			// filename 취득
			String filename = fileload.getOriginalFilename();

			dto.setResumeimage(filename); // 원본 파일명을 설정

			// upload 경로 설정
			// server(tomcat)
			String fupload = req.getServletContext().getRealPath("/upload");

			// 폴더
			// String fupload = "d:\\tmp";

			System.out.println("fupload:" + fupload);
			System.out.println(dto.getResumeimage());

			// 파일명 변경 처리
			String newfilename = PdsUtil.getNewFileName(dto.getResumeimage());

			dto.setNewresumeimage(newfilename);

			File file = new File(fupload + "/" + newfilename);

			try {
				// 실제로 업로드 되는 부분
				FileUtils.writeByteArrayToFile(file, fileload.getBytes());

				// db에 저장
				service.writeResume(dto);
				service.upProgress(dto);

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		System.out.println(dto.toString());

		}

		else {
			dto.setResumeimage("");

			dto.setNewresumeimage("");

			System.out.println("비었다");
			service.writeResume(dto);
			service.upProgress(dto);
		}
		
		
		//방금 작성한 이력서의 seq를 가져온다
		int resumeseq = service.getseq(dto.getResumetitle());
		System.out.println(resumeseq);
		
		
		System.out.println(dto.toString());
		
		//학력사항 관련 테이블 insert
		
		System.out.println("11111111111111111111111111111111111111111111111111111111111111111111111111111"+edudto.toString());
		for (int i = 0; i < edudto.getUniversity().length; i++) {

			if( edudto.getUniversity()[i] == null || edudto.getUniversity()[i].equals("")) {
			} else {
			
			Resume_EduVo eduvo = new Resume_EduVo();

			eduvo.setResumeseq(resumeseq);
			eduvo.setHighschool(edudto.getHighschool());
			eduvo.setHigh_str(edudto.getHigh_str());
			eduvo.setHigh_str_status(edudto.getHigh_str_status());
			eduvo.setHigh_end(edudto.getHigh_end());
			eduvo.setHigh_end_status(edudto.getHigh_end_status());
			
			
			eduvo.setUniversity(edudto.getUniversity()[i]);
			eduvo.setUniv_status(edudto.getUniv_status()[i]);
			eduvo.setUniv_str(edudto.getUniv_str()[i]);
			eduvo.setUniv_str_status(edudto.getUniv_str_status()[i]);
			eduvo.setUniv_end(edudto.getUniv_end()[i]);
			eduvo.setUniv_end_status(edudto.getUniv_end_status()[i]);
			eduvo.setUniv_major_field(edudto.getUniv_major_field()[i]);
			eduvo.setUniv_major(edudto.getUniv_major()[i]);
			eduvo.setUniv_night(edudto.getUniv_night()[i]);
			eduvo.setUniv_grade(edudto.getUniv_grade()[i]);
			eduvo.setUniv_grade_base(edudto.getUniv_grade_base()[i]);
			eduvo.setUniv_paper(edudto.getUniv_paper()[i]);
			System.out.println("22222222222222222222222222222222222222222222222222222222222222222222222222222222" + eduvo.toString());

			boolean b = service.writeEdu(eduvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
		}
		
		//경력사항 관련 테이블 INSERT
		System.out.println(" careerdto.getPre_comname().length= " + careerdto.getPre_comname().length);
		System.out.println(careerdto.toString());
		
		for(int i=0; i<careerdto.getPre_comname().length; i++) {

			if( careerdto.getPre_comname()[i] ==null || careerdto.getPre_comname()[i].equals("")) {
			}else {
			Resume_CareerVo carvo = new Resume_CareerVo();
			carvo.setResumeseq(resumeseq);
			carvo.setPre_comname(careerdto.getPre_comname()[i]);
			carvo.setPre_startdate(careerdto.getPre_startdate()[i]);
			carvo.setPre_enddate(careerdto.getPre_enddate()[i]);
			carvo.setPre_status(careerdto.getPre_status()[i]);
			carvo.setPre_position(careerdto.getPre_position()[i]);
			carvo.setPre_buscode(careerdto.getPre_buscode()[i]);
			carvo.setPre_area(careerdto.getPre_area()[i]);
			carvo.setPre_dept(careerdto.getPre_dept()[i]);
			carvo.setPre_sal(careerdto.getPre_sal()[i]);
			carvo.setPre_jobdetail(careerdto.getPre_jobdetail()[i]);
			
			System.out.println("3333333333333333333333333333333333333333333333333333333333333333333333333333333" + carvo.toString());
			
			boolean b = service.writeCareer(carvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
			
		}
		
		//자격증관련 사항 테이블 INSERT
		System.out.println(licdto.toString());
		for(int i=0; i<licdto.getLic_name().length; i++) {
			
			
			if( licdto.getLic_date()[i]==null||licdto.getLic_date()[i].equals("")) {
				System.out.println("널임");
			} else {
			
			Resume_licenseVo licvo = new Resume_licenseVo();
			licvo.setResumeseq(resumeseq);
			/* licvo.setLic_type(licdto.getLic_type()[i]); */
			licvo.setLic_date(licdto.getLic_date()[i]);
			licvo.setLic_name(licdto.getLic_name()[i]);
			licvo.setLic_publisher(licdto.getLic_publisher()[i]);
			licvo.setLic_pass(licdto.getLic_pass()[i]);
			
			System.out.println("44444444444444444444444444444444444444444444444444444444444444444444444444444444444" + licvo.toString());
			
			boolean b = service.writeLic(licvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
		}
		
		//대외활동관련 사항 테이블 INSERT
		System.out.println(actdto.toString());
		for(int i=0; i<actdto.getAct_str().length; i++) {
			
			
			if( actdto.getAct_str()[i] ==null || actdto.getAct_str()[i].equals("")) {
			} else {
			Resume_ActivityVo actvo = new Resume_ActivityVo();
			actvo.setResumeseq(resumeseq);
			actvo.setAct_field(actdto.getAct_field()[i]);
			actvo.setAct_org(actdto.getAct_org()[i]);
			actvo.setAct_str(actdto.getAct_str()[i]);
			actvo.setAct_end(actdto.getAct_end()[i]);
			actvo.setAct_detail(actdto.getAct_detail()[i]);
			
			System.out.println("55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555" + actvo.toString());
			
			boolean b = service.writeAct(actvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(c);
			}
		}
		
		//수상관련 사항 테이블 INSERT
		System.out.println(awarddto.toString());
		System.out.println(awarddto.getAwd_name().length);
		
		for(int i=0; i<awarddto.getAwd_name().length; i++) {
			
			if( awarddto.getAwd_name()[i] ==null || awarddto.getAwd_name()[i].equals("")) {
			} else {
			Resume_AwardVo awdvo = new Resume_AwardVo();
			awdvo.setResumeseq(resumeseq);
			awdvo.setAwd_name(awarddto.getAwd_name()[i]);
			awdvo.setAwd_date(awarddto.getAwd_date()[i]);
			awdvo.setAwd_org(awarddto.getAwd_org()[i]);
			
			System.out.println("66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666" + awdvo.toString());
			
			boolean b = service.writeAward(awdvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
		}
		
		System.out.println(landto.toString());
		
		for(int i=0; i<landto.getLan_exam().length; i++) {
			if( landto.getLan_exam()[i] ==null || landto.getLan_exam()[i].equals("")) {
			} else {
			
			Resume_LanguageVo lanvo = new Resume_LanguageVo();
			lanvo.setResumeseq(resumeseq);
			lanvo.setLan_kind(landto.getLan_kind()[i]);
			lanvo.setLan_exam(landto.getLan_exam()[i]);
			lanvo.setLan_score(landto.getLan_score()[i]);
			lanvo.setLan_grade(landto.getLan_grade()[i]);
			lanvo.setLan_pass(landto.getLan_pass()[i]);
			lanvo.setLan_date(landto.getLan_date()[i]);
			
			System.out.println("7777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777" + lanvo.toString());
			
			boolean b = service.writeLan(lanvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
		}
		}
		
		//이력서 리스트
		List<ResumeDto> resumelist = service.getresume();
		List<ResumeDto> resumeNolist = service.getNoresume();
		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);
		
		return "resume/resumeMain";
	}
	
	
	
	@RequestMapping(value = "Resumedetail.do", method = {RequestMethod.GET, RequestMethod.POST})

	public String goResumeDetail(int seq, Model model) {

		System.out.println("seq="+seq);
		ResumeDto dto = service.getResumeDetail(seq);
		List<Resume_EduVo> edulist = service.getEduDetail(seq);
		List<Resume_CareerVo> calist = service.getCareerDetail(seq);
		List<Resume_licenseVo> liclist = service.getLicDetail(seq);
		List<Resume_ActivityVo> actlist = service.getActDetail(seq);
		List<Resume_AwardVo> awdlist = service.getAwdDetail(seq);
		List<Resume_LanguageVo> lanlist = service.getlanDetail(seq);
		
		
		model.addAttribute("dto", dto);
		model.addAttribute("edulist", edulist);
		model.addAttribute("calist", calist);
		model.addAttribute("liclist", liclist);
		model.addAttribute("actlist", actlist);
		model.addAttribute("awdlist", awdlist);
		model.addAttribute("lanlist", lanlist);
		
		return "resume/Resumedetail";
	}
	
	@RequestMapping(value = "deleteResume.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String deleteResume(int seq, Model model) {
		
		//이력서 리스트

		boolean c = service.deleteEduResume(seq);
		boolean d = service.deleteCareerResume(seq);
		boolean e = service.deleteLicenseResume(seq);
		boolean f = service.deleteActivityResume(seq);
		boolean g = service.deleteAwardResume(seq);
		boolean h = service.deleteLanResume(seq);
		
		boolean b = service.deleteResume(seq);

		
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
		System.out.println(e);
		System.out.println(f);
		System.out.println(g);
		System.out.println(h);
		
		//이력서 리스트
		List<ResumeDto> resumelist = service.getresume();
		List<ResumeDto> resumeNolist = service.getNoresume();
		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);

		return "resume/resumeMain";

	}
	
	@RequestMapping(value = "updateResume.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateResume(int seq, Model model) {
		
		//이력서 리스트

		System.out.println("seq="+seq);
		ResumeDto resumedto = service.getResumeDetail(seq);
		List<Resume_EduVo> edulist = service.getEduDetail(seq);
		List<Resume_CareerVo> calist = service.getCareerDetail(seq);
		List<Resume_licenseVo> liclist = service.getLicDetail(seq);
		List<Resume_ActivityVo> actlist = service.getActDetail(seq);
		List<Resume_AwardVo> awdlist = service.getAwdDetail(seq);
		List<Resume_LanguageVo> lanlist = service.getlanDetail(seq);
		
		
		model.addAttribute("resumedto", resumedto);
		model.addAttribute("edulist", edulist);
		model.addAttribute("calist", calist);
		model.addAttribute("liclist", liclist);
		model.addAttribute("actlist", actlist);
		model.addAttribute("awdlist", awdlist);
		model.addAttribute("lanlist", lanlist);

		return "resume/updateResume";

	}
	
	@RequestMapping(value = "updateAfResume.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateAfResume(ResumeDto dto, Resume_EduDto edudto, Resume_CareerDto careerdto,
			Resume_LicenseDto licdto, Resume_ActivityDto actdto, Resume_AwardDto awarddto, Resume_LanguageDto landto, 
			String namefile,
			@RequestParam(value = "fileload", required = false) MultipartFile fileload, HttpServletRequest req,
			Model model) throws Exception {

		System.out.println("fileload" + fileload);
		dto.setResumeimage(fileload.getOriginalFilename());

		
		if(!fileload.isEmpty()) {
	        // 파일 경로
	        String fupload = req.getServletContext().getRealPath("/upload");
	        
	        // 수정할 파일이 있음
	        if(dto.getResumeimage() != null && !dto.getResumeimage().equals("")) {
	            
	            String f = dto.getResumeimage();
	            String newfilename = PdsUtil.getNewFileName(f);
	            
	            dto.setResumeimage(f);
	            dto.setNewresumeimage(newfilename);
	            
	            File file = new File(fupload + "/" + newfilename);            
	            System.out.println(newfilename);
	            try {
	                // 실제 업로드
	                FileUtils.writeByteArrayToFile(file, fileload.getBytes());
	                
	                // db 경신
	                service.updateResume(dto);
	                System.out.println("파일이 있다");
	                
	            } catch (IOException e) {                
	                e.printStackTrace();
	            }            
	        }
	        else {    // 수정할 파일 없음
	            
	            // 기존의 파일명으로 설정
	            dto.setResumeimage(namefile);
	            System.out.println("파일이 없다");
	            // DB
	            service.updateResume(dto); 
	            
	        }
	        }
	        
	        	else {
	    			dto.setResumeimage("");
	    			dto.setNewresumeimage("");

	    			System.out.println("비었다");
	    			service.updateResume(dto); 
	    			service.upProgress(dto);
			}
	        
		
		
		//방금 작성한 이력서의 seq를 가져온다
		int resumeseq = service.getseq(dto.getResumetitle());
		System.out.println(resumeseq);
		
		
		System.out.println(dto.toString());
		
		//학력사항 관련 테이블 insert
		
		System.out.println("11111111111111111111111111111111111111111111111111111111111111111111111111111"+edudto.toString());
		
		if(edudto.getUniversity()!=null) {
		for (int i = 0; i < edudto.getUniversity().length; i++) {

			if( edudto.getUniversity()[i] == null || edudto.getUniversity()[i].equals("")) {
			} else {
			
			Resume_EduVo eduvo = new Resume_EduVo();

			eduvo.setResumeseq(resumeseq);
			eduvo.setHighschool(edudto.getHighschool());
			eduvo.setHigh_str(edudto.getHigh_str());
			eduvo.setHigh_str_status(edudto.getHigh_str_status());
			eduvo.setHigh_end(edudto.getHigh_end());
			eduvo.setHigh_end_status(edudto.getHigh_end_status());
			
			eduvo.setUniversity(edudto.getUniversity()[i]);
			eduvo.setUniv_status(edudto.getUniv_status()[i]);
			eduvo.setUniv_str(edudto.getUniv_str()[i]);
			eduvo.setUniv_str_status(edudto.getUniv_str_status()[i]);
			eduvo.setUniv_end(edudto.getUniv_end()[i]);
			eduvo.setUniv_end_status(edudto.getUniv_end_status()[i]);
			eduvo.setUniv_major_field(edudto.getUniv_major_field()[i]);
			eduvo.setUniv_major(edudto.getUniv_major()[i]);
			eduvo.setUniv_night(edudto.getUniv_night()[i]);
			eduvo.setUniv_grade(edudto.getUniv_grade()[i]);
			eduvo.setUniv_grade_base(edudto.getUniv_grade_base()[i]);
			eduvo.setUniv_paper(edudto.getUniv_paper()[i]);
			System.out.println("22222222222222222222222222222222222222222222222222222222222222222222222222222222" + eduvo.toString());

			boolean b = service.updateEdu(eduvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
		}
		}
		//경력사항 관련 테이블 INSERT
		System.out.println(" careerdto.getPre_comname().length= " + careerdto.getPre_comname().length);
		System.out.println(careerdto.toString());
		
		if(careerdto.getPre_comname()!=null) {
		for(int i=0; i<careerdto.getPre_comname().length; i++) {

			if( careerdto.getPre_comname()[i] ==null || careerdto.getPre_comname()[i].equals("")) {
			}else {
			Resume_CareerVo carvo = new Resume_CareerVo();
			carvo.setResumeseq(resumeseq);
			carvo.setPre_comname(careerdto.getPre_comname()[i]);
			carvo.setPre_startdate(careerdto.getPre_startdate()[i]);
			carvo.setPre_enddate(careerdto.getPre_enddate()[i]);
			carvo.setPre_status(careerdto.getPre_status()[i]);
			carvo.setPre_position(careerdto.getPre_position()[i]);
			carvo.setPre_buscode(careerdto.getPre_buscode()[i]);
			carvo.setPre_area(careerdto.getPre_area()[i]);
			carvo.setPre_dept(careerdto.getPre_dept()[i]);
			carvo.setPre_sal(careerdto.getPre_sal()[i]);
			carvo.setPre_jobdetail(careerdto.getPre_jobdetail()[i]);
			
			System.out.println("3333333333333333333333333333333333333333333333333333333333333333333333333333333" + carvo.toString());
			
			boolean b = service.updateCareer(carvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
		}
		}
		
		//자격증관련 사항 테이블 INSERT
		System.out.println(licdto.toString());
		if(licdto.getLic_name()!=null) { 
		for(int i=0; i<licdto.getLic_name().length; i++) {
			
			
			if( licdto.getLic_date()[i]==null||licdto.getLic_date()[i].equals("")) {
				System.out.println("널임");
			} else {
			
			Resume_licenseVo licvo = new Resume_licenseVo();
			licvo.setResumeseq(resumeseq);
			/* licvo.setLic_type(licdto.getLic_type()[i]); */
			licvo.setLic_date(licdto.getLic_date()[i]);
			licvo.setLic_name(licdto.getLic_name()[i]);
			licvo.setLic_publisher(licdto.getLic_publisher()[i]);
			licvo.setLic_pass(licdto.getLic_pass()[i]);
			
			System.out.println("44444444444444444444444444444444444444444444444444444444444444444444444444444444444" + licvo.toString());
			
			boolean b = service.updateLic(licvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
		}
		}
		//대외활동관련 사항 테이블 INSERT
		System.out.println(actdto.toString());
		if(actdto.getAct_str()!=null) { 
		for(int i=0; i<actdto.getAct_str().length; i++) {
			
			
			if( actdto.getAct_str()[i] ==null || actdto.getAct_str()[i].equals("")) {
			} else {
			Resume_ActivityVo actvo = new Resume_ActivityVo();
			actvo.setResumeseq(resumeseq);
			actvo.setAct_field(actdto.getAct_field()[i]);
			actvo.setAct_org(actdto.getAct_org()[i]);
			actvo.setAct_str(actdto.getAct_str()[i]);
			actvo.setAct_end(actdto.getAct_end()[i]);
			actvo.setAct_detail(actdto.getAct_detail()[i]);
			
			System.out.println("55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555" + actvo.toString());
			
			boolean b = service.updateAct(actvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
		}
		}
		//수상관련 사항 테이블 INSERT
		System.out.println(awarddto.toString());
		if(awarddto.getAwd_name()!=null) { 
			
		for(int i=0; i<awarddto.getAwd_name().length; i++) {
			
			if( awarddto.getAwd_name()[i]==null || awarddto.getAwd_name()[i].equals("")) {
			} else {
			Resume_AwardVo awdvo = new Resume_AwardVo();
			awdvo.setResumeseq(resumeseq);
			awdvo.setAwd_name(awarddto.getAwd_name()[i]);
			awdvo.setAwd_date(awarddto.getAwd_date()[i]);
			awdvo.setAwd_org(awarddto.getAwd_org()[i]);
			
			System.out.println("66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666" + awdvo.toString());
			
			boolean b = service.updateAward(awdvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			}
		}
		}
		
		System.out.println(landto.toString());
		if(landto.getLan_exam()!=null) { 
		for(int i=0; i<landto.getLan_exam().length; i++) {
			if( landto.getLan_exam()[i] ==null || landto.getLan_exam()[i].equals("")) {
			} else {
			
			Resume_LanguageVo lanvo = new Resume_LanguageVo();
			lanvo.setResumeseq(resumeseq);
			lanvo.setLan_kind(landto.getLan_kind()[i]);
			lanvo.setLan_exam(landto.getLan_exam()[i]);
			lanvo.setLan_score(landto.getLan_score()[i]);
			lanvo.setLan_grade(landto.getLan_grade()[i]);
			lanvo.setLan_pass(landto.getLan_pass()[i]);
			lanvo.setLan_date(landto.getLan_date()[i]);
			
			System.out.println("7777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777" + lanvo.toString());
			
			boolean b = service.updateLan(lanvo);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
		}
		}
		}
		//이력서 리스트
		List<ResumeDto> resumelist = service.getresume();
		List<ResumeDto> resumeNolist = service.getNoresume();
		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);
		
		return "resume/resumeMain";
	}


}
	

