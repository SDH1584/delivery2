package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.FileService;
import com.javaex.service.MypageService;
import com.javaex.vo.OrderListVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private MypageService mypageService;

	@Autowired
	private FileService fileService;
	
	// 회원정보 수정폼
	@RequestMapping(value = "/editForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String editForm(HttpSession session, Model model) {
		System.out.println("mypageController/editForm");

		// 세션에서 로그인한 사용자 no값 가져오기
		int no = ((UserVo) session.getAttribute("authUser")).getNo();

		// mypageService를 통해 로그인한 유저 정보 가져오기
		UserVo userVo = mypageService.editForm(no);

		model.addAttribute("userVo", userVo);

		return "user-mypage/customer-editForm";
	}

	// 회원정보 수정
	@RequestMapping("/edit")
	public String edit(@RequestParam("file") MultipartFile file, Model model, 
			@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("mypageController/edit");

		// 세션에서 로그인한 사용자 정보 가져오기
		UserVo authUser = (UserVo) session.getAttribute("authUser");

		// 세션에서 로그인한 사용자 no값 가져오기
		int no = authUser.getNo();

		// 로그인한 사용자 no값 추가
		userVo.setNo(no);

		String orgName = file.getOriginalFilename();
		if (orgName != "") {
			// 파일 존재
			String saveName = fileService.restore(file);
			model.addAttribute("saveName", saveName);
			userVo.setProfile_img(saveName);
			// mypageService를 통해 로그인한 사용자 정보 수정
			mypageService.edit(userVo);
		} else {
			// 파일 없음
			// mypageService를 통해 로그인한 사용자 정보 수정
			mypageService.editDefault(userVo);
		}
		
		return "redirect:/main";
	}

	// 주문 현황 리스트
	@RequestMapping(value = "/orderList-now", method = { RequestMethod.GET, RequestMethod.POST })
	public String orderListNow(HttpSession session, Model model) {
		System.out.println("mypageController/orderListNow");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		List<OrderListVo> orderList = mypageService.getOrderList(no);
		model.addAttribute("orderList", orderList);
		System.out.println(orderList);
		return "user-mypage/customer-orderListNow";
	}

	// 주문 내역 리스트
	@RequestMapping(value = "/orderList-old", method = { RequestMethod.GET, RequestMethod.POST })
	public String orderListOld(HttpSession session, Model model) {
		System.out.println("mypageController/orderListOld");

		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int no = authUser.getNo();
		List<OrderListVo> orderList = mypageService.getOrderList(no);
		model.addAttribute("orderList", orderList);
		System.out.println(orderList);
		return "user-mypage/customer-orderListOld";
	}

	// 주문 상세 페이지
	@ResponseBody
	@RequestMapping("/orderList-detail")
	public List<OrderListVo> orderDetail(@ModelAttribute OrderListVo orderListVo) {
		System.out.println("mypageController/orderDetail");
		List<OrderListVo> detailList = mypageService.getOrderDetail(orderListVo);
		return detailList;
	}

	// 주소 등록/수정
	@RequestMapping(value = "/address", method = { RequestMethod.GET, RequestMethod.POST })
	public String address() {
		System.out.println("mypageController/address");

		return "user-mypage/address";
	}
}
