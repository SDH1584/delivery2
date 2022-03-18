package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.JinUserDao;
import com.javaex.vo.BusinessVo;

@Service
public class JinUserService {
	
	@Autowired
	private JinUserDao jinUserDao;
	
	
	public List<BusinessVo> stroeList(int sotrecateno){
		
		return jinUserDao.stroeList(sotrecateno);
	}
	
}
