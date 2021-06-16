package bit.com.a.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.ResumeDto;
import bit.com.a.dto.ResumeParam;
import bit.com.a.dto.ApplyDto;
import bit.com.a.dto.Resume_ActivityDto;
import bit.com.a.dto.Resume_ActivityVo;
import bit.com.a.dto.Resume_AwardDto;
import bit.com.a.dto.Resume_AwardVo;
import bit.com.a.dto.Resume_CareerDto;
import bit.com.a.dto.Resume_CareerVo;
import bit.com.a.dto.Resume_HighschoolDto;
import bit.com.a.dto.Resume_LanguageDto;
import bit.com.a.dto.Resume_LanguageVo;
import bit.com.a.dto.Resume_LicenseDto;
import bit.com.a.dto.Resume_Portfolio;
import bit.com.a.dto.Resume_UniversityDto;
import bit.com.a.dto.Resume_UniversityVo;
import bit.com.a.dto.Resume_licenseVo;
import bit.com.a.service.RecruitService;
import bit.com.a.service.ResumeService;
import bit.com.a.util.PdsUtil;

@Controller
public class ResumeController {

	@Autowired
	ResumeService service;

	@Autowired
	RecruitService recruitservice;

	@RequestMapping(value = "resumeMain.do", method = { RequestMethod.GET, RequestMethod.POST })

	//이력서 관리 메인페이지 이동
	public String goResumeMain(Model model, String memberid) {

		System.out.println(memberid);
		// 이력서 리스트
		List<ResumeDto> resumelist = service.getresume(memberid);
		List<ResumeDto> resumeNolist = service.getNoresume(memberid);
		List<ApplyDto> applylist = service.getApplyList(memberid);
		List<Resume_Portfolio> portlist = service.getPortfolio(memberid);
		List<ResumeParam> param = new ArrayList<ResumeParam>();

		for (int i = 0; i < applylist.size(); i++) {

			ResumeParam pa = new ResumeParam();

			pa.setApplyseq(applylist.get(i).getApplyseq());
			pa.setJobseq(applylist.get(i).getJobseq());
			pa.setResumeseq(applylist.get(i).getResumeseq());
			pa.setApplydate(applylist.get(i).getApplydate());
			pa.setCompanyread(applylist.get(i).getCompanyread());

			int jobseq = applylist.get(i).getJobseq();
			String jobtitle = service.getJobtitle(jobseq);
			pa.setJobtitle(jobtitle);

			int resumeseq = applylist.get(i).getResumeseq();
			String resumetitle = service.getResumeTitle(resumeseq);
			pa.setResumetitle(resumetitle);
			
			int portfolioseq = applylist.get(i).getPortfolioseq();
			String portfolioname = service.getPortfolioname(portfolioseq);
			System.out.println("portfolioname###################################"+portfolioname);
			pa.setPortfolioname(portfolioname);

			param.add(pa);
		}

		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);
		model.addAttribute("portlist", portlist);
		model.addAttribute("param", param);

		return "resume/resumeMain";
	}

	//이력서 작성 페이지 이동
	@RequestMapping(value = "writeResume.do", method = { RequestMethod.GET, RequestMethod.POST })

	public String writeResume() {

		return "resume/writeResume";
	}

	//이력서 작성
	@RequestMapping(value = "writeAfResume.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String writeAfResume(ResumeDto dto, Resume_HighschoolDto highdto, Resume_UniversityDto unidto,
			Resume_CareerDto careerdto, Resume_LicenseDto licdto, Resume_ActivityDto actdto, Resume_AwardDto awarddto,
			Resume_LanguageDto landto, @RequestParam(value = "fileload", required = false) MultipartFile fileload,
			HttpServletRequest req, Model model) throws Exception {

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

		// 방금 작성한 이력서의 seq를 가져온다
		int resumeseq = service.getseq(dto);
		boolean up = service.updateProgress(resumeseq);
		System.out.println(resumeseq);
		System.out.println("update progress =" + up);
		System.out.println(dto.toString());

		// 학력사항 관련 테이블 insert


		if (highdto.getHighschool() == null || highdto.getHighschool().equals("")) {
		} else {

			highdto.setResumeseq(resumeseq);
			boolean b = service.writeHigh(highdto);
			boolean c = service.updateProgress(resumeseq);
			System.out.println(b);
			System.out.println(c);
			System.out.println(
					"11111111111111111111111111111111111111111111111111111111111111111111111111111" + highdto.toString());
		}

		for (int i = 0; i < unidto.getUniversity().length; i++) {

			if (unidto.getUniversity()[i] == null || unidto.getUniversity()[i].equals("")) {
			} else {

				Resume_UniversityVo univo = new Resume_UniversityVo();

				univo.setResumeseq(resumeseq);
				univo.setUniversity(unidto.getUniversity()[i]);
				univo.setUniv_status(unidto.getUniv_status()[i]);
				univo.setUniv_str(unidto.getUniv_str()[i]);
				univo.setUniv_str_status(unidto.getUniv_str_status()[i]);
				univo.setUniv_end(unidto.getUniv_end()[i]);
				univo.setUniv_end_status(unidto.getUniv_end_status()[i]);
				univo.setUniv_major_field(unidto.getUniv_major_field()[i]);
				univo.setUniv_major(unidto.getUniv_major()[i]);
				univo.setUniv_night(unidto.getUniv_night()[i]);
				univo.setUniv_grade(unidto.getUniv_grade()[i]);
				univo.setUniv_grade_base(unidto.getUniv_grade_base()[i]);
				univo.setUniv_paper(unidto.getUniv_paper()[i]);

				System.out.println("22222222222222222222222222222222222222222222222222222222222222222222222222222222"
						+ univo.toString());

				boolean d = service.writeUni(univo);
				boolean e = service.updateProgress(resumeseq);
				System.out.println(d);
				System.out.println(e);

			}
		}

		// 경력사항 관련 테이블 INSERT

		for (int i = 0; i < careerdto.getPre_comname().length; i++) {

			if (careerdto.getPre_comname()[i] == null || careerdto.getPre_comname()[i].equals("")) {
			} else {
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
				carvo.setPre_reason(careerdto.getPre_reason()[i]);

				System.out.println("3333333333333333333333333333333333333333333333333333333333333333333333333333333"
						+ carvo.toString());

				boolean b = service.writeCareer(carvo);
				boolean c = service.updateProgress(resumeseq);
				System.out.println(b);
				System.out.println(c);
			}

		}

		// 자격증관련 사항 테이블 INSERT
		System.out.println(licdto.toString());
		for (int i = 0; i < licdto.getLic_name().length; i++) {

			if (licdto.getLic_date()[i] == null || licdto.getLic_date()[i].equals("")) {
				System.out.println("널임");
			} else {

				Resume_licenseVo licvo = new Resume_licenseVo();
				licvo.setResumeseq(resumeseq);
				/* licvo.setLic_type(licdto.getLic_type()[i]); */
				licvo.setLic_date(licdto.getLic_date()[i]);
				licvo.setLic_name(licdto.getLic_name()[i]);
				licvo.setLic_publisher(licdto.getLic_publisher()[i]);
				licvo.setLic_pass(licdto.getLic_pass()[i]);

				System.out.println("44444444444444444444444444444444444444444444444444444444444444444444444444444444444"
						+ licvo.toString());

				boolean b = service.writeLic(licvo);
				boolean c = service.updateProgress(resumeseq);
				System.out.println(b);
				System.out.println(c);
			}
		}

		// 대외활동관련 사항 테이블 INSERT
		System.out.println(actdto.toString());
		for (int i = 0; i < actdto.getAct_str().length; i++) {

			if (actdto.getAct_str()[i] == null || actdto.getAct_str()[i].equals("")) {
			} else {
				Resume_ActivityVo actvo = new Resume_ActivityVo();
				actvo.setResumeseq(resumeseq);
				actvo.setAct_field(actdto.getAct_field()[i]);
				actvo.setAct_org(actdto.getAct_org()[i]);
				actvo.setAct_str(actdto.getAct_str()[i]);
				actvo.setAct_end(actdto.getAct_end()[i]);
				actvo.setAct_detail(actdto.getAct_detail()[i]);

				System.out.println(
						"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555"
								+ actvo.toString());

				boolean b = service.writeAct(actvo);
				boolean c = service.updateProgress(resumeseq);
				System.out.println(c);
			}
		}

		// 수상관련 사항 테이블 INSERT
		System.out.println(awarddto.toString());
		System.out.println(awarddto.getAwd_name().length);

		for (int i = 0; i < awarddto.getAwd_name().length; i++) {

			if (awarddto.getAwd_name()[i] == null || awarddto.getAwd_name()[i].equals("")) {
			} else {
				Resume_AwardVo awdvo = new Resume_AwardVo();
				awdvo.setResumeseq(resumeseq);
				awdvo.setAwd_name(awarddto.getAwd_name()[i]);
				awdvo.setAwd_date(awarddto.getAwd_date()[i]);
				awdvo.setAwd_org(awarddto.getAwd_org()[i]);

				System.out.println(
						"66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666"
								+ awdvo.toString());

				boolean b = service.writeAward(awdvo);
				boolean c = service.updateProgress(resumeseq);
				System.out.println(b);
				System.out.println(c);
			}
		}

		System.out.println(landto.toString());

		for (int i = 0; i < landto.getLan_exam().length; i++) {
			if (landto.getLan_exam()[i] == null || landto.getLan_exam()[i].equals("")) {
			} else {

				Resume_LanguageVo lanvo = new Resume_LanguageVo();
				lanvo.setResumeseq(resumeseq);
				lanvo.setLan_kind(landto.getLan_kind()[i]);
				lanvo.setLan_exam(landto.getLan_exam()[i]);
				lanvo.setLan_score(landto.getLan_score()[i]);
				lanvo.setLan_grade(landto.getLan_grade()[i]);
				lanvo.setLan_pass(landto.getLan_pass()[i]);
				lanvo.setLan_date(landto.getLan_date()[i]);

				System.out.println(
						"7777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777"
								+ lanvo.toString());

				boolean b = service.writeLan(lanvo);
				boolean c = service.updateProgress(resumeseq);
				System.out.println(b);
				System.out.println(c);
			}
		}

		// 이력서 리스트 불러오기
		List<ResumeDto> resumelist = service.getresume(dto.getMemberid());
		List<ResumeDto> resumeNolist = service.getNoresume(dto.getMemberid());
		List<ApplyDto> applylist = service.getApplyList(dto.getMemberid());
		List<Resume_Portfolio> portlist = service.getPortfolio(dto.getMemberid());
		List<ResumeParam> param = new ArrayList<ResumeParam>();

		for (int i = 0; i < applylist.size(); i++) {

			ResumeParam pa = new ResumeParam();

			pa.setApplyseq(applylist.get(i).getApplyseq());
			pa.setJobseq(applylist.get(i).getJobseq());
			pa.setResumeseq(applylist.get(i).getResumeseq());
			pa.setApplydate(applylist.get(i).getApplydate());
			pa.setCompanyread(applylist.get(i).getCompanyread());

			int jobseq = applylist.get(i).getJobseq();
			String jobtitle = service.getJobtitle(jobseq);
			pa.setJobtitle(jobtitle);

			int resumeseqs = applylist.get(i).getResumeseq();
			String resumetitle = service.getResumeTitle(resumeseqs);
			pa.setResumetitle(resumetitle);

			param.add(pa);
		}

		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);
		model.addAttribute("portlist", portlist);
		model.addAttribute("param", param);

		return "resume/resumeMain";
	}

	//이력서 상세 정보(디테일) 보기
	@RequestMapping(value = "Resumedetail.do", method = { RequestMethod.GET, RequestMethod.POST })

	public String goResumeDetail(int seq, Model model) {

		System.out.println("seq=" + seq);
		ResumeDto dto = service.getResumeDetail(seq);
		Resume_HighschoolDto highdto = service.getHighDetail(seq);
		List<Resume_UniversityVo> unilist = service.getUniDetail(seq);
		List<Resume_CareerVo> calist = service.getCareerDetail(seq);
		List<Resume_licenseVo> liclist = service.getLicDetail(seq);
		List<Resume_ActivityVo> actlist = service.getActDetail(seq);
		List<Resume_AwardVo> awdlist = service.getAwdDetail(seq);
		List<Resume_LanguageVo> lanlist = service.getlanDetail(seq);

		model.addAttribute("dto", dto);
		model.addAttribute("highdto", highdto);
		model.addAttribute("unilist", unilist);
		model.addAttribute("calist", calist);
		model.addAttribute("liclist", liclist);
		model.addAttribute("actlist", actlist);
		model.addAttribute("awdlist", awdlist);
		model.addAttribute("lanlist", lanlist);

		return "resume/Resumedetail";
	}

	//이력서 삭제
	@RequestMapping(value = "deleteResume.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String deleteResume(int resumeseq, String memberid, Model model) {


		boolean c = service.deleteHighResume(resumeseq);
		System.out.println(c);
		boolean c2 = service.deleteUniResume(resumeseq);
		System.out.println(c2);
		boolean d = service.deleteCareerResume(resumeseq);
		System.out.println(d);
		boolean e = service.deleteLicenseResume(resumeseq);
		System.out.println(e);
		boolean f = service.deleteActivityResume(resumeseq);
		System.out.println(f);
		boolean g = service.deleteAwardResume(resumeseq);
		System.out.println(g);
		boolean h = service.deleteLanResume(resumeseq);
		System.out.println(h);
		boolean b = service.deleteResume(resumeseq);
		System.out.println(b);
		//지원내역 삭제
		boolean q = service.deleteApply(resumeseq);

		System.out.println("지원내역 삭제"+q);

		// 이력서 리스트 불러오기
		List<ResumeDto> resumelist = service.getresume(memberid);
		List<ResumeDto> resumeNolist = service.getNoresume(memberid);
		List<ApplyDto> applylist = service.getApplyList(memberid);
		List<Resume_Portfolio> portlist = service.getPortfolio(memberid);
		List<ResumeParam> param = new ArrayList<ResumeParam>();

		for (int i = 0; i < applylist.size(); i++) {

			ResumeParam pa = new ResumeParam();

			pa.setApplyseq(applylist.get(i).getApplyseq());
			pa.setJobseq(applylist.get(i).getJobseq());
			pa.setResumeseq(applylist.get(i).getResumeseq());
			pa.setApplydate(applylist.get(i).getApplydate());
			pa.setCompanyread(applylist.get(i).getCompanyread());

			int jobseq = applylist.get(i).getJobseq();
			String jobtitle = service.getJobtitle(jobseq);
			pa.setJobtitle(jobtitle);

			int resumeseqs = applylist.get(i).getResumeseq();
			String resumetitle = service.getResumeTitle(resumeseqs);
			pa.setResumetitle(resumetitle);

			param.add(pa);
		}

		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);
		model.addAttribute("portlist", portlist);
		model.addAttribute("param", param);

		return "resume/resumeMain";

	}

	//이력서 업데이트 페이지 넘어가기
	@RequestMapping(value = "updateResume.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateResume(int seq, Model model) {

		// 이력서 리스트
		System.out.println("seq=" + seq);
		ResumeDto dto = service.getResumeDetail(seq);
		Resume_HighschoolDto highdto = service.getHighDetail(seq);
		List<Resume_UniversityVo> unilist = service.getUniDetail(seq);
		List<Resume_CareerVo> calist = service.getCareerDetail(seq);
		List<Resume_licenseVo> liclist = service.getLicDetail(seq);
		List<Resume_ActivityVo> actlist = service.getActDetail(seq);
		List<Resume_AwardVo> awdlist = service.getAwdDetail(seq);
		List<Resume_LanguageVo> lanlist = service.getlanDetail(seq);

		model.addAttribute("resumedto", dto);
		model.addAttribute("highdto", highdto);
		model.addAttribute("unilist", unilist);
		model.addAttribute("calist", calist);
		model.addAttribute("liclist", liclist);
		model.addAttribute("actlist", actlist);
		model.addAttribute("awdlist", awdlist);
		model.addAttribute("lanlist", lanlist);

		return "resume/updateResume";

	}
	
	//이력서 업데이트
	@RequestMapping(value = "updateAfResume.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateAfResume(ResumeDto dto, Resume_HighschoolDto highdto, Resume_UniversityDto unidto,
			Resume_CareerDto careerdto, Resume_LicenseDto licdto, Resume_ActivityDto actdto, Resume_AwardDto awarddto,
			Resume_LanguageDto landto, String namefile,
			@RequestParam(value = "fileload", required = false) MultipartFile fileload, HttpServletRequest req,
			Model model) throws Exception {

		System.out.println("fileload" + fileload);
		dto.setResumeimage(fileload.getOriginalFilename());

		if (!fileload.isEmpty()) {
			// 파일 경로
			String fupload = req.getServletContext().getRealPath("/upload");

			// 수정할 파일이 있음
			if (dto.getResumeimage() != null && !dto.getResumeimage().equals("")) {

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
					service.upProgress(dto);
					System.out.println("파일이 있다");

				} catch (IOException e) {
					e.printStackTrace();
				}
			} else { // 수정할 파일 없음

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

		// 방금 작성한 이력서의 seq를 가져온다
		int resumeseq = service.getseq(dto);
		System.out.println(resumeseq);

		System.out.println(dto.toString());

		// 학력사항 관련 테이블 update
		if (highdto != null) {

			if (highdto.getHighschool() == null || highdto.getHighschool().equals("")) {
			} else {

				highdto.setResumeseq(resumeseq);
				boolean b = service.updateHigh(highdto);
				boolean c = service.updateProgress(resumeseq);

				System.out.println("11111111111111111111111111111111111111111111111111111111111111111111111111111"
						+ highdto.toString());
			}
		}
		
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"+unidto.toString());
		
		// 학력사항 관련 테이블 update
		if (unidto.getUniversity() == null) {
		}else {
			for (int i = 0; i < unidto.getUniversity().length; i++) {

				if (unidto.getUniversity()[i] == null || unidto.getUniversity()[i].equals("")) {
				} else {

					Resume_UniversityVo univo = new Resume_UniversityVo();
					unidto.setResumeseq(resumeseq);
					univo.setUniversity(unidto.getUniversity()[i]);
					univo.setUniv_status(unidto.getUniv_status()[i]);
					univo.setUniv_str(unidto.getUniv_str()[i]);
					univo.setUniv_str_status(unidto.getUniv_str_status()[i]);
					univo.setUniv_end(unidto.getUniv_end()[i]);
					univo.setUniv_end_status(unidto.getUniv_end_status()[i]);
					univo.setUniv_major_field(unidto.getUniv_major_field()[i]);
					univo.setUniv_major(unidto.getUniv_major()[i]);
					univo.setUniv_night(unidto.getUniv_night()[i]);
					univo.setUniv_grade(unidto.getUniv_grade()[i]);
					univo.setUniv_grade_base(unidto.getUniv_grade_base()[i]);
					univo.setUniv_paper(unidto.getUniv_paper()[i]);
					System.out
							.println("22222222222222222222222222222222222222222222222222222222222222222222222222222222"
									+ univo.toString());

					boolean b = service.updateUni(univo);
					boolean c = service.updateProgress(resumeseq);
					System.out.println(b);
					System.out.println(c);
				}
			}
		}
		// 경력사항 관련 테이블 update
		System.out.println(careerdto.toString());

		if (careerdto.getPre_comname() == null) {
		}else {
			for (int i = 0; i < careerdto.getPre_comname().length; i++) {

				if (careerdto.getPre_comname()[i] == null || careerdto.getPre_comname()[i].equals("")) {
				} else {
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
					carvo.setPre_reason(careerdto.getPre_reason()[i]);

					System.out.println("3333333333333333333333333333333333333333333333333333333333333333333333333333333"
							+ carvo.toString());

				    boolean b = service.deleteCareerResume(resumeseq); 
					boolean c = service.writeCareer(carvo);
					boolean d = service.updateProgress(resumeseq);
					System.out.println(b);
					System.out.println(c);
					System.out.println(d);
				}
			}
		}

		// 자격증관련 사항 테이블 update
		System.out.println(licdto.toString());
		if (licdto.getLic_name() == null) {
		} else {
			for (int i = 0; i < licdto.getLic_name().length; i++) {

				if (licdto.getLic_date()[i] == null || licdto.getLic_date()[i].equals("")) {
					System.out.println("널임");
				} else {

					Resume_licenseVo licvo = new Resume_licenseVo();
					licvo.setResumeseq(resumeseq);
					/* licvo.setLic_type(licdto.getLic_type()[i]); */
					licvo.setLic_date(licdto.getLic_date()[i]);
					licvo.setLic_name(licdto.getLic_name()[i]);
					licvo.setLic_publisher(licdto.getLic_publisher()[i]);
					licvo.setLic_pass(licdto.getLic_pass()[i]);

					System.out.println(
							"44444444444444444444444444444444444444444444444444444444444444444444444444444444444"
									+ licvo.toString());

					boolean b = service.deleteLicenseResume(resumeseq);
					boolean c = service.writeLic(licvo);
					boolean d = service.updateProgress(resumeseq);
					System.out.println(b);
					System.out.println(c);
					System.out.println(d);
				}
			}
		}
		// 대외활동관련 사항 테이블 update
		System.out.println(actdto.toString());
		if (actdto.getAct_str() == null) {
		}else {
			for (int i = 0; i < actdto.getAct_str().length; i++) {

				if (actdto.getAct_str()[i] == null || actdto.getAct_str()[i].equals("")) {
				} else {
					Resume_ActivityVo actvo = new Resume_ActivityVo();
					actvo.setResumeseq(resumeseq);
					actvo.setAct_field(actdto.getAct_field()[i]);
					actvo.setAct_org(actdto.getAct_org()[i]);
					actvo.setAct_str(actdto.getAct_str()[i]);
					actvo.setAct_end(actdto.getAct_end()[i]);
					actvo.setAct_detail(actdto.getAct_detail()[i]);

					System.out.println(
							"55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555"
									+ actvo.toString());

					boolean b = service.deleteActivityResume(resumeseq);
					boolean c = service.writeAct(actvo);
					boolean d = service.updateProgress(resumeseq);
					System.out.println(b+"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
					System.out.println(c);
					System.out.println(d);
				}
			}
		}
		// 수상관련 사항 테이블 update
		System.out.println(awarddto.toString());
		if (awarddto.getAwd_name() == null) {
		} else {
			for (int i = 0; i < awarddto.getAwd_name().length; i++) {

				if (awarddto.getAwd_name()[i] == null || awarddto.getAwd_name()[i].equals("")) {
				} else {
					Resume_AwardVo awdvo = new Resume_AwardVo();
					awdvo.setResumeseq(resumeseq);
					awdvo.setAwd_name(awarddto.getAwd_name()[i]);
					awdvo.setAwd_date(awarddto.getAwd_date()[i]);
					awdvo.setAwd_org(awarddto.getAwd_org()[i]);

					System.out.println(
							"66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666"
									+ awdvo.toString());

					boolean b = service.deleteAwardResume(resumeseq); 
					boolean c = service.writeAward(awdvo);
					boolean d = service.updateProgress(resumeseq);
					System.out.println(b);
					System.out.println(c);
					System.out.println(d);
				}
			}
		}

		//어학관련 사항 업데이트
		System.out.println(landto.toString());
		if (landto.getLan_exam() == null) {
		} else {
			for (int i = 0; i < landto.getLan_exam().length; i++) {
				if (landto.getLan_exam()[i] == null || landto.getLan_exam()[i].equals("")) {
				} else {

					Resume_LanguageVo lanvo = new Resume_LanguageVo();
					lanvo.setResumeseq(resumeseq);
					lanvo.setLan_kind(landto.getLan_kind()[i]);
					lanvo.setLan_exam(landto.getLan_exam()[i]);
					lanvo.setLan_score(landto.getLan_score()[i]);
					lanvo.setLan_grade(landto.getLan_grade()[i]);
					lanvo.setLan_pass(landto.getLan_pass()[i]);
					lanvo.setLan_date(landto.getLan_date()[i]);

					System.out.println(
							"7777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777"
									+ lanvo.toString());

					boolean b = service.deleteLanResume(resumeseq); 
					boolean c = service.writeLan(lanvo);
					boolean d = service.updateProgress(resumeseq);
					System.out.println(b);
					System.out.println(c);
					System.out.println(d);
				}
			}
		}
		
		// 이력서 리스트 가져오기
		List<ResumeDto> resumelist = service.getresume(dto.getMemberid());
		List<ResumeDto> resumeNolist = service.getNoresume(dto.getMemberid());
		List<ApplyDto> applylist = service.getApplyList(dto.getMemberid());
		List<Resume_Portfolio> portlist = service.getPortfolio(dto.getMemberid());
		List<ResumeParam> param = new ArrayList<ResumeParam>();

		for (int i = 0; i < applylist.size(); i++) {

			ResumeParam pa = new ResumeParam();

			pa.setApplyseq(applylist.get(i).getApplyseq());
			pa.setJobseq(applylist.get(i).getJobseq());
			pa.setResumeseq(applylist.get(i).getResumeseq());
			pa.setApplydate(applylist.get(i).getApplydate());
			pa.setCompanyread(applylist.get(i).getCompanyread());

			int jobseq = applylist.get(i).getJobseq();
			String jobtitle = service.getJobtitle(jobseq);
			pa.setJobtitle(jobtitle);

			int resumeseqs = applylist.get(i).getResumeseq();
			String resumetitle = service.getResumeTitle(resumeseqs);
			pa.setResumetitle(resumetitle);

			param.add(pa);
		}

		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);
		model.addAttribute("portlist", portlist);
		model.addAttribute("param", param);

		return "resume/resumeMain";
	}

	//공고 지원하기
	@RequestMapping(value = "jobApply.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String getMyResume(int jobseq, int resumeseq, String memberid, int portfolioseq, Model model) {

		ApplyDto param = new ApplyDto();

		param.setJobseq(jobseq);
		param.setMemberid(memberid);
		param.setResumeseq(resumeseq);
		param.setPortfolioseq(portfolioseq);

		RecruitDto dto = recruitservice.getRecruitListOne(jobseq);
		List<String> list = recruitservice.getBsnameForDetail(jobseq);
		List<ResumeDto> resumelist = service.getresume(memberid);
		List<Resume_Portfolio> portlist = service.getPortfolio(memberid);

		dto.setBusname(list);
	
		boolean b = service.addApply(param);

		model.addAttribute("dto", dto);
		model.addAttribute("resumelist", resumelist);
		model.addAttribute("portlist", portlist);

		return "recruit/recruitDetail";

	}
	
	//이력서 삭제
	@RequestMapping(value = "cancelApply.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String cancelApply(int seq, String memberid, Model model) {

	
		boolean c = service.cancelApply(seq);
		System.out.println(c);
		

		// 이력서 리스트
		List<ResumeDto> resumelist = service.getresume(memberid);
		List<ResumeDto> resumeNolist = service.getNoresume(memberid);
		List<ApplyDto> applylist = service.getApplyList(memberid);
		List<Resume_Portfolio> portlist = service.getPortfolio(memberid);
		List<ResumeParam> param = new ArrayList<ResumeParam>();

		for (int i = 0; i < applylist.size(); i++) {

			ResumeParam pa = new ResumeParam();

			pa.setApplyseq(applylist.get(i).getApplyseq());
			pa.setJobseq(applylist.get(i).getJobseq());
			pa.setResumeseq(applylist.get(i).getResumeseq());
			pa.setApplydate(applylist.get(i).getApplydate());
			pa.setCompanyread(applylist.get(i).getCompanyread());

			int jobseq = applylist.get(i).getJobseq();
			String jobtitle = service.getJobtitle(jobseq);
			pa.setJobtitle(jobtitle);

			int resumeseq = applylist.get(i).getResumeseq();
			String resumetitle = service.getResumeTitle(resumeseq);
			pa.setResumetitle(resumetitle);

			param.add(pa);
		}

		model.addAttribute("resumelist", resumelist);
		model.addAttribute("resumeNolist", resumeNolist);
		model.addAttribute("portlist", portlist);
		model.addAttribute("param", param);

		return "resume/resumeMain";
	}
		
		//기업 이력서 상세 정보(디테일) 보기
		@RequestMapping(value = "Resumedetail2.do", method = { RequestMethod.GET, RequestMethod.POST })

		public String Resumedetail2(int seq, Model model) {

			System.out.println("seq=" + seq);
			ResumeDto dto = service.getResumeDetail(seq);
			Resume_HighschoolDto highdto = service.getHighDetail(seq);
			List<Resume_UniversityVo> unilist = service.getUniDetail(seq);
			List<Resume_CareerVo> calist = service.getCareerDetail(seq);
			List<Resume_licenseVo> liclist = service.getLicDetail(seq);
			List<Resume_ActivityVo> actlist = service.getActDetail(seq);
			List<Resume_AwardVo> awdlist = service.getAwdDetail(seq);
			List<Resume_LanguageVo> lanlist = service.getlanDetail(seq);

			//열람여부 확인
			boolean b = service.updateReadCount(seq);
			System.out.println("기업 열람 여부 =" +b);
			
			model.addAttribute("dto", dto);
			model.addAttribute("highdto", highdto);
			model.addAttribute("unilist", unilist);
			model.addAttribute("calist", calist);
			model.addAttribute("liclist", liclist);
			model.addAttribute("actlist", actlist);
			model.addAttribute("awdlist", awdlist);
			model.addAttribute("lanlist", lanlist);

			return "resume/Resumedetail";
		}
		
		//포트폴리오 추가하기
		@RequestMapping(value = "writeportfolio.do", method = { RequestMethod.GET, RequestMethod.POST })
		public String writeportfolio(Resume_Portfolio dto, @RequestParam(value = "fileload", required = false) MultipartFile fileload,
				HttpServletRequest req, Model model) {

			System.out.println("fileload : " + fileload);
			System.out.println(dto.toString());
			
			if(!fileload.isEmpty()) {
				System.out.println("안비었다");
	        // filename 취득
	        String filename = fileload.getOriginalFilename();
	        dto.setPortfolioname(filename);    // 원본 파일명을 설정
	        
	        // upload 경로 설정
	        // server(tomcat)
	        String fupload = req.getServletContext().getRealPath("/upload");
	        
	        // 폴더
	        // String fupload = "d:\\tmp";
	        
	        System.out.println("fupload:" + fupload);
	        System.out.println(dto.getPortfolioname());
	        // 파일명 변경 처리
	        String newfilename = PdsUtil.getNewFileName(dto.getPortfolioname());        
	        dto.setNewportfolioname(newfilename);
	        
	        File file = new File(fupload + "/" + newfilename); 
	        
	        try {
	            // 실제로 업로드 되는 부분
	            FileUtils.writeByteArrayToFile(file, fileload.getBytes());
	            
	            // db에 저장
	            service.writePortfolio(dto);
	            
	        } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
			}
			
			else {
				dto.setPortfolioname("");
				dto.setNewportfolioname("");
				System.out.println("비었다");
				service.writePortfolio(dto);
			}
	        

			// 이력서 리스트
			List<ResumeDto> resumelist = service.getresume(dto.getMemberid());
			List<ResumeDto> resumeNolist = service.getNoresume(dto.getMemberid());
			List<ApplyDto> applylist = service.getApplyList(dto.getMemberid());
			List<Resume_Portfolio> portlist = service.getPortfolio(dto.getMemberid());
			List<ResumeParam> param = new ArrayList<ResumeParam>();

			for (int i = 0; i < applylist.size(); i++) {

				ResumeParam pa = new ResumeParam();

				pa.setApplyseq(applylist.get(i).getApplyseq());
				pa.setJobseq(applylist.get(i).getJobseq());
				pa.setResumeseq(applylist.get(i).getResumeseq());
				pa.setApplydate(applylist.get(i).getApplydate());
				pa.setCompanyread(applylist.get(i).getCompanyread());

				int jobseq = applylist.get(i).getJobseq();
				String jobtitle = service.getJobtitle(jobseq);
				pa.setJobtitle(jobtitle);

				int resumeseq = applylist.get(i).getResumeseq();
				String resumetitle = service.getResumeTitle(resumeseq);
				pa.setResumetitle(resumetitle);

				param.add(pa);
			}

			model.addAttribute("resumelist", resumelist);
			model.addAttribute("resumeNolist", resumeNolist);
			model.addAttribute("portlist", portlist);
			model.addAttribute("param", param);

			return "resume/resumeMain";

		}
		
		//이력서 작성 페이지 이동
		@RequestMapping(value = "writeport.do", method = { RequestMethod.GET, RequestMethod.POST })

		public String writeport() {

			return "resume/writeport";
		}
		
		 @RequestMapping(value = "downport.do", method = {RequestMethod.GET, RequestMethod.POST})
	    public String fileDownload(String newfilename, String filename, int seq, HttpServletRequest req, Model model) {
	        
	        // 경로
	        // server
	        String fupload = req.getServletContext().getRealPath("/upload");
	        
	        // 폴더
	    //    String fupload = "d:\\tmp";
	        
	        File downloadFile = new File(fupload + "/" + newfilename);
	        
	        model.addAttribute("downloadFile", downloadFile);
	        model.addAttribute("originalFile", filename);
	        model.addAttribute("seq", seq);
	        
	        return "ResumeDownloadView";
	    }
			

}
