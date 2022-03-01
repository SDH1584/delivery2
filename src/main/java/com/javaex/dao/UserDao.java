package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	// 회원정보 가져오기 ->회원정보 수정폼
	public UserVo selectUser(int no) {
		System.out.println("userDao/selectUserByNo");
		
		return sqlSession.selectOne("user.selectUserByNo", no);
	}
	
}
