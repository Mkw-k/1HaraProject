package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.ApplyDto;
import bit.com.a.dto.ApplyParam;
import bit.com.a.dto.BusinessDto;
import bit.com.a.dto.RecruitDto;

public interface BuspageDao {

	boolean updateBuspage(BusinessDto dto);

	BusinessDto getbuspage(BusinessDto dto);

	public List<RecruitDto> getMyrecruitList(String memberid);

	public List<ApplyParam> getApplylist(int jobseq);
}
