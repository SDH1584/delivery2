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

	//메인정보가져오기
	public List<MainVo> getMain(MainVo mainVo) {
		System.out.println("getMain(dao)");
		
		return	sqlSession.selectList("main.getMain",mainVo);
	}
	//가게정보 읽기
	public List<MainVo> getStore() {
		System.out.println("getStore dao");
		System.out.println("get store d1!!!!!!!!!!!!!!!!!!!!!!!");
		return sqlSession.selectList("main.getStore");
	}
	
	//최근 가게 정보 가져오기
	public List<MainVo> getRecentStore(){
		System.out.println("getRecentStore dao");
		System.out.println("get!!!!!!recentSt");

		return sqlSession.selectList("main.getRecentStore");
	}
}
