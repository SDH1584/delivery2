package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.OrderService;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.OrderVo;

@Controller
@RequestMapping("/admin")
public class StoreMainController {
	
	@Autowired
	OrderService orderService;
	
	
	@RequestMapping("/main")
	public String main(HttpSession session, Model model) {
		System.out.println("[StoreMainController.main()]");
		
		Map<String,Object> sessionMap =(Map<String,Object>)session.getAttribute("map");
		int loginStoreNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		System.out.println("**로그인 가게번호="+loginStoreNo);
		
		 Map<String, Object> map = orderService.orderList(loginStoreNo);
		 System.out.println(map); model.addAttribute("map", map);
		 
		return "store/storeMain";
	}
	
	/* 가게 노출여부 결정 */
	@ResponseBody
	@RequestMapping("/storeOnOff")
	public BusinessVo storeOnOff(HttpSession session) {
		System.out.println("[StoreMainController.storeOnOff()]");
		
		Map<String,Object> sessionMap =(Map<String,Object>)session.getAttribute("map");
		int loginStoreNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
			
		return  orderService.storeOnOff(loginStoreNo);
	}
	
	/* 주문상태 변경 */
	@ResponseBody
	@RequestMapping("orderStatus")
	public int orderStatus(@ModelAttribute OrderVo orderVo) {
		System.out.println("[StoreMainController.orderStatus()]");
		//System.out.println(orderVo);
		
		return orderService.orderStatus(orderVo);
	}
		
}
