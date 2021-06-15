package bit.com.a.service.impl;



import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import bit.com.a.dao.BuspageDao;
import bit.com.a.dto.ApplyDto;
import bit.com.a.dto.ApplyParam;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.CompanyDto;
import bit.com.a.dto.RecruitDto;
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

	@Override
	public List<RecruitDto> getMyrecruitList(String memberid) {

		return dao.getMyrecruitList(memberid);
	}

	@Override
	public List<ApplyParam> getApplylist(int jobseq) {
		// TODO Auto-generated method stub
		return dao.getApplylist(jobseq);
	}

	
}
