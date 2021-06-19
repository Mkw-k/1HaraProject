package bit.com.a.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import bit.com.a.dto.BusinessDto;


public interface BusinessService {

	int getId(BusinessDto bus);

	boolean addmember(BusinessDto bus);

	ModelAndView  login(BusinessDto dto, HttpServletResponse response) throws IOException;

	void businessDelete(BusinessDto dto);

	List<BusinessDto> getBusList();

	void admin_business_forced_evictionCheck(BusinessDto dto) throws Exception;


}
