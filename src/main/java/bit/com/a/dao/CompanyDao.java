package bit.com.a.dao;


import bit.com.a.dto.CompanyDto;


public interface CompanyDao {


	CompanyDto getCompany(String companyid);

	boolean companywrite(CompanyDto dto);  

	

}
