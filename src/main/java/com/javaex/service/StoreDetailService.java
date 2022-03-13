package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.OrderDao;
import com.javaex.dao.StoreDetailDao;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.OrderVo;
import com.javaex.vo.POrderVo;

@Service
public class StoreDetailService {

	@Autowired
	private StoreDetailDao storeDetailDao;
	@Autowired
	private OrderDao orderDao;

	public List<OrderVo> reservList(int storeNo) {

		List<OrderVo> rList = storeDetailDao.reservList(storeNo);

		return rList;
	}

	public Integer attend(OrderVo orderVo) {

		Integer pOrderNo = storeDetailDao.attend(orderVo);

		if (pOrderNo == null) {

			return 0;

		} else {

			return 1;

		}
	}

	public int attendVfy(OrderVo orderVo) {

		int attendVfy = storeDetailDao.attendVfy(orderVo);

		return attendVfy;
	}

	public Map<String, Object> menuList(OrderVo orderVo) {

		// 해당 오더 주문정보 가져오기
		OrderVo pOrderVo = storeDetailDao.personalOrder(orderVo);

		// 개인 주문정보(메뉴) 가져오기
		POrderVo pMenuVo = storeDetailDao.pOrderMenu(orderVo);

		// 개인 주문정보(옵션) 가져오기
		List<POrderVo> pOptionList = storeDetailDao.pOrderOption(orderVo);

		// 가게 정보 가져오기
		int storeNo = orderVo.getStoreNo();
		BusinessVo bizInfoVo = storeDetailDao.bizInfo(storeNo);

		// 메뉴리스트 가져오기
		List<MenuOptionVo> menuCateList = orderDao.getMenuCateList(storeNo);
		List<MenuOptionVo> menuList = orderDao.getMenuList(storeNo);

		Map<String, Object> orderInfoMap = new HashMap<String, Object>();
		orderInfoMap.put("pMenuVo", pMenuVo);
		orderInfoMap.put("pOptionList", pOptionList);
		orderInfoMap.put("pOrderVo", pOrderVo);
		orderInfoMap.put("bizInfoVo", bizInfoVo);
		orderInfoMap.put("menuCateList", menuCateList);
		orderInfoMap.put("menuList", menuList);

		return orderInfoMap;

	}

}
