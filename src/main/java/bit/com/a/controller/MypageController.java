package bit.com.a.controller;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.HelloController;

@Controller
public class MypageController {
	
	private static Logger logger = LoggerFactory.getLogger(HelloController.class);
	
	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public String mypage(Model model) {
		logger.info("MypageController mypage() " + new Date());
		
		return "mypage";
		
	}

}
