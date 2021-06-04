package bit.com.a.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.MemberDto;
import bit.com.a.service.MypageService;

@Controller
public class MypageController {

	@Autowired

	MypageService service;
	
	/*마이페이지*/
	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public String mypage() throws Exception {

		return "mypage";

	}
	
	/* 회원정보수정페이지*/
	
	@RequestMapping(value = "mypageUpdate.do", method = RequestMethod.GET)
	public String mypageUpdate() throws Exception {

		return "mypageUpdate";
	}
	
	@RequestMapping(value = "mypageUpdateAf.do", method = RequestMethod.GET)
	public String mypageUpdateAf(MemberDto dto) throws Exception {
		
		service.updateMypage(dto);
		
		System.out.println(dto.toString());
		
		return "mypage";
		
	}

	/*
	 * @RequestMapping(value = "mypageupdate.do", method = RequestMethod.GET) public
	 * String mypageupdate(HttpSession session, Model model) throws Exception {
	 * 
	 * model.Attributes("MemberDto", service.getMypage(dto))
	 * 
	 * 
	 * }
	 */

}