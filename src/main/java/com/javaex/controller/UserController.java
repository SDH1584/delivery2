package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/modifyForm")
	public String modifyForm(HttpSession session, Model model) {
		System.out.println("userController/modifyForm");
		
		int no = 1;
		
		UserVo userVo = userService.modifyForm(no);
		
		model.addAttribute("userVo", userVo);
		
		return "user/modifyForm";
	}
	
}
