package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BusinessDao;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.DeliveryVo;
import com.javaex.vo.UserVo;

@Service
public class BusinessService {
	
	@Autowired
	private BusinessDao businessDao;
	
	public BusinessVo storeEdiForm(int storeNo) {
		
		System.out.println("BusinessService/storeEdiForm");
		System.out.println(storeNo);
		return businessDao.getUser(storeNo);
	}
	
	public UserVo getuser(int no){
		
		System.out.println("BusinessService/storeEdiForm/Userno");
		System.out.println(no);
		return businessDao.getuser(no);
	}

	
	//유저 정보수정
	public void modify(UserVo userVo) {
		System.out.println(userVo);
		businessDao.UserUpdate(userVo);
	}
	
	//가게정보수정
	public void Businessmodify(BusinessVo businessVo) {
		System.out.println(businessVo);
		businessDao.BusinessUpdate(businessVo);
	}
}
