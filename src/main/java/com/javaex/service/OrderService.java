package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.OrderDao;
import com.javaex.vo.BusinessVo;
import com.javaex.vo.MenuInfoVo;
import com.javaex.vo.MenuOptionVo;
import com.javaex.vo.OptInfoVo;
import com.javaex.vo.OrderInfoVo;
import com.javaex.vo.OrderVo;
import com.javaex.vo.SelOptVo;

@Service
public class OrderService {
	
	@Autowired
	OrderDao orderDao;
	
	/* 가게관리-메인-주문내역 */
	public Map<String,Object> orderList(int loginStoreNo){
		System.out.println("[OrderService.orderList()]");
		
		List<OrderVo> orderList = orderDao.getList(loginStoreNo);
		BusinessVo bizVo = orderDao.getBiz(loginStoreNo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("orderList", orderList);
		map.put("bizVo", bizVo);
		return map;
	}
	
	/* 가게관리-메인-가게활성화 */
	public BusinessVo storeOnOff(int loginStoreNo) {
		System.out.println("[OrderService.storeOnOff()]");
		
		orderDao.updateOnOff(loginStoreNo);
		return orderDao.getBiz(loginStoreNo);
	}
	
	/* 가게관리-메인-주문상태 변경 */
	public int orderStatus(OrderVo orderVo) {
		System.out.println("[OrderService.orderStatus()]");
		
		return orderDao.updateStatus(orderVo);
	}
	
	/* 가게상세-메뉴리스트 가져오기 */
	public Map<String, Object> menuList(int storeNo, int no) {
		System.out.println("[OrderService.menuList(2)]");
		
		BusinessVo bVo = new BusinessVo();
		bVo.setNo(no);
		bVo.setStoreNo(storeNo);
		
		OrderVo orderVo= orderDao.getDeliFee(bVo); //배달주소, 배달료 정보
		System.out.println(orderVo);
		BusinessVo bizVo=orderDao.getBiz(storeNo);//가게 기본정보
		List<MenuOptionVo> menuCateList = orderDao.getMenuCateList(storeNo);//메뉴카테고리리스트
		List<MenuOptionVo> menuList = orderDao.getMenuList(storeNo);//메뉴리스트
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bizVo", bizVo);
		map.put("orderVo", orderVo);
		map.put("menuCateList", menuCateList);
		map.put("menuList", menuList);
		
		System.out.println(map);
		
		return map;		
	}
	
	
	/* 가게상세-메뉴리스트 가져오기-로그인 전 */
	public Map<String, Object> menuList(int storeNo) {
		System.out.println("[OrderService.menuList(1)]");
		
		BusinessVo bizVo=orderDao.getBiz(storeNo);//가게 기본정보
		List<MenuOptionVo> menuCateList = orderDao.getMenuCateList(storeNo);//메뉴카테고리리스트
		List<MenuOptionVo> menuList = orderDao.getMenuList(storeNo);//메뉴리스트
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bizVo", bizVo);
		map.put("menuCateList", menuCateList);
		map.put("menuList", menuList);
		
		System.out.println(map);
		
		return map;		
	}
	
	/* 가게상세-메뉴리스트 가져오기-예약참여 */
	public Map<String, Object> menuList(int storeNo, int orderNo, int no) {
		System.out.println("[OrderService.menuList(3)]");
		
		BusinessVo bizVo=orderDao.getBiz(storeNo);//가게 기본정보
		List<MenuOptionVo> menuCateList = orderDao.getMenuCateList(storeNo);//메뉴카테고리리스트
		List<MenuOptionVo> menuList = orderDao.getMenuList(storeNo);//메뉴리스트
		OrderVo orderVo = orderDao.getOrderInfo(orderNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bizVo", bizVo);
		map.put("menuCateList", menuCateList);
		map.put("menuList", menuList);
		map.put("orderVo", orderVo);
		System.out.println(map);
		
		return map;		
	}
	
	/* 가게상세-옵션리스트 가져오기 */
	public Map<String, Object> optionList(MenuOptionVo moVo) {
		System.out.println("[OrderService.optionList()]");
		
		MenuOptionVo menuVo = orderDao.getMenu(moVo);
		List<MenuOptionVo> optionCateList = orderDao.getOptionCateList(moVo);
		List<MenuOptionVo> optionList = orderDao.getOptionList(moVo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("menuVo", menuVo);
		map.put("optionCateList", optionCateList);
		map.put("optionList", optionList);
		System.out.println(map);
		
		return map;
		
	}
	
	/* 주문정보 저장하기 */
	public void saveOrderInfo(OrderInfoVo oVo) {
		System.out.println("[OrderService.saveOrderInfo()]");
	
		orderDao.addOrderGroup(oVo); //주문그룹테이블에 정보 삽입
		orderDao.addPersonalOrder(oVo); //개인주문정보테이블에 정보 삽입
		
		List<MenuInfoVo> orderMenuList = oVo.getMenuInfoArr();
		for(int i=0; i<orderMenuList.size(); i++) {
			MenuInfoVo orderMenu = orderMenuList.get(i);
			orderMenu.setpOrderNo(oVo.getpOrderNo());
			orderDao.addOrderMenu(orderMenu); // 주문메뉴테이블에 정보 삽입
			System.out.println("menuList");
			
			List<OptInfoVo> optCateList = orderMenu.getOptInfoArr();
			for(int j=0; j<optCateList.size(); j++) {
				OptInfoVo optCate = optCateList.get(j);
				System.out.println("cateList");
				
				List<SelOptVo> selOptList = optCate.getSelOptArr();
				for(int k=0; k<selOptList.size(); k++) {
					SelOptVo selOpt = selOptList.get(k);
					selOpt.setOrderMenuNo(orderMenu.getOrderMenuNo());
					selOpt.setOptionCnt(orderMenu.getOrderCount());
					orderDao.addOrderOpt(selOpt); // 주문옵션테이블에 정보 삽입
					System.out.println("optionList");
				}
			}	
		}
	}
	
	/* 주문정보 저장하기 */
	public void saveOrderInfo2(OrderInfoVo oVo) {
		System.out.println("[OrderService.saveOrderInfo()]");
	
		orderDao.addPersonalOrder(oVo); //개인주문정보테이블에 정보 삽입
		
		List<MenuInfoVo> orderMenuList = oVo.getMenuInfoArr();
		for(int i=0; i<orderMenuList.size(); i++) {
			MenuInfoVo orderMenu = orderMenuList.get(i);
			orderMenu.setpOrderNo(oVo.getpOrderNo());
			orderDao.addOrderMenu(orderMenu); // 주문메뉴테이블에 정보 삽입
			System.out.println("menuList");
			
			List<OptInfoVo> optCateList = orderMenu.getOptInfoArr();
			for(int j=0; j<optCateList.size(); j++) {
				OptInfoVo optCate = optCateList.get(j);
				System.out.println("cateList");
				
				List<SelOptVo> selOptList = optCate.getSelOptArr();
				for(int k=0; k<selOptList.size(); k++) {
					SelOptVo selOpt = selOptList.get(k);
					selOpt.setOrderMenuNo(orderMenu.getOrderMenuNo());
					selOpt.setOptionCnt(orderMenu.getOrderCount());
					orderDao.addOrderOpt(selOpt); // 주문옵션테이블에 정보 삽입
					System.out.println("optionList");
				}
			}	
		}
	}
	
}
