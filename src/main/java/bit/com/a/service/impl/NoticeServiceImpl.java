package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.NoticeDao;
import bit.com.a.dto.NoticeDto;
import bit.com.a.dto.NoticeParam;
import bit.com.a.service.NoticeService;


@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDao dao;
	
	@Override
	public List<NoticeDto> getNoticelist(NoticeParam notice) {
		return dao.getNoticeList(notice);
	}

	@Override
	public int getNoticeCount(NoticeParam notice) {
		return dao.getNoticeCount(notice);
	}

	
	
}
