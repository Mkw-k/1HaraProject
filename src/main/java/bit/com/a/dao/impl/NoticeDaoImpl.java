package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.NoticeDao;
import bit.com.a.dto.NoticeDto;
import bit.com.a.dto.NoticeParam;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	SqlSession session;
	
	String ns = "Notice.";
	
	@Override
	public List<NoticeDto> getNoticeList(NoticeParam notice) {
		return session.selectList(ns + "noticelist" , notice);
	}

	@Override
	public int getNoticeCount(NoticeParam notice) {
		return session.selectOne(ns + "getNoticeCount", notice);
	}
	
	@Override
	public boolean uploadNotice(NoticeDto dto) {
		int i = session.insert(ns + "uploadNotice", dto);
		return i>0?true:false;
	}

	
	
}
