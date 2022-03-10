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
		System.out.println(no);
		return mypageDao.selectOrderList(no);
	}
	
}
