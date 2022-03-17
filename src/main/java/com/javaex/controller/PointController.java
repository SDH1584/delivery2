package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.PointService;
import com.javaex.vo.PointVo;
@Controller
@RequestMapping("/mypage")
public class PointController {
	
	@Autowired
	PointService pointService;
	
	@RequestMapping("/point")
	public String point(Model model ,HttpSession session,int no) {
		System.out.println("mypage.point()");
		
		
		List<PointVo> pointList=pointService.getPointList(no);

		model.addAttribute("pointList", pointList);
		System.out.println(pointList);
		
		return "user-mypage/point";
	}

}
