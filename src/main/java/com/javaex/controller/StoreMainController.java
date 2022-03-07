package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.OrderService;
import com.javaex.vo.BusinessVo;

@Controller
@RequestMapping("/store")
public class StoreMainController {
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping("/main")
	public String main(@ModelAttribute BusinessVo bVo, Model model) {
		System.out.println("[StoreMainController.main()]");
		//System.out.println(bVo);
		
		Map<String, Object> map = orderService.orderList(bVo);
		System.out.println(map);
		model.addAttribute("map", map);
		return "store/storeMain";
	}
	
	@RequestMapping("/storeOnOff")
	public String storeOnOff() {
		System.out.println("[StoreMainController.storeOnOff()]");
		
		return  "redirect:/store/main";
	}
		
}
