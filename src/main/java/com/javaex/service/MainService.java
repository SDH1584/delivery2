package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainDao;
import com.javaex.vo.MainVo;

@Service
public class MainService {
@Autowired
private MainDao maindao;

	public List<MainVo> getList() {
		System.out.println("getList(service)");
		return maindao.getList();
	}
}
