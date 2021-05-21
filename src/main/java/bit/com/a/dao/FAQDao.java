package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.FAQDto;

public interface FAQDao {
	List<FAQDto> getmemberFAQ();
	List<FAQDto> getcompanyFAQ();	
	List<FAQDto> getcommonFAQ();
	boolean writeFAQ(FAQDto dto);
	FAQDto getFAQ(int seq);
	void updateFAQ(FAQDto dto);
}
