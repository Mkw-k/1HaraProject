package bit.com.a.service;

import bit.com.a.dto.BusinessDto;

public interface BusinessService {

	int getId(BusinessDto bus);

	boolean addmember(BusinessDto bus);

	BusinessDto login(BusinessDto dto);


}
