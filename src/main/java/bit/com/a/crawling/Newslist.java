package bit.com.a.crawling;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


import bit.com.a.dto.NewsDto;


public class Newslist {

	public static List<NewsDto> getNewsData() throws IOException {

		// 사이트 링크 받는곳
		Document doc = Jsoup.connect("https://sports.news.naver.com/wfootball/index.nhn").get();

		// 제목 // > 안에속한다 https://newline.tistory.com/47 참조
		Elements titles = doc.select("ul.home_news_list > li > a > span");

		// 내용
		Elements links = doc.select("ul.home_news_list > li > a");

		// 리스트 생성
		List<NewsDto> list = new ArrayList<NewsDto>();

		for (int i = 0; i < 10; i++) {
			Element title = titles.get(i);
			Element link = links.get(i);

			// a태그 사용하기위한 코드
			String text = links.attr("href");

			String t = title.text();

			NewsDto vo = new NewsDto();

			vo.setTitle(t);
			vo.setLink(text);

			list.add(vo);

			System.out.println("타이틀:" + titles);
		}
		return list;
	}
}
/*
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 사이트 링크 받는곳
		Document doc = Jsoup.connect("https://sports.news.naver.com/wfootball/index.nhn").get();
		
		//제목							//  > 안에속한다 	https://newline.tistory.com/47 참조
		Elements titles = doc.select("ul.home_news_list > li > a > span");
		
		//내용
		Elements links = doc.select("ul.home_news_list > li > a");
			
		//리스트 생성 
		List<NewsDto> list = new ArrayList<NewsDto>();
		
		
		for(int i = 0 ; i < 10 ; i++) {
			Element title = titles.get(i);
			Element link = links.get(i);
			
			// a태그 사용하기위한 코드
			String text = links.attr("href");
		
			String t = title.text();
						
			NewsDto vo = new NewsDto();
			
			vo.setTitle(t);
			vo.setLink(text);
			
			list.add(vo);
		
		System.out.println("타이틀:" + titles);
		}
		
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("list").forward(req, resp);
		
	
	
	}
}
*/
