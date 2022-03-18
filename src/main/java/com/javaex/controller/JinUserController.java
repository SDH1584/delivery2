package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.BusinessService;
import com.javaex.service.JinUserService;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.StorecateVo;

@Controller
@RequestMapping("/user")
public class JinUserController {
	
	@Autowired
	private BusinessService businessService;
	
	@Autowired
	private JinUserService jinUserService;
	// 공통 전체 리스트
	@RequestMapping("/cateList")
	public String cateList(Model model) {
		System.out.println("JinUserController/cateList");
		//카테고리 리스트 출력
		List<StorecateVo> StorecateList = businessService.StorecateList();
		model.addAttribute("StorecateList", StorecateList);
		return "user/cateList";
	}
	
	// 선택 리스트
	@RequestMapping("/storeList")
	public String storeList( @RequestParam("store_cate_no") int storecateno,Model model,
			BusinessVo businessVo) {
		System.out.println("JinUserController/storeList");
		
		//가게 리스트 출력 기본정렬
		List<BusinessVo> BusinessList = jinUserService.stroeList(storecateno);
		System.out.println(BusinessList);
		model.addAttribute("BusinessVo", BusinessList);
		return "user/storeList";
	}
	
}
