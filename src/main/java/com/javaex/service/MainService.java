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

//	public Map<String, Object>getList(MainVo mainVo){
//		System.out.println("[MainService.MainList()]");
//		Map<String,Object> map=new HashMap<String, Object>();
//		//메인정보가져오기
//		List<MainVo>getList=maindao.getList(mainVo);
//		map.put("getList",getList);
//		//가게정보가져오기
//		mainVo.setStoreNo(getList.get(0).getStoreNo());
//		List<MainVo>getStore=maindao.getStore(mainVo);
//		map.put("getStore", getStore);
//		//가장 최근가게 가져오기
//		mainVo=maindao.getRecentStore(mainVo);
//		map.put("mainVo", mainVo);
//		
//		return map;
	public List<MainVo> getMain(MainVo mainVo) {
		System.out.println("getMain service");
		return maindao.getMain(mainVo);

	}

	public List<MainVo> getStore() {
		System.out.println("mainservice.getStore");

		return maindao.getStore();
	}

	public List<MainVo> getRecentStore() {
		System.out.println("mainService.getRecentStore");
		return maindao.getRecentStore();
	}
}