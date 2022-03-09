package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.OrderDao;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.MenuOptionVo;
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
	
	/* 가게상세-메뉴리스트 가져오기 */
	public Map<String, Object> menuOptionList(int storeNo) {
		System.out.println("[OrderService.menuOptionList()]");
		
		BusinessVo bizVo=orderDao.getBiz(storeNo);
		List<MenuOptionVo> menuCateList = orderDao.getMenuCateList(storeNo);
		List<MenuOptionVo> menuList = orderDao.getMenuList(storeNo);
		List<MenuOptionVo> optionCateList = orderDao.getOptionCateList(storeNo);
		List<MenuOptionVo> optionList = orderDao.getOptionList(storeNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bizVo", bizVo);
		map.put("menuCateList", menuCateList);
		map.put("menuList", menuList);
		map.put("optionCateList", optionCateList);
		map.put("optionList", optionList);
		
		System.out.println(map);
		
		return map;
		
	}
	
}
