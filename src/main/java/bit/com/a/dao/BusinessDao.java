package bit.com.a.dao;

import bit.com.a.dto.BusinessDto;

public interface BusinessDao {

	int getId(BusinessDto bus);

	boolean addmember(BusinessDto bus);

	BusinessDto login(BusinessDto dto);

}
