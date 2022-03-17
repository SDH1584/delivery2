package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.PointService;
import com.javaex.vo.PointVo;
import com.javaex.vo.UserVo;
@Controller
@RequestMapping("/mypage")
public class PointController {
	
	@Autowired
	PointService pointService;
	
	@RequestMapping("/point")
	public String point(Model model ,HttpSession session) {
		System.out.println("mypage.point()");
		// 세션에서 로그인한 사용자 no값 가져오기
		int no = ((UserVo) session.getAttribute("authUser")).getNo();
		
		List<PointVo> pointVo = pointService.getPointList(no);
		
		model.addAttribute("poinVo", pointVo);
		return "user-mypage/point";
	}

}
