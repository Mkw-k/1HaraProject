package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.PdsDto;

public interface PdsDao {

	List<PdsDto> getPdsList();

	boolean uploadPds(PdsDto pdsdto);

	void readcount(int seq);

	PdsDto getPds(int seq);


}
