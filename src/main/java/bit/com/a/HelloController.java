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

		/*
		 * @RequestMapping(value = "login1.do", method =
		 * {RequestMethod.GET,RequestMethod.POST}) public String login1(Model model) {
		 * logger.info("HelloController login1() " + new Date()); return "login"; }
		 */
		@RequestMapping(value = "infoemail.do", method = RequestMethod.GET)
		public String infoemail(Model model) {
			logger.info("HelloController home() " + new Date());

			return "infoemail";
		}

		@RequestMapping(value = "infowebaccess.do", method = RequestMethod.GET)
		public String infowebaccess(Model model) {
			logger.info("HelloController home() " + new Date());

			return "infowebaccess";
		}


		@RequestMapping(value = "infobanner.do", method = RequestMethod.GET)
		public String infobanner(Model model) {
			logger.info("HelloController home() " + new Date());

			return "infobanner";
		}

		@RequestMapping(value = "musicplayer.do", method = RequestMethod.GET)
		public String musicplayer(Model model) {
			logger.info("HelloController home() " + new Date());

			return "musicplayer";
		}


		@RequestMapping(value = "infomember.do", method = RequestMethod.GET)
		public String infomember(Model model) {
			logger.info("HelloController home() " + new Date());

			return "infomember";
		}

		@RequestMapping(value = "jobtalk.do", method = RequestMethod.GET)
		public String jobtalk(Model model) {
			logger.info("HelloController home() " + new Date());

			return "jobtalk";
		}	

		@RequestMapping(value = "jobdetail.do", method = RequestMethod.GET)
		public String jobdetail(Model model) {
			logger.info("HelloController home() " + new Date());

			return "jobdetail";
		}

		@RequestMapping(value = "jobsearch.do", method = RequestMethod.GET)
		public String jobsearch(Model model) {
			logger.info("HelloController home() " + new Date());

			return "jobsearch";
		}

		@RequestMapping(value ="regiclick1.do", method = RequestMethod.GET)
		public String regiclick1(Model model) {
			logger.info("HelloController regiclcick1() " + new Date());
			return "regiclick";
		}


}
