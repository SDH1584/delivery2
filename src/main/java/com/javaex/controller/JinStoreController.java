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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.BusinessService;
import com.javaex.service.JinFileService;
import com.javaex.vo.BizstorecateVo;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.DeliveryVo;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.MenuOptioncateVO;
import com.javaex.vo.MenuVo;
import com.javaex.vo.MenucateVo;
import com.javaex.vo.OpentimeVo;
import com.javaex.vo.StorecateVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/admin")
public class JinStoreController {
	@Autowired
	private BusinessService businessService;

	@Autowired
	private JinFileService jinfileService;

	// 가게정보수정 페이지
	@RequestMapping("/editForm")
	public String storeEdiForm(HttpSession session, Model model) {
		System.out.println("JinStoreController/storeEdiForm");

		// 가게번호
		Map<String, Object> sessionMap = (Map<String, Object>)session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		
		// 유저번호
		int userNo = Integer.parseInt(String.valueOf(sessionMap.get("NO")));
		
		//jsp에 포워딩
		Map<String, Object> storeMap = businessService.storeEdiForm(storeNo, userNo);
		model.addAttribute("storeMap", storeMap);
		
		
		//가게 카테고리 가져오기
		List<StorecateVo> StorecateList = businessService.StorecateList();
		model.addAttribute("StorecateList", StorecateList);
		return "store/storeEdiForm";

	}
	
	// 가게 수정
		@RequestMapping("/modify")
		public String modify(@ModelAttribute UserVo userVo, HttpSession session, @ModelAttribute BusinessVo businessVo,
				@RequestParam("file") MultipartFile file ,@ModelAttribute OpentimeVo opentimeVo) {
			System.out.println("JinStoreController/modify");

			// 유저 업데이트
			Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
			int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
			int userNo = Integer.parseInt(String.valueOf(sessionMap.get("NO")));
			
			// 유저 no 가져오기
			userVo.setNo(userNo);
			// 가게 storeNo 가져오기
			businessVo.setStoreNo(storeNo);

			// 유저정보 수정
			businessService.modify(userVo);

			// 가게정보수정
			String saveName = jinfileService.restore(file);
			businessVo.setLogoImg(saveName);
			businessService.Businessmodify(businessVo);
			
			// 영업시간 수정
			Map<String, Object> storeMap = businessService.storetime(storeNo,opentimeVo);
			
			return "redirect:editForm";

		}
	
	// 배달지역저장(기본, 추가)
	@ResponseBody
	@RequestMapping("/saveDeliveryArea")
	public DeliveryVo saveDeliveryArea(HttpSession session, @ModelAttribute DeliveryVo deliveryVo) {
		System.out.println("JinStoreController/saveDeliveryArea");
		

		// 가게번호
		Map<String, Object> sessionMap = (Map<String, Object>)session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		
		//배달지역 추가
		deliveryVo.setStore_no(storeNo);
		DeliveryVo vo = businessService.saveDeliveryArea(deliveryVo);
		
		return vo;

	}
	
	
	
	
	
	
	
	// 메뉴 옵션 페이지
	@RequestMapping("/menuOption")
	public String menuOption(@RequestParam("menu_no") int menuNo, Model model, MenuOptioncateVO menuOptioncate,
			MenuOptionVo mnuOptionVo) {
		System.out.println("JinStoreController/menuOption");
		// 메뉴 하나 가져오기
		MenuVo menuvo = businessService.getmenu(menuNo);
		model.addAttribute("Menuone", menuvo);

		// 메뉴 옵션 카테고리 리스트
		menuOptioncate.setMenu_no(menuNo);
		List<MenuOptioncateVO> menuOptioncateList = businessService.menuOptioncateList(menuOptioncate);
		model.addAttribute("menuOptioncateList", menuOptioncateList);

		// 메뉴 옵션 리스트
		// mnuOptionVo.setOptionCateNo(opcateno);
		// List<MenuOptionVo> menuOptionVoList =
		// businessService.menuOptioncateList(mnuOptionVo);

		return "store/menuOption";
	}

	// 메뉴 옵션 카테고리 추가
	@RequestMapping("/menuOptioncateadd")
	public String menuOptioncateadd(@ModelAttribute MenuOptioncateVO menuOptioncate) {

		// 메뉴 옵션 카테고리 추가
		
		System.out.println(menuOptioncate);

		businessService.menuOptioncateadd(menuOptioncate);
		
		return "redirect:menuOption?menu_no=" + menuOptioncate.getMenu_no();
	}

	// 메뉴 옵션 추가
	@RequestMapping("/cateOption")
	public String cateOption(@ModelAttribute MenuOptionVo mnuOptionVo,HttpSession session) {
		
		//메뉴 옵션 추가
		System.out.println("controll cateOption");
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		mnuOptionVo.setStoreNo(storeNo);
		System.out.println(mnuOptionVo);
		businessService.cateOption(mnuOptionVo);
		return "redirect:menuOption?menu_no=" + mnuOptionVo.getMenuNo() ;
	}

	// 메뉴 리스트
	@RequestMapping("/menuManage")
	public String menuManage(Model model, HttpSession session, MenucateVo menucateVo) {
		System.out.println("JinStoreController/menuManage");

		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		menucateVo.setStore_no(storeNo);

		// 메뉴 카테고리 리스트
		List<MenucateVo> menucateList = businessService.menucatelist(menucateVo);
		model.addAttribute("menucatelist", menucateList);

		return "store/menuManage";

	}

	// 메뉴 리스트
	@RequestMapping("/menuManage2")
	public String menuManage2(@RequestParam("menu_cate_no") int menuCateNo, HttpSession session, Model model,
			MenuVo menuVo, MenucateVo menucateVo) {

		System.out.println("JinStoreController/menuManage");
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));
		menucateVo.setStore_no(storeNo);
		// 메뉴 카테고리 리스트
		List<MenucateVo> menucateList = businessService.menucatelist(menucateVo);
		model.addAttribute("menucatelist", menucateList);

		// 메뉴 리스트 파라미터로 받기
		menuVo.setMenu_cate_no(menuCateNo);
		List<MenuVo> menulist = businessService.menulistpar(menuVo);
		System.out.println(menulist);
		model.addAttribute("menulist", menulist);

		return "store/menuManage";
	}

	// 메뉴 카테고리 등록
	@RequestMapping("/menucataadd")
	public String manucataadd(@ModelAttribute MenucateVo menucateVo, HttpSession session) {
		System.out.println("JinStoreController/manumodify");

		// 가게번호
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));

		// 메뉴 카테고리 추가
		menucateVo.setStore_no(storeNo);
		System.out.println("메뉴 카테고리 = " + menucateVo);
		businessService.menucateadd(menucateVo);

		return "redirect:menuManage";
	}

	// 메뉴등록
	@RequestMapping("/menuadd")
	public String menuadd(@ModelAttribute MenuVo menuVo, @RequestParam("file") MultipartFile file) {

		// 메뉴등록
		String saveName = jinfileService.restore(file);
		menuVo.setMenu_img(saveName);
		System.out.println("controller meadd = " + menuVo);
		businessService.menuadd(menuVo);

		return "redirect:menuManage";
	}

	// 가게 카테고리 추가
	@RequestMapping("/storecate")
	public String storecate(@ModelAttribute StorecateVo storecateVo, @ModelAttribute BizstorecateVo BizstorecateVo,
			HttpSession session) {

		System.out.println("controll storecate");
		// 가게번호
		Map<String, Object> sessionMap = (Map<String, Object>) session.getAttribute("map");
		int storeNo = Integer.parseInt(String.valueOf(sessionMap.get("STORE_NO")));

		// 가게 카테고리추가
		/*
		BizstorecateVo.setStore_no(storeNo);
		businessService.storecateadd(storecateVo, BizstorecateVo);
		*/
		return "redirect:editForm";
	}
}
