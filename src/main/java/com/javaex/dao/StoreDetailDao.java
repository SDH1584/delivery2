package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.BusinessVo;
import com.javaex.vo.OrderVo;
import com.javaex.vo.POrderVo;

@Repository
public class StoreDetailDao {

	@Autowired
	private SqlSession sqlSession;

	public List<OrderVo> reservList(int storeNo) {

		List<OrderVo> rList = sqlSession.selectList("storeDetail.reservList", storeNo);

		return rList;
	}

	public Integer attend(OrderVo orderVo) {

		Integer pOrderNo = sqlSession.selectOne("storeDetail.attend", orderVo);
		// System.out.println("Dao: " + pOrderNo);

		return pOrderNo;

	}

	public int attendVfy(OrderVo orderVo) {

		int attendVfy = sqlSession.selectOne("storeDetail.attendVfy", orderVo);
		System.out.println("Dao.attendVfy: " + attendVfy);

		return attendVfy;
	}

	public OrderVo personalOrder(OrderVo orderVo) {

		OrderVo pOrderVo = sqlSession.selectOne("storeDetail.personalOrder", orderVo);
		System.out.println("Dao.personalOrder: " + pOrderVo);

		return pOrderVo;
	}

	public POrderVo pOrderMenu(OrderVo orderVo) {
		System.out.println("Dao.pOrderMenu: " + orderVo);

		POrderVo pMenuVo = sqlSession.selectOne("storeDetail.pOrderMenu", orderVo);
		System.out.println("Dao.pOrderMenu: " + pMenuVo);

		return pMenuVo;
	}

	public List<POrderVo> pOrderOption(OrderVo orderVo) {
		System.out.println("Dao.pOrderOption: " + orderVo);
		
		List<POrderVo> pOptionList = sqlSession.selectList("storeDetail.pOrderOption", orderVo);
		System.out.println("Dao.pOrderOption: " + pOptionList);

		return pOptionList;
	}

	public BusinessVo bizInfo(int storeNo) {

		BusinessVo bizInfoVo = sqlSession.selectOne("storeDetail.bizInfo", storeNo);
		System.out.println("Dao.bizInfo: " + bizInfoVo);

		return bizInfoVo;
	}

}
