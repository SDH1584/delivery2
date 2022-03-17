package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MypageDao;
import com.javaex.vo.OrderListVo;
import com.javaex.vo.UserVo;

@Service
public class MypageService {

	@Autowired
	private MypageDao mypageDao;
	
	// 회원정보 수정폼
	public UserVo editForm(int no) {
		System.out.println("mypageService/editForm");
		return mypageDao.selectUserByNo(no);
	}
	
	// 회원정보 수정
	public int edit(UserVo userVo) {
		System.out.println("mypageService/edit");
		return mypageDao.update(userVo);
	}
	
	// 회원정보 수정(프로필 사진 없을 때)
	public int editDefault(UserVo userVo) {
		System.out.println("mypageService/edit");
		return mypageDao.updateDefault(userVo);
	}
	
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
