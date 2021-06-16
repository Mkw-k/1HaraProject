package bit.com.a.dto;

public class Resume_Portfolio {
	private int portfolioseq;
	private String memberid;
	private String Portfolioname;
	private String newportfolioname;
	
	public int getPortfolioseq() {
		return portfolioseq;
	}
	public void setPortfolioseq(int portfolioseq) {
		this.portfolioseq = portfolioseq;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getPortfolioname() {
		return Portfolioname;
	}
	public void setPortfolioname(String portfolioname) {
		Portfolioname = portfolioname;
	}
	public String getNewportfolioname() {
		return newportfolioname;
	}
	public void setNewportfolioname(String newportfolioname) {
		this.newportfolioname = newportfolioname;
	}
	public Resume_Portfolio() {
		super();
	}
	public Resume_Portfolio(int portfolioseq, String memberid, String portfolioname, String newportfolioname) {
		super();
		this.portfolioseq = portfolioseq;
		this.memberid = memberid;
		Portfolioname = portfolioname;
		this.newportfolioname = newportfolioname;
	}
	@Override
	public String toString() {
		return "Resume_Portfolio [portfolioseq=" + portfolioseq + ", memberid=" + memberid + ", Portfolioname="
				+ Portfolioname + ", newportfolioname=" + newportfolioname + "]";
	}
	
	
}
