package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.OrderDao;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.OrderVo;

@Service
public class OrderService {
	
	@Autowired
	OrderDao orderDao;
	
	/* 가게관리-메인-주문내역 */
	public Map<String,Object> orderList(int loginStoreNo){
		System.out.println("[OrderService.orderList()]");
		
		List<OrderVo> orderList = orderDao.getList(loginStoreNo);
		BusinessVo bizVo = orderDao.getBiz(loginStoreNo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderList", orderList);
		map.put("bizVo", bizVo);
		return map;
	}
	
	/* 가게관리-메인-가게활성화 */
	public BusinessVo storeOnOff(int loginStoreNo) {
		System.out.println("[OrderService.storeOnOff()]");
		
		orderDao.updateOnOff(loginStoreNo);
		return orderDao.getBiz(loginStoreNo);
	}
	
	/* 가게관리-메인-주문상태 변경 */
	public int orderStatus(OrderVo orderVo) {
		System.out.println("[OrderService.orderStatus()]");
		
		return orderDao.updateStatus(orderVo);
	}
	
}
