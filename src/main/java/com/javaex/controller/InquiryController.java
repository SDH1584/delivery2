package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/mypage")
public class InquiryController {
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
