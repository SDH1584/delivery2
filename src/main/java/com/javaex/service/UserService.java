package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;

	// 사용자 회원가입
	public int customerJoin(UserVo userVo) {
		System.out.println("userService/customerJoin");
		
		return userDao.insertCustomer(userVo);
	}
	 
}
