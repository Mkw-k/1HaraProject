package bit.com.a.dao;

import java.util.List;

import bit.com.a.dto.RecruitReplyDto;

public interface RecruitReplyDao {

	boolean insertRecruitReply(RecruitReplyDto dto);

	List<RecruitReplyDto> list(int jobseq);

}
