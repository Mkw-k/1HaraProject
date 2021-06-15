package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.RecruitReplyDao;
import bit.com.a.dto.RecruitReplyDto;
import bit.com.a.dto.replyDto;

@Repository
public class RecruitReplyDaoImpl implements RecruitReplyDao {
	
	@Autowired
	SqlSession session;
	
	String ns = "RecruitReply."; 
	
	@Override
	public boolean insertRecruitReply(RecruitReplyDto dto) {
		int i = session.insert(ns + "insertRecruitReply", dto);
		return i > 0? true:false;
	}
	
	
	@Override
	public List<RecruitReplyDto> list(int jobseq) {
		return session.selectList(ns+"readReply", jobseq);
	}
}
