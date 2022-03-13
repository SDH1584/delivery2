package com.javaex.vo;

public class SelOptVo {
	private int orderOptionNo;
	private int optionNo;
	private String optionName;
	private int optionPrice;
	
	
	
	public SelOptVo() {
		super();
	}
	
	public SelOptVo(int orderOptionNo, int optionNo, String optionName, int optionPrice) {
		super();
		this.orderOptionNo = orderOptionNo;
		this.optionNo = optionNo;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
	}




	public int getOrderOptionNo() {
		return orderOptionNo;
	}

	public void setOrderOptionNo(int orderOptionNo) {
		this.orderOptionNo = orderOptionNo;
	}

	public int getOptionNo() {
		return optionNo;
	}
	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public int getOptionPrice() {
		return optionPrice;
	}
	public void setOptionPrice(int optionPrice) {
		this.optionPrice = optionPrice;
	}

	
	
	
	@Override
	public String toString() {
		return "SelOptVo [orderOptionNo=" + orderOptionNo + ", optionNo=" + optionNo + ", optionName=" + optionName
				+ ", optionPrice=" + optionPrice + "]";
	}
	
	
	
	
}
