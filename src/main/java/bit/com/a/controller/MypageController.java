package bit.com.a.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.MemberDto;
import bit.com.a.service.MypageService;



public class MypageController {
	
	@Autowired
	// @Inject //서비스를 호출하기 위해서 의존성을 주입
	MypageService service;
	// JavaMailSender mailSender; //메일 서비스를 사용하기 위해 의존성을 주입함.

	/* 회원정보보기 */
	// http://localhost:8088/test/member/info
	@RequestMapping(value = "info.do", method = RequestMethod.GET)
	public void infoGET(HttpSession session, Model model) throws Exception{

		//세션 객체 안에 있는 ID정보 저장
		String id = (String) session.getAttribute("id");

		//서비스안의 회원정보보기 메서드 호출
		MemberDto dto = service.readMember(id);

		//정보저장 후 페이지 이동
		model.addAttribute("memDto", dto);
		
	}

	/* 회원정보 수정 */
	@RequestMapping(value="update.do", method = RequestMethod.GET)
	public String updateGET(HttpSession session, Model model) throws Exception{

		//세션 객체 안에 있는 ID정보 저장
		//String id = (String) session.getAttribute("id");
		//l.info("C: 회원정보수정 GET의 아이디 "+id);

		//서비스안의 회원정보보기 메서드 호출
		//MemberVO vo = service.readMember(id);

		//정보저장 후 페이지 이동
		//model.addAttribute("memVO", vo);

		//위의 3단계를 한 줄에 작성 가능
		model.addAttribute("memDto", service.readMember((String)session.getAttribute("id")));

		return "updateForm";
	}

	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String updatePOST(MemberDto dto) throws Exception{

		service.updateMember(dto);
		return "main";
	}

	/* 회원정보삭제 */
	// http://localhost:8088/test/member/delete

	@RequestMapping(value = "delete.do", method = RequestMethod.GET)
	public String deleteGET(HttpSession session) throws Exception{
		
		// 세션제어
		String id = (String) session.getAttribute("id");
		if(id == null) {
			return "redirect:/member/main";
		}
		return "deleteForm";			
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deletePOST(MemberDto dto, HttpSession session) throws Exception{
		
		//1. 파라미터값 저장
		// 2. 전달받은 정보를 가지고 삭제 동작 처리이동
		// 3. service 객체 - 동작
		service.deleteMember(dto);
		// 4. 세션초기화
		session.invalidate();
		// 5. 페이지 이동
		return "redirect:/member/main";			
	}
	
}
