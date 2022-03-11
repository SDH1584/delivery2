package com.javaex.service;

import java.util.Map;

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

	// 사용자 회원가입 (프로필 이미지 없을 때)
	public int customerJoinDefault(UserVo userVo, AddressVo addressVo) {
		System.out.println("userService/customerJoin");

		userDao.insertCustomerDefault(userVo);
		addressVo.setNo(userVo.getNo());
		return userDao.insertAddress(addressVo);
	}

	// 사용자 회원가입 (프로필 이미지 있을 때)
	public int customerJoin(UserVo userVo, AddressVo addressVo) {
		System.out.println("userService/customerJoin");

		userDao.insertCustomer(userVo);
		addressVo.setNo(userVo.getNo());
		return userDao.insertAddress(addressVo);
	}

	// 가게 회원가입 (로고 이미지 없을 때)
	public int storeJoinDefault(UserVo userVo, BusinessVo businessVo) {
		System.out.println("userService/storeJoinDefault");
		
		userDao.insertStore(userVo);
		businessVo.setNo(userVo.getNo());
		return userDao.insertStoreInfoDefault(businessVo);
	}
	
	// 가게 회원가입 (로고 이미지 있을 때)
	public int storeJoin(UserVo userVo, BusinessVo businessVo) {
		System.out.println("userService/storeJoin");

		userDao.insertStore(userVo);
		businessVo.setNo(userVo.getNo());
		return userDao.insertStoreInfo(businessVo);
	}

	// 사용자 로그인
	public UserVo customerLogin(UserVo userVo) {
		System.out.println("userService/customerLogin");

		return userDao.selectCustomer(userVo);
	}

	// 가게 로그인
	public Map<String, Object> storeLogin(UserVo userVo) {
		System.out.println("userService/storeLogin");

		return userDao.selectStore(userVo);
	}
}
