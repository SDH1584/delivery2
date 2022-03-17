package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.InquiryService;
import com.javaex.vo.InquiryVo;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/mypage")
public class InquiryController {

	@Autowired
	InquiryService inquiryService;
/*
	@RequestMapping("/inquiryList")
	public String inquiryList(Model model, HttpSession session) {
		System.out.println("mypage.inquiryList");
		int no = ((UserVo) session.getAttribute("authUser")).getNo();

		List<InquiryVo> pointVo = inquiryService.getinquiryList(no);

		model.addAttribute("poinVo", pointVo);
		return "user-mypage/inquiryList";
	}

	@RequestMapping("/inquiryWriteForm")
	public String inquiryWriteForm(Model model, HttpSession session) {
		System.out.println("mypage.inquiryWriteForm");

		int no = ((UserVo) session.getAttribute("authUser")).getNo();

		List<InquiryVo> pointVo = inquiryService.getinquiryList(no);

		model.addAttribute("poinVo", pointVo);
		return "user-mypage/inquiryWriteForm";
	}
*/
}
