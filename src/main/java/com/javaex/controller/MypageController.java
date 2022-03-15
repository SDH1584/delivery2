package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.MypageService;
import com.javaex.vo.OrderListVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	// 주문 현황 리스트
	@RequestMapping(value="/orderList-now", method= {RequestMethod.GET, RequestMethod.POST})
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
	@RequestMapping(value="/orderList-old", method= {RequestMethod.GET, RequestMethod.POST})
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
	
	// 회원정보 수정
	@RequestMapping(value="/editForm", method= {RequestMethod.GET, RequestMethod.POST})
	public String editForm(HttpSession session, Model model) {
		System.out.println("mypageController/editForm");
		
		return "user-mypage/customer-editForm";
	}
	
	// 주소 등록/수정
	@RequestMapping(value="/address", method= {RequestMethod.GET, RequestMethod.POST})
	public String address() {
		System.out.println("mypageController/address");
		
		return "user-mypage/address";
	}
}
