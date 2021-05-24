package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.PdsDto;

public interface PdsDao {

	List<PdsDto> getPdsList();

	boolean uploadPds(PdsDto pdsdto);

	void readcount(int seq);

	PdsDto getPds(int seq);

	void downcount(int seq);

	boolean updatePds(PdsDto pdsdto);

	void deletePds(int seq);

}
