package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.MainService;
import com.javaex.vo.MainVo;

@Controller

public class MainController {
@Autowired
MainService mainService;
	
	
	@RequestMapping("/main")
	public String main(Model model) {
		System.out.println("main(controller)");
		List<MainVo> getList = mainService.getList();
		System.out.println(getList);
		model.addAttribute("getList", getList);
		
		return "user/main";
		
	}
}