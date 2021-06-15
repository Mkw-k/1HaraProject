package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.ApplyDto;
import bit.com.a.dto.ApplyParam;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.RecruitDto;

public interface BuspageService {

	
	
	// 뿌려주는곳
	public BusinessDto getbuspage(BusinessDto dto);
	
	boolean updateBuspage(BusinessDto dto);

	public List<RecruitDto> getMyrecruitList(String memberid);

	public List<ApplyParam> getApplylist(int jobseq);



}
