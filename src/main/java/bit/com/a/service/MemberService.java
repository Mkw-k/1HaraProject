package bit.com.a.service;

import bit.com.a.dto.MemberDto;

public interface MemberService {

	//List<MemberDto> allMember();
	
	int getId(MemberDto mem);
	boolean addmember(MemberDto mem);
	
	MemberDto login(MemberDto dto);
	//public void authentication(MemberDto dto);        //회원 인증관련 메소드
	void memberDelete(MemberDto dto);
	
}
