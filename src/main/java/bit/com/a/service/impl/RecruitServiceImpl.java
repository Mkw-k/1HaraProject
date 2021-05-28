package bit.com.a.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.RecruitDao;
import bit.com.a.dto.BbsParam;
import bit.com.a.dto.RecruitDto;
import bit.com.a.dto.RecruitParam;
import bit.com.a.service.RecruitService;

@Service
public class RecruitServiceImpl implements RecruitService{

	@Autowired
	RecruitDao dao;

	@Override
	public boolean writeRecruit(Map<String, Object> param) {
		return dao.writeRecruit(param);
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

	@Override
	public List<RecruitParam> buscodeListData() {
		return dao.buscodeListData();
	}

	@Override
	public List<RecruitParam> buscode2ListData(int buscode) {
		return dao.buscode2ListData(buscode);
	}

	@Override
	public List<RecruitParam> buscode3ListData(int buscode) {
		return dao.buscode3ListData(buscode);
	}

	@Override
	public List<String> getBsnameForDetail(int jobseq) {
		return dao.getBsnameForDetail(jobseq);
	}
	
	
}
