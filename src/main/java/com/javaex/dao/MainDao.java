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
	public List<MainVo> getList(MainVo mainVo) {
		System.out.println("getList(dao)");
		
		return	sqlSession.selectList("main.getMain",mainVo);
	}
	
	
	//최근 가게 정보 가져오기
	public MainVo getRecentStore(MainVo mainVo){
		System.out.println("getStoreTop dao");
	
		return sqlSession.selectOne("main.getRecentStore",mainVo);
	}
	//가게정보 읽기
	public List<MainVo> getStore(MainVo mainVo) {
	System.out.println("getStore dao");
	return sqlSession.selectOne("main.getStore",mainVo);
	}
}
