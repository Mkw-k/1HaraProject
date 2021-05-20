package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.FAQDao;
import bit.com.a.dto.FAQDto;

@Service
public class FAQDaoImpl implements FAQDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "FAQ.";

	@Override
	public List<FAQDto> getmemberFAQ() {
		// TODO Auto-generated method stub
		return session.selectList(ns + "getmemberFAQ");	
	}
	
   @Override
    public boolean writeFAQ(FAQDto dto) {
        int i = session.insert(ns + "writeFAQ", dto);
        return i>0?true:false;
    }

}
