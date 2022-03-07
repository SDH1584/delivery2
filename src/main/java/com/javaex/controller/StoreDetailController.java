package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store")
public class StoreController {

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
