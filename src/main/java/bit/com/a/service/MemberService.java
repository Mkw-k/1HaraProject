package bit.com.a.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import bit.com.a.dto.MemberDto;

public interface MemberService {

	//List<MemberDto> allMember();
	
	int getId(MemberDto mem);
	boolean addmember(MemberDto mem);
	//public void authentication(MemberDto dto);        //회원 인증관련 메소드
	void memberDelete(MemberDto dto);
	List<MemberDto> getMemberList();
	void admin_member_foced_evictionCheck(MemberDto dto) throws Exception;
	MemberDto kakaoLogin(MemberDto dto);
	String getKakaoPwd(String memberid);
	ModelAndView login(MemberDto dto, HttpServletResponse response) throws IOException;
	
}
