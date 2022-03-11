package com.javaex.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.BusinessService;
import com.javaex.service.JinFileService;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.UserVo;



@Controller
@RequestMapping("/store")
public class JinStoreController {
	@Autowired
	private BusinessService businessService;
	
	@Autowired
	private JinFileService jinfileService;
	
	//가게정보수정
	@RequestMapping("/storeEdiForm")
	public String storeEdiForm(HttpSession session, Model model,Model usermodel,Model delimodel,Model optime) {
		System.out.println("JinStoreController/storeEdiForm");

		//가게정보
		Map<String,Object> sessionMap =(Map<String,Object>)session.getAttribute("map");
		
	    int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
	    
		BusinessVo businessVo = businessService.storeEdiForm(storeNo);
		
		System.out.println(businessVo);
		
		model.addAttribute("businessVo", businessVo);
		
		//유저 정보
		int userNo = Integer.parseInt(String.valueOf(sessionMap.get("NO")));
		System.out.println("userno = "+userNo);
		UserVo uservo = businessService.getuser(userNo);
		System.out.println(uservo);
		usermodel.addAttribute("UserVo", uservo);

		return "store/storeEdiForm";
		
	}
	
	@RequestMapping("/menuOption")
	public String menuOption() {
		System.out.println("JinStoreController/menuOption");

		return "store/menuOption";
	}
	
	@RequestMapping("/menuManage")
	public String menuManage() {
		System.out.println("JinStoreController/menuManage");

		return "store/menuManage";
	}
	
	@RequestMapping("/modify")
	public String modify(
			@ModelAttribute UserVo userVo,
			HttpSession session,
			@ModelAttribute BusinessVo businessVo,
			@RequestParam("file") MultipartFile file) {
		System.out.println("JinStoreController/modify");
		
		//유저 업데이트
		Map<String,Object> sessionMap =(Map<String,Object>)session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		int userNo = Integer.parseInt(String.valueOf(sessionMap.get("NO")));
		//유저 no 가져오기
		userVo.setNo(userNo);
		//가게 storeNo 가져오기
		businessVo.setStoreNo(storeNo);
		System.out.println("BusinessController = " + businessVo);
		
		//유저정보 수정
		businessService.modify(userVo);
		
		//가게정보수정
		String saveName = jinfileService.restore(file);
		businessVo.setLogoImg(saveName);
		businessService.Businessmodify(businessVo);
		
		return "redirect:storeEdiForm";
		
	}
	
}
