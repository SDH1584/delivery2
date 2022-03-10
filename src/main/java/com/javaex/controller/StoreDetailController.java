package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

	@RequestMapping("/{storeNo}/reserv")
	public String reserv(@PathVariable("storeNo") int storeNo, Model model) {
		System.out.println("reservation");

		List<OrderVo> rList = storeDetailService.reservList(storeNo);
		model.addAttribute("rList", rList);
		System.out.println("reservList: " + rList);

		return "store-detail/store-reserv";
	}

	@RequestMapping("/{storeNo}/attend")
	public String attend(@RequestParam(value = "orderNo", required = false, defaultValue = "0") int orderNo,
			@RequestParam(value = "no", required = false, defaultValue = "0") int no, Model model) {

		if (no == 0) {

			return "user/loginForm";

		} else {

			OrderVo orderVo = new OrderVo();
			orderVo.setOrderNo(orderNo);
			orderVo.setNo(no);
			System.out.println("orerNo: " + orderNo + ", no: " + no);

			Integer resultNo = storeDetailService.attend(orderVo);

			System.out.println("Controller.resultNo: " + resultNo);

			if (resultNo == 0) {

				return "store-detail/orderJoin";

			} else {

				OrderVo varifyVo = storeDetailService.attendVfy(orderVo);
				model.addAttribute("varifyVo", varifyVo);
				
				int vfyNo = varifyVo.getAttendVfy();
				System.out.println("vfyNo: " + vfyNo);
				
				if (vfyNo == 0) {

					return "store-detail/order-change-host";

				} else {

					return "store-detail/order-change-attendee";
					

				}
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
