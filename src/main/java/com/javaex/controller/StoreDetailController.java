package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.StoreDetailService;
import com.javaex.vo.OrderVo;

@Controller
@RequestMapping("/store")
public class StoreDetailController {

	@Autowired
	private StoreDetailService storeDetailService;

	@RequestMapping("host")
	public String host() {

		return "store-detail/order-change-host";
	}

	@RequestMapping("attendee")
	public String attendee() {

		return "store-detail/order-change-attendee";
	}

	@RequestMapping("reserv")
	public String reserv(Model model) {
		System.out.println("reservation");

		List<OrderVo> rList = storeDetailService.reservList();
		model.addAttribute("rList", rList);
		System.out.println("reservList: " + rList);

		return "store-detail/store-reserv";
	}

	@RequestMapping("attend")
	public String attend(@RequestParam(value = "orderNo") int orderNo,
						 @RequestParam(value = "no", required = false, defaultValue="0") int no, 
						 Model model) {

		if (no == 0) {
		
			return "user/loginForm";
			
		} else {
			
			OrderVo orderVo = new OrderVo();
			orderVo.setOrderNo(orderNo);
			orderVo.setNo(no);

			OrderVo attendVo = storeDetailService.attend(orderVo);
			model.addAttribute("attendVo", attendVo);

			System.out.println("attendVo: " + attendVo);
			
			if (attendVo == null) {

				return "store-detail/orderFirst";

			} else {

				return "store-detail/orderJoin";
			}
		}

	}

	@RequestMapping("description")
	public String description() {

		return "store-detail/store-description";
	}

	@RequestMapping("review")
	public String storeReview() {

		return "store-detail/store-review";
	}

	@RequestMapping("orderFirst")
	public String firstOrder() {

		return "store-detail/orderFirst";
	}

	@RequestMapping("orderJoin")
	public String orderJoin() {

		return "store-detail/orderJoin";
	}

}
