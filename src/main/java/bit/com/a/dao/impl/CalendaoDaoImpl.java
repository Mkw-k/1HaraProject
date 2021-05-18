package bit.com.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bit.com.a.dao.CalendarDao;
import bit.com.a.dto.CalendarDto;

@Repository
public class CalendaoDaoImpl implements CalendarDao {

	@Autowired
	SqlSession session;
	
	String ns = "Cal.";
	
	@Override
	public List<CalendarDto> getCalendarList(CalendarDto cal) {		
		return session.selectList(ns + "getCalendar", cal);		
	}
	
	@Override
	public boolean calwrite(CalendarDto cal) {
		int n = session.insert(ns + "calwrite", cal);
		return n>0?true:false;
	}

	@Override
	public CalendarDto getCal(int seq) {
		return session.selectOne(ns + "getCal", seq);
	}

	@Override
	public void updateCal(CalendarDto cal) {
		session.update(ns + "calupdate", cal);
		
	}

	@Override
	public void deletecal(int seq) {
		session.delete(ns + "caldelete", seq);
		
	}

}




