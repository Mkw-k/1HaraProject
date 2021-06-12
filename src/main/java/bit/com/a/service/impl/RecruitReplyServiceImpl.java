package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.RecruitReplyDao;
import bit.com.a.dto.RecruitReplyDto;
import bit.com.a.dto.replyDto;
import bit.com.a.service.RecruitReplyService;

@Service
public class RecruitReplyServiceImpl implements RecruitReplyService {

	@Autowired
	RecruitReplyDao dao;
	

	@Override
	public boolean insertreply(RecruitReplyDto dto) {
		return dao.insertRecruitReply(dto);
	}
	
	@Override
	public List<RecruitReplyDto> list(int jobseq) {
		// TODO Auto-generated method stub
		return dao.list(jobseq);
	}

	
}
