package com.javaex.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.AddressVo;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;

	// 사용자 정보 저장
	public int insertCustomer(UserVo userVo) {
		System.out.println("userDao/insertCustomer");

		return sqlSession.insert("user.insertCustomer", userVo);
	}

	// 사용자 주소 저장
	public int insertAddress(AddressVo addressVo) {
		System.out.println("userDao/insertAddress");
		
		return sqlSession.insert("address.insertAddress", addressVo);
	}
	
	// 가게 정보 저장
	public int insertStore(UserVo userVo) {
		System.out.println("userDao/insertStore");
		System.out.println(userVo.toString());
		return sqlSession.insert("user.insertStore", userVo);
	}
	
	// 가게 상세 정보 저장
	public int insertStoreInfo(BusinessVo businessVo) {
		System.out.println("userDao/insertStoreInfo");
		System.out.println(businessVo.toString());
		return sqlSession.insert("user.insertStoreInfo", businessVo);
	}

	// 사용자 정보 가져오기(로그인)
	public UserVo selectCustomer(UserVo userVo) {
		System.out.println("userDao/selectCustomer");

		return sqlSession.selectOne("user.selectCustomer", userVo);
	}

	// 가게 정보 가져오기(로그인)
	public Map<String, Object> selectStore(UserVo userVo) {
		System.out.println("userDao/selectStore");
		
		return sqlSession.selectOne("user.selectStore", userVo);
	}
	
}
