package com.javaex.controller;

import java.util.List;
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
import com.javaex.vo.MenuVo;
import com.javaex.vo.MenucateVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/store")
public class JinStoreController {
	@Autowired
	private BusinessService businessService;

	@Autowired
	private JinFileService jinfileService;

	// 가게정보수정 페이지
	@RequestMapping("/storeEdiForm")
	public String storeEdiForm(HttpSession session, Model model) {
		System.out.println("JinStoreController/storeEdiForm");

		// 가게정보
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		BusinessVo businessVo = businessService.storeEdiForm(storeNo);
		model.addAttribute("businessVo", businessVo);

		// 유저 정보
		int userNo = Integer.parseInt(String.valueOf(sessionMap.get("NO")));
		UserVo uservo = businessService.getuser(userNo);
		model.addAttribute("UserVo", uservo);

		// 영업시간 정보

		return "store/storeEdiForm";

	}
	
	
	// 가게 수정
	@RequestMapping("/modify")
	public String modify(@ModelAttribute UserVo userVo, HttpSession session, @ModelAttribute BusinessVo businessVo,
			@RequestParam("file") MultipartFile file) {
		System.out.println("JinStoreController/modify");

		// 유저 업데이트
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		int userNo = Integer.parseInt(String.valueOf(sessionMap.get("NO")));
		// 유저 no 가져오기
		userVo.setNo(userNo);
		// 가게 storeNo 가져오기
		businessVo.setStoreNo(storeNo);
		System.out.println("BusinessController = " + businessVo);

		// 유저정보 수정
		businessService.modify(userVo);

		// 가게정보수정
		String saveName = jinfileService.restore(file);
		businessVo.setLogoImg(saveName);
		businessService.Businessmodify(businessVo);

		// 영업시간 수정
		return "redirect:storeEdiForm";

	}
	
	
	//메뉴 옵션 페이지
	@RequestMapping("/menuOption")
	public String menuOption() {
		System.out.println("JinStoreController/menuOption");

		return "store/menuOption";
	}
	
	
	//메뉴 리스트
	@RequestMapping("/menuManage")
	public String menuManage(Model model,HttpSession session,MenucateVo menucateVo) {
		System.out.println("JinStoreController/menuManage");
		
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		menucateVo.setStore_no(storeNo);
		
		//메뉴 카테고리 리스트
		List<MenucateVo> menucateList = businessService.menucatelist(menucateVo);
		model.addAttribute("menucatelist", menucateList);
		
		return "store/menuManage";

	}
	
	//메뉴 리스트
	@RequestMapping("/menuManage2")
	public String menuManage2(@RequestParam("menu_cate_no") int menuCateNo, HttpSession session,Model model,MenuVo menuVo,MenucateVo menucateVo) {
		
		System.out.println("JinStoreController/menuManage");
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		menucateVo.setStore_no(storeNo);
		//메뉴 카테고리 리스트
		List<MenucateVo> menucateList = businessService.menucatelist(menucateVo);		
		model.addAttribute("menucatelist", menucateList);
		
		//메뉴 리스트 파라미터로 받기
		menuVo.setMenu_cate_no(menuCateNo);
		List<MenuVo> menulist = businessService.menulistpar(menuVo);
		System.out.println(menulist);
		model.addAttribute("menulist", menulist);
		
		return "store/menuManage";
	}
	
	//메뉴 카테고리 등록
	@RequestMapping("/menucataadd")
	public String manucataadd(@ModelAttribute MenucateVo menucateVo,
			HttpSession session) {
		System.out.println("JinStoreController/manumodify");

		// 가게번호
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		
		//메뉴 카테고리 추가
		menucateVo.setStore_no(storeNo);
		System.out.println("메뉴 카테고리 = " + menucateVo);
		businessService.menucateadd(menucateVo);
		
		return "redirect:menuManage";
	}
	
	
	@RequestMapping("/menuadd")
	public String menuadd(@ModelAttribute MenuVo menuVo,
			@RequestParam("file") MultipartFile file) {
		
		//메뉴등록
		String saveName = jinfileService.restore(file);
		menuVo.setMenu_img(saveName);
		System.out.println("controller meadd = " + menuVo);
		businessService.menuadd(menuVo);
		
		return "redirect:menuManage";
	}
	
}
