package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.CalendarDto;

public interface CalendarService {

	List<CalendarDto> getCalendarList(CalendarDto cal);
	boolean calwrite(CalendarDto cal);
	CalendarDto getCal(int seq);
	void calupdate(CalendarDto cal);
	void deletecal(int seq);
}
