package bit.com.a.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.com.a.dao.ResumeDao;

import bit.com.a.service.ResumeService;

@Service
public class ResumeServiceImpl implements ResumeService {
	

	@Autowired
	ResumeDao dao;

	@Override
	public boolean writeResume(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return dao.writeResume(param);
	}
	
	
	
	

	
}
