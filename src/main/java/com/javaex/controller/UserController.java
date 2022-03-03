package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	// 공통 회원가입 폼
	@RequestMapping("/joinForm")
	public String joinForm() {
		System.out.println("userController/joinForm");

		return "user/joinForm";
	}

	// 사용자 회원가입 폼
	@RequestMapping(value = "/c_joinForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String c_joinForm() {
		System.out.println("userController/c_joinForm");

		return "user/customer-joinForm";
	}

	// 가게 회원가입 폼
	@RequestMapping(value = "/s_joinForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String s_joinForm() {
		System.out.println("userController/s_joinForm");

		return "user/store-joinForm";
	}

	// 사용자 회원가입
	@RequestMapping(value = "/c_join", method = { RequestMethod.GET, RequestMethod.POST })
	public String c_join(@ModelAttribute UserVo userVo) {
		System.out.println("userController/c_join");

		return "redirect:/user/loginForm";
	}

	// 가게 회원가입
	@RequestMapping(value = "/s_join", method = { RequestMethod.GET, RequestMethod.POST })
	public String s_join(@ModelAttribute UserVo userVo) {
		System.out.println("userController/s_join");

		return "redirect:/user/loginForm";
	}

	// 로그인 폼
	@RequestMapping("/loginForm")
	public String loginForm() {
		System.out.println("userController/loginForm");

		return "user/loginForm";
	}

	// 로그인
	@RequestMapping("/login")
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("userController/login");
		
		return "redirect:/";
	}

	//주변가게예약
}
