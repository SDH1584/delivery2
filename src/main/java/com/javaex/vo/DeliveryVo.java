package com.javaex.vo;

public class DeliveryVo {
	private int delivery_no;
	private int store_no;
	private String delivery_area;
	private int fee;
	private int area_code;
	
	
	
	
	
	public DeliveryVo() {
		
	}





	public DeliveryVo(int delivery_no, int store_no, String delivery_area, int fee, int area_code) {
		
		this.delivery_no = delivery_no;
		this.store_no = store_no;
		this.delivery_area = delivery_area;
		this.fee = fee;
		this.area_code = area_code;
	}





	public int getDelivery_no() {
		return delivery_no;
	}





	public void setDelivery_no(int delivery_no) {
		this.delivery_no = delivery_no;
	}





	public int getStore_no() {
		return store_no;
	}





	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}





	public String getDelivery_area() {
		return delivery_area;
	}





	public void setDelivery_area(String delivery_area) {
		this.delivery_area = delivery_area;
	}





	public int getFee() {
		return fee;
	}





	public void setFee(int fee) {
		this.fee = fee;
	}





	public int getArea_code() {
		return area_code;
	}





	public void setArea_code(int area_code) {
		this.area_code = area_code;
	}





	@Override
	public String toString() {
		return "DeliveryVo [delivery_no=" + delivery_no + ", store_no=" + store_no + ", delivery_area=" + delivery_area
				+ ", fee=" + fee + ", area_code=" + area_code + "]";
	}
	
	
	
}
