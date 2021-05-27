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
	
	@Override
	public boolean uploadNotice(NoticeDto dto) {
		return dao.uploadNotice(dto);
	}
	
	@Override
	public NoticeDto getNotice(int seq) {
		return dao.getNotice(seq);
	}
	
	@Override
	public void readcount(int seq) {
		dao.readcount(seq);
	}

	@Override
	public boolean updateNotice(NoticeDto noticedto) {
		dao.updateNotice(noticedto);
		return dao.updateNotice(noticedto);
	}

	@Override
	public void deleteNotice(int seq) {
		dao.deleteNotice(seq);
	}
	
	
}
