package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.UserService;
import com.javaex.vo.AddressVo;
import com.javaex.vo.BusinessVo;
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
	public String c_join(@ModelAttribute UserVo userVo, @ModelAttribute AddressVo addressVo) {
		System.out.println("userController/c_join");

		userService.customerJoin(userVo, addressVo);
		
		return "redirect:/user/loginForm";
	}

	// 가게 회원가입
	@RequestMapping(value = "/s_join", method = { RequestMethod.GET, RequestMethod.POST })
	public String s_join(@ModelAttribute UserVo userVo, @ModelAttribute BusinessVo businessVo) {
		System.out.println("userController/s_join");

		userService.storeJoin(userVo, businessVo);
		
		return "redirect:/user/loginForm";
	}

	// 로그인 폼
	@RequestMapping("/loginForm")
	public String loginForm() {
		System.out.println("userController/loginForm");

		return "user/loginForm";
	}

	// 사용자 로그인
	@RequestMapping("/login")
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("userController/login");
		
		UserVo authUser = userService.customerLogin(userVo);
		int userCode = authUser.getUser_code();
		System.out.println(userVo.toString());
		System.out.println(userCode);
		
		if (authUser != null) {
			if (userCode == 0) {
				System.out.println("사용자 로그인 성공");
				session.setAttribute("authUser", authUser);
				return "redirect:/main";
			} else {
				System.out.println("가게 로그인 성공");
				session.setAttribute("authUser", authUser);
				return "redirect:/store/main";
			}
		} else { // 로그인 실패일때
			System.out.println("가게 로그인 실패");
			return "redirect:/user/loginForm?result=fail";
		}
		
	}
	
	// 사용자 로그아웃
	@RequestMapping("/c_logout")
	public String c_logout(HttpSession session) {
		System.out.println("userController/c_logout");
		
		// 세션의 값을 삭제한다.
		session.removeAttribute("authUser");
		session.invalidate();
		return "redirect:/main";
	}

}

