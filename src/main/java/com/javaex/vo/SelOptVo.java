package com.javaex.vo;

public class SelOptVo {
	private int orderOptionNo;
	private int orderMenuNo;
	private int optionNo;
	private String optionName;
	private int optionPrice;
	private int optionCnt;
	
	
	
	public SelOptVo() {
		super();
	}
	
	public SelOptVo(int orderOptionNo, int orderMenuNo, int optionNo, String optionName, int optionPrice,
			int optionCnt) {
		super();
		this.orderOptionNo = orderOptionNo;
		this.orderMenuNo = orderMenuNo;
		this.optionNo = optionNo;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
		this.optionCnt = optionCnt;
	}


	public int getOrderOptionNo() {
		return orderOptionNo;
	}

	public void setOrderOptionNo(int orderOptionNo) {
		this.orderOptionNo = orderOptionNo;
	}
	
	public int getOrderMenuNo() {
		return orderMenuNo;
	}

	public void setOrderMenuNo(int orderMenuNo) {
		this.orderMenuNo = orderMenuNo;
	}

	public int getOptionCnt() {
		return optionCnt;
	}

	public void setOptionCnt(int optionCnt) {
		this.optionCnt = optionCnt;
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
		return "SelOptVo [orderOptionNo=" + orderOptionNo + ", orderMenuNo=" + orderMenuNo + ", optionNo=" + optionNo
				+ ", optionName=" + optionName + ", optionPrice=" + optionPrice + ", optionCnt=" + optionCnt + "]";
	}

	
	
	

	
	
	
}
