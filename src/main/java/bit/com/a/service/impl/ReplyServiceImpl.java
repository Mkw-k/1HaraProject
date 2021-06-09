package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.ReplyDao;
import bit.com.a.dto.replyDto;
import bit.com.a.service.ReplyService;


@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDao dao;
	
	@Override
	public List<replyDto> list(int jobtalkseq) {
		// TODO Auto-generated method stub
		return dao.list(jobtalkseq);
	}

	@Override
	public void readCount(int replyseq) {
		dao.readCount(replyseq);
	}

	@Override
	public boolean insertreply(replyDto dto) {
		return dao.insertreply(dto);
	}
}
