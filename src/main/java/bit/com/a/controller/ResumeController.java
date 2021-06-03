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

	@RequestMapping(value = "resumeMain.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String goResumeMain() {

		return "resume/resumeMain";
	}

	@RequestMapping(value = "writeResume.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeResume() {

		return "resume/writeResume";
	}


	@RequestMapping(value = "writeAfResume.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeAfResume(ResumeDto dto, Resume_EduDto edudto, Resume_CareerDto careerdto,
			Resume_LicenseDto licdto, Resume_ActivityDto actdto, Resume_AwardDto awarddto, Resume_LanguageDto landto,
			@RequestParam(value = "fileload", required = false) MultipartFile fileload,
			@RequestParam(value = "fileload2", required = false) MultipartFile fileload2, HttpServletRequest req,
			Model model) throws Exception {

		System.out.println("7777777777777777777777777777777777 start");
		System.out.println("컨트롤 넘어온 자소서제목 =" + dto.getResume_intro_title());
		System.out.println("컨트롤 넘어온 주소 =" + dto.getDesiredjob1());
		System.out.println("7777777777777777777777777777777777 end");

		System.out.println("fileload : " + fileload);
		System.out.println("fileload2 : " + fileload2);
		

		/* Map<String, Resume_EduVo> eduvolist = new HashMap<String, Resume_EduVo>(); */


		if (!fileload.isEmpty() && !fileload2.isEmpty()) {
			System.out.println("안비었다");
			// filename 취득
			String filename = fileload.getOriginalFilename();
			String filename2 = fileload2.getOriginalFilename();

			dto.setResumeimage(filename); // 원본 파일명을 설정
			dto.setPortfolio(filename2);

			// upload 경로 설정
			// server(tomcat)
			String fupload = req.getServletContext().getRealPath("/upload");

			// 폴더
			// String fupload = "d:\\tmp";

			System.out.println("fupload:" + fupload);
			System.out.println(dto.getResumeimage());
			System.out.println(dto.getPortfolio());

			// 파일명 변경 처리
			String newfilename = PdsUtil.getNewFileName(dto.getResumeimage());
			String newfilename2 = PdsUtil.getNewFileName(dto.getPortfolio());

			dto.setNewresumeimage(newfilename);
			dto.setNewportfolio(newfilename2);

			File file = new File(fupload + "/" + newfilename);

			try {
				// 실제로 업로드 되는 부분
				FileUtils.writeByteArrayToFile(file, fileload.getBytes());

				
				// db에 저장
				service.writeResume(dto);

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		else {
			dto.setResumeimage("");
			dto.setPortfolio("");

			dto.setNewresumeimage("");
			dto.setNewportfolio("");

			
			System.out.println("비었다");
			service.writeResume(dto);
		}
		
		
		//방금 작성한 이력서의 seq를 가져온다
		int resumeseq = service.getseq(dto.getResumetitle());
		System.out.println(resumeseq);
		
		//학력사항 관련 테이블 insert
		
		System.out.println("****************************************888"+edudto.toString());
		for (int i = 0; i < edudto.getUniversity().length; i++) {

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
			System.out.println("99999999999999999999999999999999999999999" + eduvo.toString());

			boolean b = service.writeEdu(eduvo);
			System.out.println(b);
		}
		
		System.out.println(" careerdto.getPre_comname().length= " + careerdto.getPre_comname().length);
		System.out.println(" getPre_buscode()[i]" + careerdto.getPre_buscode()[0]);
		System.out.println(careerdto.toString());
		
		for(int i=0; i<careerdto.getPre_comname().length; i++) {
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
			
			System.out.println("********************************************************" + carvo.toString());
			
			boolean b = service.writeCareer(carvo);
			System.out.println(b);
			
		}
		
		System.out.println(licdto.toString());
		for(int i=0; i<licdto.getLic_name().length; i++) {
			Resume_licenseVo licvo = new Resume_licenseVo();
			
			licvo.setResumeseq(resumeseq);
			/* licvo.setLic_type(licdto.getLic_type()[i]); */
			licvo.setLic_date(licdto.getLic_date()[i]);
			licvo.setLic_name(licdto.getLic_name()[i]);
			licvo.setLic_publisher(licdto.getLic_publisher()[i]);
			licvo.setLic_pass(licdto.getLic_pass()[i]);
			
			System.out.println("********************************************************" + licvo.toString());
			
			boolean b = service.writeLic(licvo);
			System.out.println(b);
		}
		
		System.out.println(actdto.toString());
		for(int i=0; i<actdto.getAct_field().length; i++) {
			Resume_ActivityVo actvo = new Resume_ActivityVo();
			
			actvo.setResumeseq(resumeseq);
			actvo.setAct_field(actdto.getAct_field()[i]);
			actvo.setAct_org(actdto.getAct_org()[i]);
			actvo.setAct_str(actdto.getAct_str()[i]);
			actvo.setAct_end(actdto.getAct_end()[i]);
			actvo.setAct_detail(actdto.getAct_detail()[i]);
			
			System.out.println("********************************************************" + actvo.toString());
			
			boolean b = service.writeAct(actvo);
			System.out.println(b);
		}
		
		return "resume/resumeMain";
	}

}
