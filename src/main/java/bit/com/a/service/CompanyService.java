package bit.com.a.service;


import bit.com.a.dto.CompanyDto;

public interface CompanyService {


	CompanyDto getCompany(String companyid);

	boolean companywrite(CompanyDto dto);

	boolean companyupdate(CompanyDto dto);


	
}
