package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BusinessVo2;

@Repository
public class BusinessDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//한명 회원 정보 가져오기
		public BusinessVo2 getUser(int storeNo) {
			
			System.out.println("[BusinessDao.getUser");
			System.out.println(storeNo);
			return sqlSession.selectOne("Business.getUser", storeNo);
		}
}
