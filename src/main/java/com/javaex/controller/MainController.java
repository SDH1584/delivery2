package com.javaex.controller;

import java.util.List;
import java.util.Map;

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
		Map<String,Object>map=mainService.getMain(mainVo);
		System.out.println("map: "+map);
		
		List<MainVo>getMain=(List<MainVo>)map.get("getMain");
		List<MainVo>storeList=(List<MainVo>)map.get("storeList");
		List<MainVo>getStore=(List<MainVo>)map.get("getStore");
		List<MainVo> getRecentStore=(List<MainVo>)map.get("getRecentStore");
		
		model.addAttribute("getMain",getMain);
		model.addAttribute("storeList", storeList);
		model.addAttribute("getStore",getStore);
		model.addAttribute("getRecentStore",getRecentStore);
		
//		List<MainVo> getMain=mainService.getMain(mainVo);
//		System.out.println(getMain);
//		model.addAttribute("getMain",getMain);
//		
//		List<MainVo> storeList=mainService.storeList();
//		System.out.println("storeList :"+storeList);
//		model.addAttribute("storeList",storeList);
//		
//		List<MainVo> getRecentStore=mainService.getRecentStore();
//		System.out.println("getRecentStore :"+getRecentStore);
//		model.addAttribute("getRecentStore",getRecentStore);
//		
//		List<MainVo> getStore=mainService.getStore(storeNo);
//		System.out.println("getStore:"+getStore);
//		model.addAttribute("getStore",getStore);
		
		System.out.println("getmain:"+getMain);
		System.out.println("storeList:"+storeList);
		System.out.println("getRecentStore:"+getRecentStore);
		System.out.println("getStore:"+getStore);
		
		return "user/main";
		
	}
}