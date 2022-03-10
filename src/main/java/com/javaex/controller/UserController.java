package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.FileService;
import com.javaex.service.UserService;
import com.javaex.vo.AddressVo;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private FileService fileService;

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
	public String c_join(@RequestParam("file") MultipartFile file, @ModelAttribute UserVo userVo,
			@ModelAttribute AddressVo addressVo, Model model) {
		System.out.println("userController/c_join");

		String orgName = file.getOriginalFilename();
		if (orgName != "") {
			// 파일 존재
			String saveName = fileService.restore(file);
			model.addAttribute("saveName", saveName);
			userVo.setProfile_img(saveName);
			userService.customerJoin(userVo, addressVo);
		} else {
			// 파일 없음
			userService.customerJoinDefault(userVo, addressVo);
		}

		return "redirect:/user/loginForm";
	}

	// 가게 회원가입
	@RequestMapping(value = "/s_join", method = { RequestMethod.GET, RequestMethod.POST })
	public String s_join(@RequestParam("file") MultipartFile file, @ModelAttribute UserVo userVo,
			@ModelAttribute BusinessVo businessVo, Model model) {
		System.out.println("userController/s_join");

		String saveName = fileService.restore(file);
		model.addAttribute("saveName", saveName);
		businessVo.setLogoImg(saveName);
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

		if (authUser != null) {
			int userCode = authUser.getUser_code();

			if (userCode == 0) {
				System.out.println("사용자 로그인 성공");
				session.setAttribute("authUser", authUser);
				return "redirect:/main";
			} else if (userCode == 1) {
				System.out.println("가게 로그인 성공");
				Map<String, Object> map = userService.storeLogin(userVo);
				System.out.println(userVo.toString());
				System.out.println(map.get("ID"));
				System.out.println(map.get("NO"));
				System.out.println(map.get("STORE_NO"));
				session.setAttribute("map", map);
				return "redirect:/admin/main";
			} else { // 로그인 실패일때
				System.out.println("로그인 실패");
				return "redirect:/user/loginForm?result=fail";
			}
		} else { // 로그인 실패일때
			System.out.println("로그인 실패");
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
