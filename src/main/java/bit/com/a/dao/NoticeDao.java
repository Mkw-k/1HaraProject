package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.NoticeDto;
import bit.com.a.dto.NoticeParam;
import bit.com.a.dto.PdsDto;

public interface NoticeDao {

	List<NoticeDto> getNoticeList(NoticeParam notice);
	int getNoticeCount(NoticeParam notice);
	boolean uploadNotice(NoticeDto dto);
	NoticeDto getNotice(int seq);
	void readcount(int seq);
	
	
}
