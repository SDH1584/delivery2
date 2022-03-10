package com.javaex.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.OrderService;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.OrderInfoVo;

@Controller
@RequestMapping("/store/{storeNo}")
public class OrderController {

	
	@Autowired OrderService orderService;
	
	@RequestMapping("/orderFirst")
	public String orderFirst(@PathVariable("storeNo") int storeNo, Model model) {
		System.out.println("[OrderController.orderFirst]");
		//System.out.println(storeNo);
		
		Map<String, Object> map=orderService.menuList(storeNo);
		model.addAttribute("map", map);
		return "store-detail/orderFirst";
	}
	
	@ResponseBody
	@RequestMapping("/optionList")
	public Map<String, Object> optionList(@RequestBody MenuOptionVo moVo) {
		System.out.println("[OrderController.optionList]");
		System.out.println(moVo);
		
		Map<String, Object> map=orderService.optionList(moVo);
		
		return map;
	}
	
	@RequestMapping("/orderInfo")
	public void orderInfo(@RequestBody OrderInfoVo oVo) {
		System.out.println("[OrderController.orderInfo]");
		
		System.out.println(oVo);
	}
}
