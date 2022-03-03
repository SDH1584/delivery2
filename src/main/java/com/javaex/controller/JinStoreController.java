package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store")
public class JinStoreController {

	@RequestMapping("/storeEdiForm")
	public String storeEdiForm() {
		System.out.println("JinStoreController/storeEdiForm");

		return "store/storeEdiForm";
	}
	
	@RequestMapping("/menuOption")
	public String menuOption() {
		System.out.println("JinStoreController/menuOption");

		return "store/menuOption";
	}
	
	@RequestMapping("/menuManage")
	public String menuManage() {
		System.out.println("JinStoreController/menuManage");

		return "store/menuManage";
	}
}
