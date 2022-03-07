package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.AddressVo;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	// 사용자 회원가입
	public int customerJoin(UserVo userVo, AddressVo addressVo) {
		System.out.println("userService/customerJoin");
		
		userDao.insertCustomer(userVo);
		addressVo.setNo(userVo.getNo());
		return userDao.insertAddress(addressVo);
	}

	// 가게 회원가입
	public int storeJoin(UserVo userVo, BusinessVo businessVo) {
		System.out.println("userService/storeJoin");
		
		userDao.insertStore(userVo);
		businessVo.setNo(userVo.getNo());
		return userDao.insertStoreInfo(businessVo);
	}

	// 사용자 로그인
	public UserVo customerLogin(UserVo userVo) {
		System.out.println("userService/userLogin");

		return userDao.selectCustomer(userVo);
	}
}
