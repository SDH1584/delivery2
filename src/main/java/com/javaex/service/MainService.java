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
	
	
	
	
	
	public void getMain() {
		System.out.println("MainService.getMain()");
		

		//List<MainVo> storeList = maindao.storeList();
		
		
		
		/*
		Map<String, Object> map = new HashMap<String, Object>();
		// 메인정보가져오기
		List<MainVo> getMain = maindao.getMain(mainVo);
		map.put("getMain", getMain);
		// 가게정보가져오기
		List<MainVo> storeList = maindao.storeList();
		map.put("storeList",storeList);
		// 가장 최근가게 가져오기
		List<MainVo> getRecentStore = maindao.getRecentStore();
		map.put("getRecentStore", getRecentStore);
		map.put("mainVo", mainVo);
		System.out.println(map);
		return map;
//	public List<MainVo> getMain(MainVo mainVo) {
//		System.out.println("getMain service");
//		
 * 
 * return maindao.getMain(mainVo);
 */
//
	}

	


	public List<MainVo> getRecentStore() {
		System.out.println("mainService.getRecentStore");
		return maindao.getRecentStore();
	}
}
