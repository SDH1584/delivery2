package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.OrderService;

@Controller
@RequestMapping("/store/{storeNo}")
public class OrderController {

	
	@Autowired OrderService orderService;
	
	@RequestMapping("/orderFirst")
	public String orderFirst(@PathVariable("storeNo") int storeNo, Model model) {
		System.out.println("[OrderController.orderFirst]");
		//System.out.println(storeNo);
		
		Map<String, Object> map=orderService.menuOptionList(storeNo);
		model.addAttribute("map", map);
		return "store-detail/orderFirst";
	}
	
}
