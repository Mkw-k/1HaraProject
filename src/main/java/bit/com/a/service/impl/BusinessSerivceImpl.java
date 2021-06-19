package bit.com.a.service.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import bit.com.a.dao.BusinessDao;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.MemberDto;
import bit.com.a.service.BusinessService;

@Service
public class BusinessSerivceImpl implements BusinessService{

	@Autowired
	BusinessDao dao;
	
	@Autowired
	private HttpSession session;


	@Override
	public int getId(BusinessDto bus) {
		return dao.getId(bus);
	}
	
	@Override
	public boolean addmember(BusinessDto bus) {
		return dao.addmember(bus);
	}

	@Override
	public void businessDelete(BusinessDto dto) {
		dao.businessDelete(dto);
	}
	
	@Override
	public List<BusinessDto> getBusList() {
		return dao.getBusinessList();
	}
	
	@Override
	public void admin_business_forced_evictionCheck(BusinessDto dto) throws Exception {
		dao.admin_business_forced_evictionCheck(dto);
	}

	@Override
	public ModelAndView login(BusinessDto dto, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=utf-8");
		
		ModelAndView mav = new ModelAndView();
	
		BusinessDto member = dao.login(dto);
		PrintWriter out = response.getWriter();
		
		if (member != null) {
			session.setAttribute("loginId", member.getMemberid());
			mav.addObject("loginMember",member);	//setAttribute와 같은 기능. 뷰에서 사용할 데이터를 사용하기 위해서 저장할 수 있음. request 영역에서 데이터가 유지됨.
			mav.setViewName("main");
		} else {
			out.println("<script> alert('아이디 또는 비밀번호가 틀립니다.');");
			out.println("history.go(-1); </script>");
			out.close();
		}
		return mav;	
	}
	
}
