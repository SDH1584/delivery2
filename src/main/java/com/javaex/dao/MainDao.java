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
	public List<MainVo> getList() {
		System.out.println("getList(dao)");
		return sqlSession.selectList("main.selectMarker");
	}
}
