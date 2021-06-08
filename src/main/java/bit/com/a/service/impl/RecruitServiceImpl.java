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

	/*
	 * @Override public int getRecruitCount(BbsParam param) { return
	 * dao.getRecruitCount(param); }
	 */

	@Override
	public List<RecruitDto> getRecruitPagingList(RecruitParam param) {
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

	@Override
	public List<RecruitDto> getCalendarList(RecruitParam param) {

		return dao.getCalendarList(param);
	}

	@Override
	public List<RecruitParam> areacodeListData() {
		return dao.areacodeListData();
	}

	@Override
	public int getArea1Code(String areaname) {
		return dao.getArea1code(areaname);
	}

	@Override
	public List<RecruitParam> areacode2ListData(int areacode) {
		return dao.areacode2ListData(areacode);
	}

	@Override
	public List<RecruitDto> getRecruitSearchList(Map<String, Object> map) {
		return dao.getRecruitSearchList(map);
	}

	@Override
	public boolean updateRecruit(Map<String, Object> param) {
		return dao.updateRecruit(param);
	}

	@Override
	public boolean deleteBuscode(int jobSeq) {
		return dao.deleteBuscode(jobSeq);
	}

	@Override
	public boolean insertBuscode(Map<String, Object> param) {
		return dao.insertBuscode(param);
	}

	@Override
	public int getRecruitCount(Map<String, Object> param) {
		return dao.getRecruitCount(param);
	}

	@Override
	public boolean mgDetailUpdate(RecruitDto dto) {
		return dao.mgDetailUpdate(dto);
	}

	@Override
	public boolean mgDetailUpdate2(RecruitDto dto) {
		return dao.mgDetailUpdate2(dto);
	}

	@Override
	public boolean favoriteJob(RecruitParam param) {
		return dao.favoriteJob(param);
	}

	@Override
	public int getJobFavorite(RecruitParam param) {
		return dao.getJobFavorite(param);
	}

	@Override
	public boolean dropFavoriteJob(RecruitParam param) {
		return dao.dropFavoriteJob(param);
	}

	@Override
	public List<RecruitDto> getCalendarList_1() {
		return dao.getCalendarList_1();
	}

}
