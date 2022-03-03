package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	// 회원정보 저장
	public int insertCustomer(UserVo userVo) {
		System.out.println("userDao/insertCustomer");
		
		return sqlSession.insert("user.insertCustomer", userVo);
	}
	
}
