package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.JobtalkDto;
import bit.com.a.dto.JobtalkParam;

public interface JobtalkDao {

	List<JobtalkDto> getJobtalklist(JobtalkParam job);	
	
	int getJobtalkCount(JobtalkParam job);
	
	boolean writeJobtalk(JobtalkDto dto);
	
	JobtalkDto getJobtalk(int seq);
	
	void readCount(int seq);
	
	// 답글
	boolean replyJobtalkUpdate(JobtalkDto job);
	
	boolean replyJobtalkInsert(JobtalkDto job);
	
	void deleteJobtalk(int seq);
	
	void updateJobtalk(JobtalkDto job);
	
	
}