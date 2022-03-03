package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store")
public class StoreMainController {
	
	@RequestMapping("/main")
	public String main() {
		System.out.println("StoreMainController.main");
		
		return "store-detail/orderFirst";
	}
		
}
