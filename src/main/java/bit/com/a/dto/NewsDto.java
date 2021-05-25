package bit.com.a.dto;

public class NewsDto {

	private String title;
	private String link;
	
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

	public NewsDto(String title, String link) {
		super();
		this.title = title;
		this.link = link;
	}

	@Override
	public String toString() {
		return "NewsDto [title=" + title + ", link=" + link + "]";
	}
	
	
	
}
