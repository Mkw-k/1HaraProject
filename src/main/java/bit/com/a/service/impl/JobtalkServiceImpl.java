package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import bit.com.a.dao.JobtalkDao;
import bit.com.a.dto.JobtalkDto;
import bit.com.a.dto.JobtalkParam;
import bit.com.a.service.JobtalkService;

public class JobtalkServiceImpl implements JobtalkService {

	@Autowired
	JobtalkDao dao;
	
	@Override
	public List<JobtalkDto> getJobtalklist(JobtalkParam job) {		
		return dao.getJobtalklist(job);
	}

	@Override
	public int getJobtalkCount(JobtalkParam job) {		
		return dao.getJobtalkCount(job);		
	}

	@Override
	public boolean writeJobtalk(JobtalkDto dto) {		
		return dao.writeJobtalk(dto);
	}

	@Override
	public JobtalkDto getJobtalk(int seq) {		
		return dao.getJobtalk(seq);
	}

	@Override
	public void readCount(int seq) {
		dao.readCount(seq);
	}

	@Override
	public boolean reply(JobtalkDto job) {
		boolean b1 = dao.replyJobtalkUpdate(job);
		boolean b2 = dao.replyJobtalkInsert(job);
		if(b1 == false || b2 == false) {
			return false;
		} 
		return b2;
	}

	@Override
	public void deleteJobtalk(int seq) {
		dao.deleteJobtalk(seq);
	}

	@Override
	public void updateJobtalk(JobtalkDto job) {
		// TODO Auto-generated method stub
		dao.updateJobtalk(job);
	}
	
}
