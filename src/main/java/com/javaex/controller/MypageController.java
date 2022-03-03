package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@RequestMapping(value="/orderList", method= {RequestMethod.GET, RequestMethod.POST})
	public String orderList() {
		System.out.println("mypageController/orderList");
		
		return "user-mypage/customer-orderList";
	}
	
	@RequestMapping(value="/editForm", method= {RequestMethod.GET, RequestMethod.POST})
	public String editForm(HttpSession session, Model model) {
		System.out.println("mypageController/editForm");
		
		return "user-mypage/customer-editForm";
	}
	@RequestMapping("/inquiryList")
	public String inquiryList() {
		System.out.println("mypage.inquiryList");

		return "user-mypage/inquiryList";
	}
	@RequestMapping("/inquiryWriteForm")
	public String inquiryWriteForm() {
		System.out.println("mypage.inquiryWriteForm");
		return "user-mypage/inquiryWriteForm";
	}
	@RequestMapping("/point")
	public String point() {
		System.out.println("mypage.point");
		return "user-mypage/point";
	}
}
