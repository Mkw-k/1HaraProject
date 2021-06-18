package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.FAQDao;
import bit.com.a.dto.FAQDto;

@Repository
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
	public List<FAQDto> getcompanyFAQ() {
		// TODO Auto-generated method stub
		return session.selectList(ns + "getcompanyFAQ");	
	}
	
	@Override
	public List<FAQDto> getcommonFAQ() {
		// TODO Auto-generated method stub
		return session.selectList(ns + "getcommonFAQ");	
	}
	
   @Override
    public boolean writeFAQ(FAQDto dto) {
        int i = session.insert(ns + "writeFAQ", dto);
        return i>0?true:false;
    }

	@Override
	public FAQDto getFAQ(int seq) {
		// TODO Auto-generated method stub
		return session.selectOne(ns+ "getFAQ", seq);
	}

	@Override
	public boolean updateFAQ(FAQDto dto) {
		// TODO Auto-generated method stub
		 int i = session.insert(ns + "updateFAQ", dto);
	        return i>0?true:false;
	}

	@Override
	public boolean deleteFAQ(int seq) {
		// TODO Auto-generated method stub
		int i = session.delete(ns + "deleteFAQ", seq);
        return i>0?true:false;
	}

	@Override
	public List<FAQDto> getsearchFAQ(String search) {
		// TODO Auto-generated method stub
		return session.selectList(ns + "getsearchFAQ", search);	
	}
}
