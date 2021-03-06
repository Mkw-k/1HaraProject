package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.MemberDto;

public interface MemberDao {

	int getId(MemberDto mem);
	
	boolean addmember(MemberDto mem);
	
	MemberDto login(MemberDto dto);
	
	//void authentication(MemberDto dto);
	
	void memberDelete(MemberDto dto);
	List<MemberDto> getMemberList();
	void admin_member_forced_evictionCheck(MemberDto dto) throws Exception;

	MemberDto kakaoLogin(MemberDto dto);

	String getKakaoPwd(String memberid);
	
}
