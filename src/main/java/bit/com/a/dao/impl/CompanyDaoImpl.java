package bit.com.a.dao.impl;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.CompanyDao;
import bit.com.a.dto.CompanyDto;


@Repository
public class CompanyDaoImpl implements CompanyDao {

	@Autowired
	SqlSession session;
	
	String ns = "Company.";
	


	
	@Override
	public CompanyDto getCompany(String companyid) {
		
		return session.selectOne(ns + "getCompany" , companyid);
	}

	
}
