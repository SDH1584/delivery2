package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BusinessVo;
import com.javaex.vo.OrderVo;

@Repository
public class OrderDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<OrderVo> getList(BusinessVo bVo){
		System.out.println("[OrderDao.getList()]");
		List<OrderVo> orderList = sqlSession.selectList("order.selectOrderList", bVo);
		return orderList;
	}
	
	public BusinessVo getBiz(BusinessVo bVo) {
		System.out.println("[OrderDao.getBiz()]");
		
		BusinessVo bizVo = sqlSession.selectOne("order.selectBiz", bVo);
		return bizVo;
	}

}
