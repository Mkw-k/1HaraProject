package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.JobtalkDao;
import bit.com.a.dto.BbsDto;
import bit.com.a.dto.BbsParam;
import bit.com.a.dto.JobtalkDto;
import bit.com.a.dto.JobtalkParam;


@Repository
public class JobtalkDaoImpl implements JobtalkDao {
	
	@Autowired
	SqlSessionTemplate session;
	
	String ns = "Jobtalk.";
		
	@Override
	public List<JobtalkDto> getJobtalklist(JobtalkParam job) {		
		return session.selectList(ns + "Jobtalklist", job);
	}

	@Override
	public int getJobtalkCount(JobtalkParam job) {		
		return session.selectOne(ns + "getJobtalkCount", job);
	}

	@Override
	public boolean writeJobtalk(JobtalkDto dto) {
		int n = session.insert(ns + "writeJobtalk", dto);
		return n>0?true:false;
	}
	
	@Override
	public JobtalkDto getJobtalk(int seq) {		
		return session.selectOne(ns + "getJobtalk", seq);
	}
	
	@Override
	public void readCount(int seq) {
		session.update(ns + "readCount", seq);
	}
	
	@Override
	public boolean replyJobtalkUpdate(JobtalkDto job) {		
		session.update(ns+"replyJobtalkUpdate", job);
		return true; 
	}

	@Override
	public boolean replyJobtalkInsert(JobtalkDto job) {
		session.insert(ns+"replyJobtalkInsert", job);
		return true;
	}
	
	@Override
	public void deleteJobtalk(int seq) {
		session.update(ns+"deleteJobtalk", seq);
	}
	
	@Override
	public void updateJobtalk(JobtalkDto job) {
		session.update(ns+"updateJobtalk", job);
	}
}
