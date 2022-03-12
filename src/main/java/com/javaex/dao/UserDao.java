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

	// 사용자 정보 저장(프로필 이미지 없을 때)
	public int insertCustomerDefault(UserVo userVo) {
		System.out.println("userDao/insertCustomerDefault");

		return sqlSession.insert("user.insertCustomerDefault", userVo);
	}

	// 사용자 정보 저장(프로필 이미지 있을 때)
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

		return sqlSession.insert("user.insertStore", userVo);
	}

	// 가게 상세 정보 추가(로고 이미지 있을 때)
	public int insertStoreInfoDefault(BusinessVo businessVo) {
		System.out.println("userDao/insertStoreInfoDefault");

		return sqlSession.insert("user.insertStoreInfoDefault", businessVo);
	}

	// 가게 상세 정보 추가(로고 이미지 있을 때)
	public int insertStoreInfo(BusinessVo businessVo) {
		System.out.println("userDao/insertStoreInfo");

		return sqlSession.insert("user.insertStoreInfo", businessVo);
	}

	// 아이디 가져오기(중복 확인)
	public UserVo selectId(UserVo userVo) {
		System.out.println("userDao/selectId");
		System.out.println(userVo);
		return sqlSession.selectOne("user.selectId", userVo);
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
