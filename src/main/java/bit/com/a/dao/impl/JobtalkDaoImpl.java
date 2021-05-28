package bit.com.a.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class JobtalkDaoImpl {
	
	@Autowired
	SqlSession session;
	
	String ns = "Jobtalk.";
}
