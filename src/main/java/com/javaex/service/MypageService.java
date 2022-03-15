package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MypageDao;
import com.javaex.vo.OrderListVo;

@Service
public class MypageService {

	@Autowired
	private MypageDao mypageDao;
	
	// 주문내역 리스트
	public List<OrderListVo> getOrderList(int no) {
		System.out.println("mypageService/getOrderList");
		return mypageDao.selectOrderList(no);
	}
	
	// 주문 상세 페이지
	public List<OrderListVo> getOrderDetail(OrderListVo orderListVo) {
		System.out.println("mypageService/getOrderDetail");
		return mypageDao.selectOrderDetail(orderListVo);
	}
	
}
