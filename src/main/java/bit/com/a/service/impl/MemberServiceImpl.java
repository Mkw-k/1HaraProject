package bit.com.a.service.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import bit.com.a.dao.MemberDao;
import bit.com.a.dto.MemberDto;
import bit.com.a.service.MemberService;

@Service	// controller, dao 중간에 위치.... DB데이터 가공
public class MemberServiceImpl implements MemberService {

	@Autowired				
	MemberDao memberDao;	// MemberDao memberDao = new MemberDaoImpl();
	
	@Autowired
	private HttpSession session;
	/*
	@Override
	public List<MemberDto> allMember() {		
		return memberDao.allMember();
	}
	*/

	@Override
	public int getId(MemberDto mem) {		
		return memberDao.getId(mem);		
	}
	
	@Override
	public boolean addmember(MemberDto mem) {		
		return memberDao.addmember(mem);		
	}

	@Override
	public ModelAndView login(MemberDto dto, HttpServletResponse response) throws IOException {	
			response.setContentType("text/html; charset=utf-8");
		
			ModelAndView mav = new ModelAndView();
		
			MemberDto member = memberDao.login(dto);
			PrintWriter out = response.getWriter();
			
			if (member != null) {
				session.setAttribute("login", member);
				mav.addObject("login", member);	//setAttribute와 같은 기능. 뷰에서 사용할 데이터를 사용하기 위해서 저장할 수 있음. request 영역에서 데이터가 유지됨.
				mav.setViewName("home");
			} else {
				out.println("<script> alert('아이디 또는 비밀번호가 틀립니다.');");
				out.println("history.go(-1); </script>");
				out.close();
			}
			return mav;	
	}

	@Override
	public void memberDelete(MemberDto dto) {
		memberDao.memberDelete(dto);
	}

	@Override
	public List<MemberDto> getMemberList() {
		return memberDao.getMemberList();
	}
	/*
	 * @Override public void authentication(MemberDto dto) {
	 * memberDao.authentication(dto);
	 * 
	 * }
	 */

	@Override
	public void admin_member_foced_evictionCheck(MemberDto dto) throws Exception {
		memberDao.admin_member_forced_evictionCheck(dto);
		
	}

	@Override
	public MemberDto kakaoLogin(MemberDto dto) {
		return memberDao.kakaoLogin(dto);
	}

	@Override
	public String getKakaoPwd(String memberid) {
		return memberDao.getKakaoPwd(memberid);
	}

	
}





