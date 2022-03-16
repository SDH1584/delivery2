package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.MainVo;

@Repository
public class MainDao {

	@Autowired
	SqlSession sqlSession;

	// 가게리스트
	public List<MainVo> selectStoreList() {
		System.out.println("MainDao.selectStoreList()");
		return sqlSession.selectList("main.storeList");
	}
	
	
	// 가게정보 읽기
	public MainVo getStore(int storeNo) {
		System.out.println("MainDao.getStore()");
		return sqlSession.selectOne("main.getStore", storeNo);
	}

	
	// 메인정보가져오기
	public void getMain() {
		System.out.println("MainDao.getMain()");

		sqlSession.selectList("main.getMain");
	}

	
	
	// 최근 가게 정보 가져오기
	public List<MainVo> getRecentStore() {
		System.out.println("getRecentStore dao");

		return sqlSession.selectList("main.getRecentStore");
	}
}
