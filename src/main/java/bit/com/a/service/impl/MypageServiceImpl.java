package bit.com.a.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import bit.com.a.dao.MypageDao;
import bit.com.a.dto.MemberDto;
import bit.com.a.service.MypageService;

@Service
public class MypageServiceImpl implements MypageService {

	
	
	
	//DB와 연결 (의존주입)
		@Inject
		private MypageDao dao;
		
		
		@Override
		public MemberDto getMypage(String memberid) {
			// TODO Auto-generated method stub
			return dao.getMypage(memberid);
		}


		@Override
		public void updateMypage(MemberDto dto) {
			
			dao.updateMypage(dto);
			
		}
		
		
		/*
		 * //회원가입
		 * 
		 * @Override public void insertMember(MemberDto dto) { //컨트롤러 -> 서비스 호출 -> DAO
		 * 호출 -> Mapper -> DB System.out.println("S : 회원가입() 실행"); if(dto == null) {
		 * //처리 return; } dao.insertMember(dto); }
		 * 
		 * //로그인기능
		 * 
		 * @Override public MemberDto loginMember(MemberDto dto) {
		 * System.out.println("S : 컨트롤러에서 호출받으면 필요한 정보를 받아서 DAO로 전달"); MemberDto
		 * returnDto = null; try { returnDto = dao.readMemberWithIDPW(dto.getMemberid(),
		 * dto.getPwd()); } catch (Exception e) { e.printStackTrace(); returnDto = null;
		 * //실행하다 문제가 생겼을때 해당 데이터를 보내지않겠다는 의미 = 예외처리 } return returnDto; //null이 반환되면 앞의
		 * 코드가 문제가 있다는 것을 바로 알수있다. }
		 * 
		 * //회원정보보기
		 * 
		 * @Override public MemberDto readMember(String id) {
		 * System.out.println("S : readMember()실행"); MemberDto dto = null;
		 * 
		 * try { dto = dao.readMember(id); } catch (Exception e) { e.printStackTrace();
		 * }
		 * 
		 * return dto; }
		 * 
		 * //회원정보수정
		 * 
		 * @Override public void updateMember(MemberDto dto) { try {
		 * dao.updateMember(dto); } catch (Exception e) { e.printStackTrace(); } }
		 * 
		 * //회원정보삭제
		 * 
		 * @Override public void deleteMember(MemberDto dto) { try {
		 * dao.deleteMember(dto); } catch (Exception e) { e.printStackTrace(); } }
		 */

	
	
}
