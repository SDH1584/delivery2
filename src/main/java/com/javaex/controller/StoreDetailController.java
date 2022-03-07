package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.StoreDetailService;

@Controller
@RequestMapping("/store")
public class StoreDetailController {

	@Autowired
	private StoreDetailService storeService;

	@RequestMapping("host")
	public String host() {

		return "store-detail/order-change-host";
	}

	@RequestMapping("attendee")
	public String attendee() {

		return "store-detail/order-change-attendee";
	}

	@RequestMapping("reserv")
	public String reserv() {
		System.out.println("reservation");

		storeService.reservList();

		return "store-detail/store-reserv";
	}

	@RequestMapping("description")
	public String description() {

		return "store-detail/store-description";
	}

	@RequestMapping("review")
	public String storeReview() {

		return "store-detail/store-review";
	}

}
