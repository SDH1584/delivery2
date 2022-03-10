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

	public List<OrderVo> reservList(int storeNo) {

		List<OrderVo> rList = sqlSession.selectList("storeDetail.reservList", storeNo);

		return rList;
	}

	public Integer attend(OrderVo orderVo) {

		OrderVo resultVo = sqlSession.selectOne("storeDetail.attend", orderVo);
		System.out.println("Dao: " + resultVo);

		if (resultVo == null) {

			return 0;

		} else {

			return 1;

		}

	}

	public OrderVo attendVfy(OrderVo orderVo) {
		System.out.println("Dao.attendVfy: " + orderVo);
		
		OrderVo hostVo = sqlSession.selectOne("storeDetail.attendVfy", orderVo);
		System.out.println("Dao.attendVfy: " + orderVo);

		return hostVo;

	}


}
