package com.javaex.vo;

import java.util.List;

public class OrderInfoVo {
	private int storeNo;
	private int fee;
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
	
	public OrderInfoVo(int storeNo, int fee, String address, String storeReq, String deliveryReq, int people,
			String orderDate, int orderStatus, List<MenuInfoVo> menuInfoArr) {
		super();
		this.storeNo = storeNo;
		this.fee = fee;
		this.address = address;
		this.storeReq = storeReq;
		this.deliveryReq = deliveryReq;
		this.people = people;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.menuInfoArr = menuInfoArr;
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
		return "OrderInfoVo [storeNo=" + storeNo + ", fee=" + fee + ", address=" + address + ", storeReq=" + storeReq
				+ ", deliveryReq=" + deliveryReq + ", people=" + people + ", orderDate=" + orderDate + ", orderStatus="
				+ orderStatus + ", menuInfoArr=" + menuInfoArr + "]";
	}
	
}
