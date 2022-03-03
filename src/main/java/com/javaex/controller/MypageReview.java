package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageReview {

	@RequestMapping("/review")
	public String customerReview() {
		System.out.println("mypage/review");
		
		return "user-mypage/customer-review";
	}
}
