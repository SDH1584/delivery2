package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BusinessVo;

@Repository
public class JinUserDao {
	
	
	@Autowired
	private SqlSession sqlSession;
	
	//스토어 리스트
	public List<BusinessVo> stroeList(int sotrecateno){
		
		return sqlSession.selectList("Jinuser.stroeList",sotrecateno);
		
	}
}
