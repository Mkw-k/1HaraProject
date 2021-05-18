package bit.com.a.service;

import java.util.List;


import bit.com.a.dto.NoticeDto;
import bit.com.a.dto.NoticeParam;

public interface NoticeService {

	List<NoticeDto> getNoticelist(NoticeParam notice);
	int getNoticeCount(NoticeParam notice);

}
