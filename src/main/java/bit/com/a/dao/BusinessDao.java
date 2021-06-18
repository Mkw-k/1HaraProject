package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.BusinessDto;

public interface BusinessDao {

	int getId(BusinessDto bus);

	boolean addmember(BusinessDto bus);

	BusinessDto login(BusinessDto dto);

	void businessDelete(BusinessDto dto);

	List<BusinessDto> getBusinessList();

	void admin_business_forced_evictionCheck(BusinessDto dto) throws Exception;

}
