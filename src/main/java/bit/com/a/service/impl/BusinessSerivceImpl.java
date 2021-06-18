package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.BusinessDao;
import bit.com.a.dto.BusinessDto;
import bit.com.a.service.BusinessService;

@Service
public class BusinessSerivceImpl implements BusinessService{

	@Autowired
	BusinessDao dao;


	@Override
	public int getId(BusinessDto bus) {
		return dao.getId(bus);
	}
	
	@Override
	public boolean addmember(BusinessDto bus) {
		return dao.addmember(bus);
	}
	
	@Override
	public BusinessDto login(BusinessDto dto) {
		
		
		
		
		return dao.login(dto);
	}

	@Override
	public void businessDelete(BusinessDto dto) {
		dao.businessDelete(dto);
	}
	
	@Override
	public List<BusinessDto> getBusList() {
		return dao.getBusinessList();
	}
	
	@Override
	public void admin_business_forced_evictionCheck(BusinessDto dto) throws Exception {
		dao.admin_business_forced_evictionCheck(dto);
	}
	
}
