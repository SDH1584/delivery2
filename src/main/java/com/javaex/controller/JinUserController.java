package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class JinUserController {
	
	// 공통 전체 리스트
	@RequestMapping("/cateList")
	public String cateList() {
		System.out.println("JinUserController/cateList");

		return "user/cateList";
	}
	
	// 선택 리스트
	@RequestMapping("/storeList")
	public String storeList( @RequestParam("store_cate_name") String storename) {
		System.out.println("JinUserController/storeList");
		
		
		return "user/storeList";
	}
	
}
