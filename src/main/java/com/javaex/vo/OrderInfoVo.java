package com.javaex.vo;

import java.util.List;

public class OrderInfoVo {
	private int orderNo;
	private int pOrderNo;
	private int no;
	private int storeNo;
	private int fee;
	private int finalPay;
	private String address;
	private String storeReq;
	private String deliveryReq;
	private int people;
	private String orderDate;
	private int orderStatus;
	private List<MenuInfoVo> menuInfoArr;
	
	
	
	public OrderInfoVo() {
		super();
	}
	
	public OrderInfoVo(int orderNo, int pOrderNo, int no, int storeNo, int fee, int finalPay, String address,
			String storeReq, String deliveryReq, int people, String orderDate, int orderStatus,
			List<MenuInfoVo> menuInfoArr) {
		super();
		this.orderNo = orderNo;
		this.pOrderNo = pOrderNo;
		this.no = no;
		this.storeNo = storeNo;
		this.fee = fee;
		this.finalPay = finalPay;
		this.address = address;
		this.storeReq = storeReq;
		this.deliveryReq = deliveryReq;
		this.people = people;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.menuInfoArr = menuInfoArr;
	}








	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getpOrderNo() {
		return pOrderNo;
	}

	public void setpOrderNo(int pOrderNo) {
		this.pOrderNo = pOrderNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	
	public int getFinalPay() {
		return finalPay;
	}

	public void setFinalPay(int finalPay) {
		this.finalPay = finalPay;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStoreReq() {
		return storeReq;
	}
	public void setStoreReq(String storeReq) {
		this.storeReq = storeReq;
	}
	public String getDeliveryReq() {
		return deliveryReq;
	}
	public void setDeliveryReq(String deliveryReq) {
		this.deliveryReq = deliveryReq;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}
	public List<MenuInfoVo> getMenuInfoArr() {
		return menuInfoArr;
	}
	public void setMenuInfoArr(List<MenuInfoVo> menuInfoArr) {
		this.menuInfoArr = menuInfoArr;
	}

	@Override
	public String toString() {
		return "OrderInfoVo [orderNo=" + orderNo + ", pOrderNo=" + pOrderNo + ", no=" + no + ", storeNo=" + storeNo
				+ ", fee=" + fee + ", finalPay=" + finalPay + ", address=" + address + ", storeReq=" + storeReq
				+ ", deliveryReq=" + deliveryReq + ", people=" + people + ", orderDate=" + orderDate + ", orderStatus="
				+ orderStatus + ", menuInfoArr=" + menuInfoArr + "]";
	}

	
	
	
	
	
	
	
}
