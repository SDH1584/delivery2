package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BusinessDao;
import com.javaex.vo.BusinessVo2;

@Service
public class BusinessService {
	
	@Autowired
	private BusinessDao businessDao;
	
	public BusinessVo2 storeEdiForm(int storeNo) {
		
		System.out.println("BusinessService/storeEdiForm");
		System.out.println(storeNo);
		return businessDao.getUser(storeNo);
	}
}
