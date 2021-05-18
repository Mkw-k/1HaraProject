package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.CalendarDao;
import bit.com.a.dto.CalendarDto;
import bit.com.a.service.CalendarService;

@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	CalendarDao dao;

	@Override
	public List<CalendarDto> getCalendarList(CalendarDto cal) {		
		return dao.getCalendarList(cal);		
	}

	@Override
	public boolean calwrite(CalendarDto cal) {
		return dao.calwrite(cal);
	}

	@Override
	public CalendarDto getCal(int seq) {
		return dao.getCal(seq);
	}

	@Override
	public void calupdate(CalendarDto cal) {
		dao.updateCal(cal);
	}

	@Override
	public void deletecal(int seq) {
		dao.deletecal(seq);
		
	}
	
	
}
