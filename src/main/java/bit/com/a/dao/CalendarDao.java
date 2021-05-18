package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.CalendarDto;

public interface CalendarDao {

	List<CalendarDto> getCalendarList(CalendarDto cal);

	boolean calwrite(CalendarDto cal);
	
	CalendarDto getCal(int seq);

	void updateCal(CalendarDto cal);

	void deletecal(int seq);
	
	
	
}
