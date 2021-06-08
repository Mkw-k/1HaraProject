package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.ReplyDao;
import bit.com.a.dto.replyDto;

@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Autowired
	SqlSession sqlsession;
	
	String namespace="Reply.";
	
	@Override
	public List<replyDto> list(int jobtalkseq) {
		return sqlsession.selectList(namespace+"readReply", jobtalkseq);
	}
	
	@Override
	public void readCount(int replyseq) {
		sqlsession.update(namespace + "reply_count", replyseq);
	}
	
	@Override
	public boolean insertreply(replyDto dto) {
		int i = sqlsession.insert(namespace + "insertReply", dto);
		return i > 0 ? true:false;
	}
	

}
