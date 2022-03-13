package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.StoreDetailService;
import com.javaex.vo.OrderVo;

@Controller
@RequestMapping("/store/{storeNo}/")
public class StoreDetailController {

	@Autowired
	private StoreDetailService storeDetailService;

	// 예약리스트
	@RequestMapping("reserv")
	public String reserv(@PathVariable("storeNo") int storeNo, Model model) {
		// System.out.println("reservation");

		List<OrderVo> rList = storeDetailService.reservList(storeNo);
		model.addAttribute("rList", rList);
		// System.out.println("reservList: " + rList);

		return "store-detail/store-reserv";
	}

	// 예약리스트에서 대기중 클릭
	@RequestMapping("attend")
	public String attend(@RequestParam(value = "orderNo", required = false, defaultValue = "0") int orderNo,
			@RequestParam(value = "no", required = false, defaultValue = "0") int no,
			@PathVariable("storeNo") int storeNo, 
			Model model) {

		if (no == 0) {

			return "user/loginForm";

		} else {

			OrderVo orderVo = new OrderVo();
			orderVo.setOrderNo(orderNo);
			orderVo.setNo(no);
			orderVo.setStoreNo(storeNo);

			int pOrderNo = storeDetailService.attend(orderVo);
			System.out.println("Controller.resultNo: " + pOrderNo);

			if (pOrderNo == 0) {
				
				model.addAttribute("orderVo",orderVo);
				return "store-detail/orderJoin";

			} else {

				int attendVfy = storeDetailService.attendVfy(orderVo);
				System.out.println("controller.attendVfy: " + attendVfy);

				if (attendVfy == 0) {

					Map<String, Object> orderInfoMap = storeDetailService.menuList(orderVo);
					model.addAttribute("orderInfoMap",orderInfoMap);
					
					//System.out.println("controller.host: " + orderInfoMap);
					
					return "store-detail/order-change-host";

				} else {

					Map<String, Object> orderInfoMap = storeDetailService.menuList(orderVo);
					model.addAttribute("orderInfoMap",orderInfoMap);
					
					//System.out.println("controller.attendee: " + orderInfoMap);

					return "store-detail/order-change-attendee";

				}
			}
		}
	}


	@RequestMapping("orderJoin")
	public String orderJoin() {

		return "store-detail/orderJoin";
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
