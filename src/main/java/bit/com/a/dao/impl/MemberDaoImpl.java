package bit.com.a.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.MemberDao;
import bit.com.a.dto.MemberDto;

@Repository	// = 저장소
public class MemberDaoImpl implements MemberDao {

	@Autowired		// DI
	SqlSession sqlSession;		// SqlSession sqlSession = new SqlSessiontemplate();
	
	String namespace = "Member.";
		
	@Override
	public int getId(MemberDto mem) {		
		return sqlSession.selectOne(namespace + "getId", mem);
	}
	
	@Override
	public boolean addmember(MemberDto mem) {		
		int n = sqlSession.insert(namespace + "addmember", mem);		
		return n>0?true:false;
	}

	@Override
	public MemberDto login(MemberDto dto) {
		MemberDto mem = sqlSession.selectOne(namespace + "login", dto);
		return mem;
	}

	@Override
	public void memberDelete(MemberDto dto) {
		sqlSession.delete(namespace + "memberDelete", dto);		
	}

	//회원 인증 관련 메소드
    //버튼을 클릭한 회원의 정보를 회원 테이블에 저장해서 사용할 수 있게 함
	/*@Override
	public void authentication(MemberDto dto) {
		sqlSession.insert("Member.authentication", dto);
		
	}*/
	
	//회원 인증 관련 메소드
    //버튼을 클릭한 회원의 정보를 회원 테이블에 저장해서 사용할 수 있게 함
	/*@Override
	public void authentication(MemberDto dto) {
		sqlSession.insert("Member.authentication", dto);
		
	}*/
	
}









