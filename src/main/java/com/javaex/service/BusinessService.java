package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BusinessDao;
import com.javaex.vo.BizstorecateVo;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.DeliveryVo;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.MenuOptioncateVO;
import com.javaex.vo.MenuVo;
import com.javaex.vo.MenucateVo;
import com.javaex.vo.OpentimeVo;
import com.javaex.vo.StorecateVo;
import com.javaex.vo.UserVo;

@Service
public class BusinessService {

	@Autowired
	private BusinessDao businessDao;

	
	//가게정보(가게정보+회원정보) 가져오기
	public Map<String, Object> storeEdiForm(int storeNo, int userNo) {

		System.out.println("BusinessService/storeEdiForm");
		System.out.println(storeNo);
		
		//회원정보 가져오긱
		UserVo userVo = businessDao.getUser(userNo);
		
		//가게정보 가져오기
		BusinessVo businessVo = businessDao.getStore(storeNo);
		
		Map<String, Object> storeMap = new HashMap<String, Object>();
		
		storeMap.put("userVo", userVo);
		storeMap.put("businessVo", businessVo);
		
		return storeMap;
		
	}
	
	//가게 카테고리 리스트 가져오기
	public Map<String, Object> bizStorecateList(int streNo) {
		Map<String, Object> storeMap = new HashMap<String, Object>();
		
		List<BizstorecateVo> StorecateList = businessDao.bizStorecateList(streNo);
		
		System.out.println(StorecateList);
		
		storeMap.put("BizstorecateVo", StorecateList);
		
		return storeMap;
	}
	
	//휴일 체크
	public Map<String, Object> OpentimeList(int streNo) {
		Map<String, Object> storeMap = new HashMap<String, Object>();
		
		List<OpentimeVo> Opentime = businessDao.OpentimeList(streNo);
		
		System.out.println(Opentime);
		
		storeMap.put("OpentimeVO", Opentime);
		
		return storeMap;
	}
	
	// 가게 카테고리 등록 리스트 가져오기
	public List<StorecateVo> StorecateList() {
		System.out.println("menucatelist service");
		return businessDao.StorecateList();
	}
	
	//배달지역 리스트 가져오기
	public Map<String, Object> DeliveryList(int sroreNO) {
		System.out.println("DeliveryList service");
		Map<String, Object> storeMap = new HashMap<String, Object>();
		List<DeliveryVo> DeliveryList = businessDao.DeliveryList(sroreNO);
		storeMap.put("DeliveryVo", DeliveryList);
		return storeMap;
		
	}
	
	// 휴일 등록하기
	public Map<String, Object> storetime(int storeNo,OpentimeVo opentimeVo){
		
		System.out.println("storetime service");
		Map<String, Object> storeMap = new HashMap<String, Object>();
		opentimeVo.setStore_no(storeNo);
		System.out.println(storeNo);
		System.out.println(opentimeVo);
		businessDao.storetimedelete(storeNo);
		
		for(int i=0; i<opentimeVo.getDay_offs().length; i++) {
			opentimeVo.setDay_off(opentimeVo.getDay_offs()[i]);
			businessDao.storetimeinsert(opentimeVo);
		}
		

		return storeMap;
	}
	
	// 유저 정보수정
	public void modify(UserVo userVo) {
		System.out.println(userVo);
		businessDao.UserUpdate(userVo);
	}

	// 가게정보수정
	public void Businessmodify(BusinessVo businessVo) {
		System.out.println(businessVo);
		businessDao.BusinessUpdate(businessVo);
	}
	
	// 배달지역추가
	public DeliveryVo saveDeliveryArea(DeliveryVo deliveryVo){
		//베달지역 추가
		businessDao.saveDeliveryArea(deliveryVo);
		//배달지역 하나 가져오기
		return businessDao.getDeliveryArea(deliveryVo.getDelivery_no());
	}
	

	// 메뉴카테고리 추가
	public void menucateadd(MenucateVo menucateVo) {
		System.out.println("menucateadd service");
		System.out.println(menucateVo);
		businessDao.menucateadd(menucateVo);
	}

	// 카테고리 리스트 출력
	public List<MenucateVo> menucatelist(MenucateVo menucateVo) {

		System.out.println("menucatelist service");

		return businessDao.menucatelist(menucateVo);
	}

	// 메뉴 추가
	public void menuadd(MenuVo menuVo) {
		System.out.println("menuadd service");
		System.out.println(menuVo);
		businessDao.menuadd(menuVo);
	}

	// 메뉴 리스트
	public List<MenuVo> menulistpar(MenuVo menuVo) {
		System.out.println("menulist service");
		return businessDao.menulistpar(menuVo);
	}
	
	
	// 가게 카테고리 추가
	public void storecateadd(BizstorecateVo bizstorecateVo,int storen) {
		// 다대다 넘김
		bizstorecateVo.setStore_no(storen);
		businessDao.storecate(bizstorecateVo);
	}
	
	// 메뉴 하나 가져오기
	public MenuVo getmenu(int menuNo) {

		return businessDao.getmenu(menuNo);
	}

	// 메뉴 옵션 카테고리 추가
	public void menuOptioncateadd(MenuOptioncateVO menuOptioncate) {
		System.out.println("menucateadd service");
		System.out.println(menuOptioncate);
		businessDao.menuOptioncateadd(menuOptioncate);
	}

	// 메뉴 옵션 추가
	public void cateOption(MenuOptionVo mnuOptionVo) {
		System.out.println("cateOption service");
		System.out.println(mnuOptionVo);
		businessDao.cateOption(mnuOptionVo);
	}

	// 메뉴 옵션 카테고리 리스트 출력
	public List<MenuOptioncateVO> menuOptioncateList(MenuOptioncateVO menuOptioncate) {

		System.out.println("menucatelist service");

		return businessDao.menuOptioncateList(menuOptioncate);
	}

	/*
	 * // 메뉴 옵션 리스트 public List<MenuOptionVo> menuOptionVoList(MenuOptionVo
	 * menuOptionVo) {
	 * 
	 * System.out.println("menucatelist service");
	 * 
	 * return businessDao.menuOptioncateList(menuOptioncate); }
	 */

}
