package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.NoticeDto;
import bit.com.a.dto.NoticeParam;

public interface NoticeDao {

	List<NoticeDto> getNoticeList(NoticeParam notice);
	int getNoticeCount(NoticeParam notice);
	
	
}
