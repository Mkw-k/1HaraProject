package bit.com.a.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.RecruitDao;
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
	
	
}
