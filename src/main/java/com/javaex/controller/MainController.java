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
		return "user/main";
		
	}
}