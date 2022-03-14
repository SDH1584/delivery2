package com.javaex.vo;

import java.util.List;

public class MenuInfoVo {
	private int orderMenuNo;
	private int pOrderNo;
	private int menuNo;
	private String menuName;
	private int menuPrice;
	private int orderCount;
	private List<OptInfoVo> optInfoArr;
	
	
	
	public MenuInfoVo() {
		super();
	}
	
	public MenuInfoVo(int orderMenuNo, int pOrderNo, int menuNo, String menuName, int menuPrice, int orderCount,
			List<OptInfoVo> optInfoArr) {
		super();
		this.orderMenuNo = orderMenuNo;
		this.pOrderNo = pOrderNo;
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.orderCount = orderCount;
		this.optInfoArr = optInfoArr;
	}


	public int getOrderMenuNo() {
		return orderMenuNo;
	}

	public void setOrderMenuNo(int orderMenuNo) {
		this.orderMenuNo = orderMenuNo;
	}
	
	public int getpOrderNo() {
		return pOrderNo;
	}

	public void setpOrderNo(int pOrderNo) {
		this.pOrderNo = pOrderNo;
	}

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}

	public List<OptInfoVo> getOptInfoArr() {
		return optInfoArr;
	}

	public void setOptInfoArr(List<OptInfoVo> optInfoArr) {
		this.optInfoArr = optInfoArr;
	}

	
	
	
	@Override
	public String toString() {
		return "MenuInfoVo [orderMenuNo=" + orderMenuNo + ", pOrderNo=" + pOrderNo + ", menuNo=" + menuNo
				+ ", menuName=" + menuName + ", menuPrice=" + menuPrice + ", orderCount=" + orderCount + ", optInfoArr="
				+ optInfoArr + "]";
	}

	
	
	
	
	
	
	

	
	
	

	
}
