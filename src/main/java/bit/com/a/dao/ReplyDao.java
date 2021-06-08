package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.replyDto;

public interface ReplyDao {

	List<replyDto> list(int jobtalkseq);

	void readCount(int replyseq);

}
