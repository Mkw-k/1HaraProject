package bit.com.a.dao.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import bit.com.a.dao.ResumeDao;


@Repository
public class ResumeDaoImpl implements ResumeDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "Resume.";


	@Override
	public boolean writeResume(Map<String, Object> param) {
		// TODO Auto-generated method stub
		int i = session.insert(ns + "writeResume", param);
		
        return i>0?true:false;	
	}
	
	

	
}
