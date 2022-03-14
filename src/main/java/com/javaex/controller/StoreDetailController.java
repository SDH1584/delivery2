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

		// 로그인 안되어 있는 경우 loginForm으로 이동
		if (no == 0) {

			return "user/loginForm";

		// 로그인 되어있는 경우 p_order_no 존재하는지 확인.
		} else {

			OrderVo orderVo = new OrderVo();
			orderVo.setOrderNo(orderNo);
			orderVo.setNo(no);
			orderVo.setStoreNo(storeNo);

			int pOrderNo = storeDetailService.attend(orderVo);
			System.out.println("Controller.resultNo: " + pOrderNo);

			//p_order_no가 없는 경우 해당 오더 참여페이지로 이동.
			if (pOrderNo == 0) {
				
				model.addAttribute("orderVo",orderVo);
				return "redirect:orderJoin?orderNo="+orderNo;

			//p_order_no가 있는 경우 host인지 attendee인지 확인.
			} else {

				int attendVfy = storeDetailService.attendVfy(orderVo);
				System.out.println("controller.attendVfy: " + attendVfy);

				//attendVfy가 0, 즉 호스트인 경우 호스트의 오더 수정 페이지로 이동.
				if (attendVfy == 0) {

					Map<String, Object> orderInfoMap = storeDetailService.menuList(orderVo);
					model.addAttribute("orderInfoMap",orderInfoMap);
					
					//System.out.println("controller.host: " + orderInfoMap);
					
					return "store-detail/order-change-host";

				//attendVfy가 1, 즉 참가자인 경우 참가자의 오더 수정 페이지로 이동.
				} else {

					Map<String, Object> orderInfoMap = storeDetailService.menuList(orderVo);
					model.addAttribute("orderInfoMap",orderInfoMap);
					
					//System.out.println("controller.attendee: " + orderInfoMap);

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

}
