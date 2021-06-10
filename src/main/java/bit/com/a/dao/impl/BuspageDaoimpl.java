package bit.com.a.dao.impl;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.BuspageDao;
import bit.com.a.dto.BusinessDto;

@Repository
public class BuspageDaoimpl implements BuspageDao {

	@Inject
	private SqlSession sqlSession; 	// mapper 위치까지 접근가능 그러나 mapper가 여러개일수있음 -> mapper구분 필요
	
	//mapper구분하는 값 namespace
	private static final String namespace = "Business.";

	@Override
	public boolean updateBuspage(BusinessDto dto) {
		
		return sqlSession.update(namespace + "updateBuspage", dto)>0? true:false;
	}

	
	// 회원 정보 뿌려주는곳
	@Override
	public String getbuspage(BusinessDto dto) {
		
		return sqlSession.selectOne(namespace + "getBuspage", dto );
	}
	
	
	
	
}
