package bit.com.a;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.dto.MemberDto;
import bit.com.a.dto.RecruitDto;
import bit.com.a.service.RecruitService;

@Controller
public class HelloController {

	private static Logger logger = LoggerFactory.getLogger(HelloController.class);

	@Autowired
	RecruitService RecuService;
	
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("HelloController home() " + new Date());
		
		//메인페이지 프리미엄회원 공고용
		List<RecruitDto> list = RecuService.getNew6PreJob();
		
		//인기기업 TOP10 이름 가져오기 
		List<RecruitDto> hot10 = RecuService.getHot10Comname();
		
		model.addAttribute("list", list);
		model.addAttribute("hot10", hot10);
		
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


		@RequestMapping(value = "infomember.do", method = RequestMethod.GET)
		public String infomember(Model model) {
			logger.info("HelloController home() " + new Date());

			return "infomember";

		}

		@RequestMapping(value = "infocopyright.do", method = RequestMethod.GET)
		public String infocopyright(Model model) {
			logger.info("HelloController home() " + new Date());

			return "infocopyright";
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

		@RequestMapping(value ="idsearch.do", method = RequestMethod.GET)
		public String idsearch(Model model) {
			logger.info("HelloController idsearch() " + new Date());
			return "login/searchid";
		}
		
		@RequestMapping(value ="member_info.do", method = RequestMethod.GET)
		public String member_info(Model model) {
			logger.info("HelloController member_info() " + new Date());
			return "member_info";
		}
		
		@RequestMapping(value ="Maintest.do", method = RequestMethod.GET)
		public String Maintest(Model model) {
			logger.info("HelloController member_info() " + new Date());
			return "Maintest";
		}
		
		@RequestMapping(value ="musicplayer.do", method = RequestMethod.GET)
		public String musicplayer(Model model) {
			logger.info("HelloController member_info() " + new Date());
			return "musicplayer";
		}
		

}
