package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.StoreDetailDao;
import com.javaex.vo.OrderVo;

@Service
public class StoreDetailService {

	@Autowired
	private StoreDetailDao storeDetailDao;

	public List<OrderVo> reservList(int storeNo) {

		List<OrderVo> rList = storeDetailDao.reservList(storeNo);

		return rList;
	}

	public Integer attend(OrderVo orderVo) {

		Integer resultNo = storeDetailDao.attend(orderVo);
		System.out.println("service: " + resultNo);

		if (resultNo == 0) {

			return 0;

		} else {
			
			return 1;
		}
	}

	public OrderVo host(OrderVo orderVo) {

		OrderVo hostVo = storeDetailDao.host(orderVo);

		return hostVo;
	}
	
	public OrderVo attendee(OrderVo orderVo) {

		OrderVo attendeeVo = storeDetailDao.host(orderVo);

		return attendeeVo;
	}
}
