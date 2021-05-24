package bit.com.a.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.RecruitDao;
import bit.com.a.dto.BbsParam;
import bit.com.a.dto.RecruitDto;
import bit.com.a.service.RecruitService;

@Service
public class RecruitServiceImpl implements RecruitService{

	@Autowired
	RecruitDao dao;

	@Override
	public boolean writeRecruit(RecruitDto dto) {
		return dao.writeRecruit(dto);
	}

	@Override
	public List<RecruitDto> getallRecruitlist() {
		return dao.getallRecruitlist();
	}

	@Override
	public int getRecruitCount(BbsParam param) {
		return dao.getRecruitCount(param);
	}

	@Override
	public List<RecruitDto> getRecruitPagingList(BbsParam param) {
		return dao.getRecruitPagingList(param);
	}

	@Override
	public RecruitDto getRecruitListOne(int jobseq) {
		return dao.getRecruitListOne(jobseq);
	}

	@Override
	public boolean deleteRecruit(int jobseq) {
		return dao.deleteRecruit(jobseq);
	}
	
	
}
