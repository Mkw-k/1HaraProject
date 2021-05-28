package bit.com.a.dto;

public class NewsDto {

	private String title;
	private String link;
	private int newsseq;
	private String newsimg;
	
	public NewsDto() {
		// TODO Auto-generated constructor stub
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public int getNewsseq() {
		return newsseq;
	}

	public void setNewsseq(int newsseq) {
		this.newsseq = newsseq;
	}

	public String getNewsimg() {
		return newsimg;
	}

	public void setNewsimg(String newsimg) {
		this.newsimg = newsimg;
	}

	public NewsDto(String title, String link, int newsseq, String newsimg) {
		super();
		this.title = title;
		this.link = link;
		this.newsseq = newsseq;
		this.newsimg = newsimg;
	}

	@Override
	public String toString() {
		return "NewsDto [title=" + title + ", link=" + link + ", newsseq=" + newsseq + ", newsimg=" + newsimg + "]";
	}

	
	
}
