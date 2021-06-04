package bit.com.a.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.BusinessDao;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.MemberDto;

@Repository
public class BusinessDaoImpl implements BusinessDao{

	@Autowired
	SqlSession sqlsession;
	
	String namespace = "Business.";
	
	@Override
	public int getId(BusinessDto bus) {
		return sqlsession.selectOne(namespace + "getId", bus);
	}
	
	@Override
	public boolean addmember(BusinessDto bus) {
		int n = sqlsession.insert(namespace + "addmember", bus);
		return n>0?true:false;
	}
	
	@Override
	public BusinessDto login(BusinessDto dto) {
		BusinessDto bus = sqlsession.selectOne(namespace + "login", dto);
		return bus;
	}
	
	@Override
	public void businessDelete(BusinessDto dto) {
		sqlsession.delete(namespace + "businessDelete", dto);
	}
	
}
