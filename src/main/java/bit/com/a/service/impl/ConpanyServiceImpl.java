package bit.com.a.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.CompanyDao;
import bit.com.a.dto.CompanyDto;

import bit.com.a.service.CompanyService;

@Service
public class ConpanyServiceImpl implements CompanyService {

	@Autowired
	CompanyDao dao;

	@Override
	public CompanyDto getCompany(String companyid) {		
		return dao.getCompany(companyid);
	}

	
	@Override
	public boolean companywrite(CompanyDto dto) {
		
		 return dao.companywrite(dto);
	}


	@Override
	public boolean companyupdate(CompanyDto dto) {
		return dao.companyupdate(dto);
	}

	


}
