package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.PdsDto;

public interface PdsService {

	List<PdsDto> getPdsList();

	boolean uploadPds(PdsDto pdsdto);

	void readcount(int seq);

	PdsDto getPds(int seq);
	
	void downcount(int seq);

	boolean updatePds(PdsDto pdsdto);

	void deletePbs(int seq);
}
