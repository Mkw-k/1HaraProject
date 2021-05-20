package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.FAQDto;

public interface FAQDao {
	List<FAQDto> getmemberFAQ();
	
	boolean writeFAQ(FAQDto dto);
}
