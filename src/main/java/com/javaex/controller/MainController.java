package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.MainService;
import com.javaex.vo.MainVo;

@Controller

public class MainController {
@Autowired
MainService mainService;
	
	
	@RequestMapping("/main")
	public String main(@ModelAttribute MainVo mainVo ,Model model) {
		System.out.println("main(controller)");
//		Map<String,Object>map=mainService.getList(mainVo);
//		System.out.println(map);
//		
//		List<MainVo>getList=(List<MainVo>)map.get("getList");
//		List<MainVo>getStore=(List<MainVo>)map.get("getStore");
//		List<MainVo> getRecentStore=(List<MainVo>)map.get("getRecStore");
//		
//		model.addAttribute("getList",getList);
//		model.addAttribute("getStore", getStore);
//		model.addAttribute("getRecentStore",getRecentStore);
		List<MainVo> getMain=mainService.getMain(mainVo);
		System.out.println(getMain);
		model.addAttribute("getMain",getMain);
		
		List<MainVo> getStore=mainService.getStore();
		System.out.println("getStore :"+getStore);
		model.addAttribute("getStore",getStore);
		
		List<MainVo> getRecentStore=mainService.getRecentStore();
		System.out.println("getRecentStore :"+getRecentStore);
		model.addAttribute("getRecentStore",getRecentStore);
		
		System.out.println("getmain:"+getMain);
		System.out.println("getstore:"+getStore);
		System.out.println("getrcentStore:"+getRecentStore);
		
		return "user/main";
		
	}
}