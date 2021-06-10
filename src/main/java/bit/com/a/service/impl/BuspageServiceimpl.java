package bit.com.a.service.impl;



import javax.inject.Inject;

import org.springframework.stereotype.Service;

import bit.com.a.dao.BuspageDao;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.CompanyDto;
import bit.com.a.service.BuspageService;

@Service
public class BuspageServiceimpl implements BuspageService {

	@Inject
	private BuspageDao dao;
	
	@Override
	public boolean updateBuspage(BusinessDto dto) {
		
		return dao.updateBuspage(dto);
	}

	@Override
	public BusinessDto getbuspage(BusinessDto dto) {
		
		return dao.getbuspage(dto);
	}


}
