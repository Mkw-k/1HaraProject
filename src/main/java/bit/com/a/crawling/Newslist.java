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
		Document doc = Jsoup.connect("https://www.saramin.co.kr/zf_user/jobarchive/company-news").get();
		
		
		// 제목 // > 안에속한다 https://newline.tistory.com/47 참조
		Elements titles = doc.select("div.news_list table.news_contents_list tr.news_col td dl.news_contents dt a");

		// 내용
		Elements links = doc.select("div.news_list table.news_contents_list tr.news_col td dl.news_contents dt a");

		// 이미지
		
		String folder = doc.title();
		Elements imgs = doc.select("div.news_list table.news_contents_list tr.news_col td dl.news_contents dd.img a img");

		// 리스트 생성
		List<NewsDto> list = new ArrayList<NewsDto>();

		for (int i = 0; i < 14; i++) {
			if(imgs == null) {
				break;
			}
			Element title = titles.get(i);
			Element link = links.get(i);
			Element newsimg = imgs.get(i);
			
			
			
			// a태그 사용하기위한 코드
			String text = link.attr("href");
			
			// 이미지 테그안에있는 src 태그 안에 접근하는 코드
			String imgtext = newsimg.attr("src");

			// text 로 바꾸는 코드
			String t = title.text();
			/* String im = newsimg.text(); */
			
			NewsDto vo = new NewsDto();

			
			vo.setTitle(t);
			vo.setLink(text);
			vo.setNewsseq(i+1);
			vo.setNewsimg(imgtext);
			list.add(vo);
			
			System.out.println("이미징:" + newsimg);
			System.out.println("타이틀:" + titles);
		}
		return list;
	}
}

