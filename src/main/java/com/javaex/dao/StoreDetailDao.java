package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.OrderVo;

@Repository
public class StoreDetailDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<OrderVo> reservList() {
		
		List<OrderVo> rList = sqlSession.selectList("storeDetail.reservList");
		System.out.println(rList);
		
		return rList;
	}
	
	public OrderVo attend(OrderVo orderVo) {
		
		OrderVo attendVo = sqlSession.selectOne("storeDetail.attend", orderVo);
		
		return attendVo;
	}
}
