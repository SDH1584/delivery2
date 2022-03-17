package com.javaex.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.OrderService;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.OrderInfoVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/store/{storeNo}")
public class OrderController {

	
	@Autowired OrderService orderService;
	
	/* 주문만들기페이지 */
	@RequestMapping("/orderFirst")
	public String orderFirst(@PathVariable("storeNo") int storeNo, HttpSession session, Model model) {
		System.out.println("[OrderController.orderFirst]");
		//System.out.println(storeNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		if(authUser != null) {
			int no = authUser.getNo();
			map=orderService.menuList(storeNo, no);
		} else {
			map=orderService.menuList(storeNo);
		}
		
		model.addAttribute("map", map);
		return "store-detail/orderFirst";
	}
	
	/* 주문참여 페이지 */
	@RequestMapping("/orderJoin")
	public String orderJoin(@PathVariable("storeNo") int storeNo, @RequestParam("orderNo") int orderNo,HttpSession session, Model model) {
		System.out.println("[OrderController.orderJoin]");
		
		Map<String, Object> map = new HashMap<String, Object>();
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		map=orderService.menuList(storeNo, orderNo, authUser.getNo());
				
		model.addAttribute("map", map);
		
		return "store-detail/orderJoin";
	}
	
	/* 메뉴옵션 리스트 가져오기 */
	@ResponseBody
	@RequestMapping("/optionList")
	public Map<String, Object> optionList(@RequestBody MenuOptionVo moVo) {
		System.out.println("[OrderController.optionList]");
		//System.out.println(moVo);
		
		Map<String, Object> map=orderService.optionList(moVo);
		
		return map;
	}
	
	/* 주문정보 저장 - 만든사람 */
	@ResponseBody
	@RequestMapping("/orderInfo0")
	public int orderInfo(@RequestBody OrderInfoVo oVo) {
		System.out.println("[OrderController.orderInfo0]");
		//System.out.println(oVo);
		
		int pOrderNo = orderService.saveOrderInfo0(oVo);
		
		return pOrderNo;
	}
	
	/* 주문정보 저장 - 참여한 사람 */
	@ResponseBody
	@RequestMapping("/orderInfo1")
	public String orderInfo2(@RequestBody OrderInfoVo oVo) {
		System.out.println("[OrderController.orderInfo1]");
		//System.out.println(oVo);
		
		orderService.saveOrderInfo1(oVo);
		
		return "true";
	}
	
	/* 결제 */
	@RequestMapping("/pay")
	public String pay(HttpSession session, Model model) {
		System.out.println("[OrderController.pay]");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int no = authUser.getNo();
		
		int myPoint = orderService.getPoint(no);
		model.addAttribute("myPoint", myPoint);
		return "store-detail/pay";
		
	}
}
