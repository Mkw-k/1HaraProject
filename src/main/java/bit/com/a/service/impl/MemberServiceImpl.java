package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import bit.com.a.dao.MemberDao;
import bit.com.a.dto.MemberDto;
import bit.com.a.service.MemberService;

@Service	// controller, dao 중간에 위치.... DB데이터 가공
public class MemberServiceImpl implements MemberService {

	@Autowired				
	MemberDao memberDao;	// MemberDao memberDao = new MemberDaoImpl();
	
	/*
	@Override
	public List<MemberDto> allMember() {		
		return memberDao.allMember();
	}
	*/

	@Override
	public int getId(MemberDto mem) {		
		return memberDao.getId(mem);		
	}
	
	@Override
	public boolean addmember(MemberDto mem) {		
		return memberDao.addmember(mem);		
	}

	@Override
	public MemberDto login(MemberDto dto) {	
		return memberDao.login(dto);		
	}

	@Override
	public void memberDelete(MemberDto dto) {
		memberDao.memberDelete(dto);
	}

	@Override
	public List<MemberDto> getMemberList() {
		return memberDao.getMemberList();
	}
	/*
	 * @Override public void authentication(MemberDto dto) {
	 * memberDao.authentication(dto);
	 * 
	 * }
	 */

	@Override
	public void admin_member_foced_evictionCheck(MemberDto dto) throws Exception {
		memberDao.admin_member_forced_evictionCheck(dto);
		
	}

	@Override
	public MemberDto kakaoLogin(MemberDto dto) {
		return memberDao.kakaoLogin(dto);
	}

	@Override
	public String getKakaoPwd(String memberid) {
		return memberDao.getKakaoPwd(memberid);
	}
	
}





