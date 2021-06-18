package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.RecruitReplyDto;

public interface RecruitReplyService  {

	boolean insertreply(RecruitReplyDto dto);

	List<RecruitReplyDto> list(int i);
	
	

}
