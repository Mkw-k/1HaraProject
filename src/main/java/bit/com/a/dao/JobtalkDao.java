package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.JobtalkDto;
import bit.com.a.dto.JobtalkParam;

public interface JobtalkDao {

	List<JobtalkDto> getNoticeList(JobtalkParam notice);
	int getNoticeCount(JobtalkParam notice);
	boolean uploadNotice (JobtalkDto dto);
	JobtalkDto getNotice(int seq);
	void readcount(int seq);
	boolean updateNotice(JobtalkDto noticedto);
	void deleteNotice(int seq);
	
	
}