package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.FAQDto;

public interface FAQservice {
	List<FAQDto> getmemberFAQ();	
	boolean writeFAQ(FAQDto dto);
}
