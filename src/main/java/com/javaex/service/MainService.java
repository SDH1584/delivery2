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
	
	
	public List<MainVo> getStoreList() {
		System.out.println("MainService.getStoreList()");

		List<MainVo> storeList =  maindao.selectStoreList();
		return storeList;
	}

	
	
	public MainVo getStore(int storeNo) {
		System.out.println("MainService.getStore()");
		MainVo storeVo = maindao.getStore(storeNo);
		return storeVo;
	}
	
	
	public List<MainVo> getStoreList2() {
		System.out.println("MainService.getStoreList2()");

		List<MainVo> storeList2 =  maindao.selectStoreList();
		return storeList2;
	}
	
	


	public List<MainVo> getRecentStore() {
		System.out.println("mainService.getRecentStore");
		return maindao.getRecentStore();
	}
}
