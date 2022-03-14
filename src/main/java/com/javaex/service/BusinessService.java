package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.BusinessDao;
import com.javaex.vo.BizstorecateVo;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.MenuVo;
import com.javaex.vo.MenucateVo;
import com.javaex.vo.StorecateVo;
import com.javaex.vo.UserVo;

@Service
public class BusinessService {

	@Autowired
	private BusinessDao businessDao;

	public BusinessVo storeEdiForm(int storeNo) {

		System.out.println("BusinessService/storeEdiForm");
		System.out.println(storeNo);
		return businessDao.getUser(storeNo);
	}

	public UserVo getuser(int no) {

		System.out.println("BusinessService/storeEdiForm/Userno");
		System.out.println(no);
		return businessDao.getuser(no);
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
	
	
	//메뉴 추가
	public void menuadd(MenuVo menuVo) {
		System.out.println("menuadd service");
		System.out.println(menuVo);
		businessDao.menuadd(menuVo);
	}
	

	//메뉴 리스트
	public List<MenuVo> menulistpar(MenuVo menuVo) {
		System.out.println("menulist service");
		return businessDao.menulistpar(menuVo);
	}
	
	//가게 카테고리 추가
	public void storecateadd(StorecateVo storecateVo,BizstorecateVo BizstorecateVo) {
		System.out.println("service storecate = "+ storecateVo);
		System.out.println(BizstorecateVo);
		
		businessDao.storecateadd(storecateVo);
		//다대다 넘김
		businessDao.storecate(BizstorecateVo);
	}

}
