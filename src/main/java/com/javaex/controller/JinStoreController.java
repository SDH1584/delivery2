package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.BusinessService;
import com.javaex.vo.BusinessVo2;



@Controller
@RequestMapping("/store")
public class JinStoreController {
	@Autowired
	private BusinessService businessService;
	
	
	//가게정보수정
	@RequestMapping("/storeEdiForm")
	public String storeEdiForm(HttpSession session, Model model) {
		System.out.println("JinStoreController/storeEdiForm");

		Map<String,Object> sessionMap =(Map<String,Object>)session.getAttribute("map");
		
	    int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
	    
	    System.out.println(storeNo);
	    
		BusinessVo2 businessVo2 = businessService.storeEdiForm(storeNo);
		
		System.out.println(businessVo2);
		
		model.addAttribute("businessVo", businessVo2);
		
		
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
	
	@RequestMapping("/modify")
	public String modify() {
		System.out.println("JinStoreController/menuManage");

		return "store/storeEdiForm";
	}
}
