package bit.com.a.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bit.com.a.crawling.Newslist;
import bit.com.a.dto.NewsDto;

@Controller
public class NewsController {
	
	@RequestMapping(value = "newslist.do", method = RequestMethod.GET)
	public String newslist(Model model) {
		
		try {
			List<NewsDto> list = Newslist.getNewsData();
			model.addAttribute("list", list);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "news/news";
	}
	
}
