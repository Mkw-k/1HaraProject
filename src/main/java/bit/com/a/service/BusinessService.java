package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.BusinessDto;

public interface BusinessService {

	int getId(BusinessDto bus);

	boolean addmember(BusinessDto bus);

	BusinessDto login(BusinessDto dto);

	void businessDelete(BusinessDto dto);

	List<BusinessDto> getBusList();

	void admin_business_forced_evictionCheck(BusinessDto dto) throws Exception;


}
