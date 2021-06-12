package bit.com.a.service;

import java.util.List;

import bit.com.a.dto.replyDto;

public interface ReplyService {
	
	List<replyDto> list(int jobtalkseq);

	void readCount(int replyseq);

	boolean insertreply(replyDto dto);

}
