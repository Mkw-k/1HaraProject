package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import bit.com.a.dao.FAQDao;
import bit.com.a.dto.FAQDto;
import bit.com.a.service.FAQservice;

@Service
public class FAQServiceImpl implements FAQservice{
	@Autowired
	FAQDao dao;

	@Override
	public List<FAQDto> getmemberFAQ() {
		return dao.getmemberFAQ();
	}
	
	@Override
	public List<FAQDto> getcompanyFAQ() {
		return dao.getcompanyFAQ();
	}
	
	@Override
	public List<FAQDto> getcommonFAQ() {
		return dao.getcommonFAQ();
	}

	@Override
	public boolean writeFAQ(FAQDto dto) {
		// TODO Auto-generated method stub
		return dao.writeFAQ(dto);
	}

	@Override
	public FAQDto getFAQ(int seq) {
		// TODO Auto-generated method stub
		return dao.getFAQ(seq);
	}

	@Override
	public boolean updateFAQ(FAQDto dto) {
		// TODO Auto-generated method stub
		return dao.updateFAQ(dto);
	}

	@Override
	public boolean deleteFAQ(int seq) {
		// TODO Auto-generated method stub
		return dao.deleteFAQ(seq);
	}

	@Override
	public List<FAQDto> getsearchFAQ(String search) {
		// TODO Auto-generated method stub
		return dao.getsearchFAQ(search);
	}
	
	
}
