package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.InquiryDao;
import com.javaex.vo.InquiryVo;


@Service
public class InquiryService {

@Autowired
InquiryDao inquirydao;
	/*
	public List<InquiryVo> getInquiryList(int no) {
		System.out.println("InquiryService.getInquiryList()");
		List<InquiryVo> InquiryVo=inquirydao.selectInquiryList(no);
		return InquiryVo;
		*/
}
