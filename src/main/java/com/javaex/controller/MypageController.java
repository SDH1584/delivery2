package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	// 주문 리스트
	@RequestMapping(value="/orderList", method= {RequestMethod.GET, RequestMethod.POST})
	public String orderList() {
		System.out.println("mypageController/orderList");
		
		return "user-mypage/customer-orderList";
	}
	
	// 회원정보 수정
	@RequestMapping(value="/editForm", method= {RequestMethod.GET, RequestMethod.POST})
	public String editForm(HttpSession session, Model model) {
		System.out.println("mypageController/editForm");
		
		return "user-mypage/customer-editForm";
	}
	
	// 주소 등록/수정
	@RequestMapping(value="/address", method= {RequestMethod.GET, RequestMethod.POST})
	public String address() {
		System.out.println("mypageController/address");
		
		return "user-mypage/address";
	}
}
