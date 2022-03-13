package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.MainDao;
import com.javaex.vo.MainVo;

@Service
public class MainService {
	@Autowired
	private MainDao maindao;

	public Map<String, Object> getMain(MainVo mainVo) {
		System.out.println("[MainService.MainList()]");
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
//		return maindao.getMain(mainVo);
//
	}

	public List<MainVo> storeList() {
		System.out.println("mainservice.storeList");

		return maindao.storeList();
	}

	public List<MainVo> getStore(int storeNo) {
		System.out.println("mainservice.getStore");

		return maindao.getStore(storeNo);
	}

	public List<MainVo> getRecentStore() {
		System.out.println("mainService.getRecentStore");
		return maindao.getRecentStore();
	}
}
