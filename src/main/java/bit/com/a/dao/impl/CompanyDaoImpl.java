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

	@Override
	public boolean companywrite(CompanyDto dto) {
		int n = session.insert(ns + "companywrite" , dto);
		return n>0?true:false;
	}

	@Override
	public boolean companyupdate(CompanyDto dto) {
		return session.update(ns + "companyupdate", dto)>0? true:false;
		
	}

	
}
