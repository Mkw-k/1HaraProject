package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.FAQDto;

public interface FAQDao {
	List<FAQDto> getmemberFAQ();
	List<FAQDto> getcompanyFAQ();	
	List<FAQDto> getcommonFAQ();
	boolean writeFAQ(FAQDto dto);
	FAQDto getFAQ(int seq);
	boolean updateFAQ(FAQDto dto);
	boolean deleteFAQ(int seq);
	List<FAQDto> getsearchFAQ(String search);
}
