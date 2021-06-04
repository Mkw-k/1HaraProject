package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.MemberDto;

public interface MypageDao {
		
		//뿌려주는것 
	
		public String getMypage(MemberDto dto);
		
		public void updateMypage(MemberDto dto);
		
		/*
		 * //C: 회원가입 public void insertMember(MemberDto dto);
		 * 
		 * //R: 회원 정보 조회 - 사용자 ID 해당하는 정보 가져오기 public MemberDto readMember(String
		 * userid) throws Exception;
		 * 
		 * //R: 회원 정보 조회 - ID,PW정보에 해당하는 사용자 정보 public MemberDto
		 * readMemberWithIDPW(String userid,String userpw) throws Exception;
		 * 
		 * //U: 회원정보수정 public void updateMember(MemberDto dto) throws Exception;
		 * 
		 * //D: 회원탈퇴 public void deleteMember(MemberDto dto) throws Exception;
		 */
}
