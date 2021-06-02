package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.JobtalkDto;
import bit.com.a.dto.JobtalkParam;

public interface JobtalkService {

	List<JobtalkDto> getJobtalklist(JobtalkParam job);

	int getJobtalkCount(JobtalkParam job);

	boolean writeJobtalk(JobtalkDto dto);
	
	JobtalkDto getJobtalk(int seq);

	void readCount(int seq);

	boolean reply(JobtalkDto job);

	void deleteJobtalk(int seq);

	void updateJobtalk(JobtalkDto job);

}
