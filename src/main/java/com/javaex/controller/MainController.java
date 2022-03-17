package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.MainService;
import com.javaex.vo.MainVo;

@Controller
public class MainController {
	@Autowired
	MainService mainService;
	
	@RequestMapping("/main")
	public String main(Model model) {
		System.out.println("MainController.main()");

		//서비스에서 스토어리스트를 가져온다
		List<MainVo> storeList = mainService.getStoreList();
		
		//모델이 담아 jsp에 포워딩 한다
		model.addAttribute("storeList", storeList);
		System.out.println(storeList);
		return "user/main";
	}
	
	
	@ResponseBody
	@RequestMapping("/getStore")
	public MainVo getStore(@RequestParam("orderNo") int orderno) {
		System.out.println("MainController.getStore()");
		System.out.println(orderno);
		
		MainVo storeVo= mainService.getStore(orderno);
		System.out.println(storeVo);
		
		return storeVo;
	}
	
	
	@ResponseBody
	@RequestMapping("/getStoreList")
	public List<MainVo> storeList() {
		List<MainVo> storeList= mainService.getStoreList();
		System.out.println(storeList);
		return storeList;
	}
	
	
}