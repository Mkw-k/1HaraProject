package bit.com.a.dao.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.BuspageDao;
import bit.com.a.dto.ApplyDto;
import bit.com.a.dto.ApplyParam;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.RecruitDto;

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
	public BusinessDto getbuspage(String memberid) {
		
		return sqlSession.selectOne(namespace + "getBuspage", memberid );
	}


	@Override
	public List<RecruitDto> getMyrecruitList(String memberid) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "getMyrecruitList", memberid );
	}


	@Override
	public List<ApplyParam> getApplylist(int jobseq) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + "getApplylist", jobseq );
	}
	
	
	
	
}
