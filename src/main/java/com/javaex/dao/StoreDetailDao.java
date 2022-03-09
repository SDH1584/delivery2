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
		System.out.println(rList);

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

	public OrderVo host(OrderVo orderVo) {

		OrderVo hostVo = sqlSession.selectOne("storeDetail.host", orderVo);
		System.out.println("Dao: " + orderVo);

		return hostVo;

	}

	public OrderVo attendee(OrderVo orderVo) {

		OrderVo attendeeVo = sqlSession.selectOne("storeDetail.attendee", orderVo);
		System.out.println("Dao: " + attendeeVo);

		return attendeeVo;

	}

}
