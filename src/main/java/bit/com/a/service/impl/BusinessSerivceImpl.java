package bit.com.a.service.impl;

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

	
	
	
}
