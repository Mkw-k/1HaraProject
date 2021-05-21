package bit.com.a;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
	
	private static Logger logger = LoggerFactory.getLogger(HelloController.class);
		
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("HelloController home() " + new Date());
				
		return "home";
	}	
	
	//마동석 굿즈 홍보 팝업
		@RequestMapping(value = "ad.do", method = RequestMethod.GET)
		public String ad(Model model) {
			logger.info("HelloController home() " + new Date());
					
			return "ad1";
		}
		
	//찾아 오시는 길
		@RequestMapping(value = "info.do", method = RequestMethod.GET)
		public String info(Model model) {
			logger.info("HelloController home() " + new Date());
					
			return "info";
		}
	
		@RequestMapping(value = "infoyakgwan.do", method = RequestMethod.GET)
		public String infoyakgwan(Model model) {
			logger.info("HelloController home() " + new Date());
					
			return "infoyakgwan";
		}
	
					
		
}











