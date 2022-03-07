package com.javaex.vo;

public class OrderVo {
	
	private int orderNo;
	private int firstNo; //예약만든사람 회원번호
	private int storeNo;
	private int people;
	private int countPeople;
	private String orderDate;
	private int orderStatus;
	private String deliveryMAdr;
	private String deliverySAdr;
	private double deliveryLat;
	private double deliveryLng;
	private String deliveryReq;
	private int pOrderNo;
	private int no;
	private int finalPay;
	private int pFee;
	private String storeReq;
	private String method;
	private String storeName;
	
	
	
	public OrderVo() {
		super();
	}
		
	public OrderVo(int orderNo, int firstNo, int storeNo, int people, int countPeople, String orderDate,
			int orderStatus, String deliveryMAdr, String deliverySAdr, double deliveryLat, double deliveryLng,
			String deliveryReq, int pOrderNo, int no, int finalPay, int pFee, String storeReq, String method,
			String storeName) {
		super();
		this.orderNo = orderNo;
		this.firstNo = firstNo;
		this.storeNo = storeNo;
		this.people = people;
		this.countPeople = countPeople;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.deliveryMAdr = deliveryMAdr;
		this.deliverySAdr = deliverySAdr;
		this.deliveryLat = deliveryLat;
		this.deliveryLng = deliveryLng;
		this.deliveryReq = deliveryReq;
		this.pOrderNo = pOrderNo;
		this.no = no;
		this.finalPay = finalPay;
		this.pFee = pFee;
		this.storeReq = storeReq;
		this.method = method;
		this.storeName = storeName;
	}

	
	

	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getFirstNo() {
		return firstNo;
	}
	public void setFirstNo(int firstNo) {
		this.firstNo = firstNo;
	}
	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public int getCountPeople() {
		return countPeople;
	}

	public void setCountPeople(int countPeople) {
		this.countPeople = countPeople;
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
	public String getDeliveryMAdr() {
		return deliveryMAdr;
	}
	public void setDeliveryMAdr(String deliveryMAdr) {
		this.deliveryMAdr = deliveryMAdr;
	}
	public String getDeliverySAdr() {
		return deliverySAdr;
	}
	public void setDeliverySAdr(String deliverySAdr) {
		this.deliverySAdr = deliverySAdr;
	}
	public double getDeliveryLat() {
		return deliveryLat;
	}
	public void setDeliveryLat(double deliveryLat) {
		this.deliveryLat = deliveryLat;
	}
	public double getDeliveryLng() {
		return deliveryLng;
	}
	public void setDeliveryLng(double deliveryLng) {
		this.deliveryLng = deliveryLng;
	}
	public String getDeliveryReq() {
		return deliveryReq;
	}
	public void setDeliveryReq(String deliveryReq) {
		this.deliveryReq = deliveryReq;
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
	public int getFinalPay() {
		return finalPay;
	}
	public void setFinalPay(int finalPay) {
		this.finalPay = finalPay;
	}
	public int getpFee() {
		return pFee;
	}
	public void setpFee(int pFee) {
		this.pFee = pFee;
	}
	public String getStoreReq() {
		return storeReq;
	}
	public void setStoreReq(String storeReq) {
		this.storeReq = storeReq;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	
	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	@Override
	public String toString() {
		return "OrderVo [orderNo=" + orderNo + ", firstNo=" + firstNo + ", storeNo=" + storeNo + ", people=" + people
				+ ", countPeople=" + countPeople + ", orderDate=" + orderDate + ", orderStatus=" + orderStatus
				+ ", deliveryMAdr=" + deliveryMAdr + ", deliverySAdr=" + deliverySAdr + ", deliveryLat=" + deliveryLat
				+ ", deliveryLng=" + deliveryLng + ", deliveryReq=" + deliveryReq + ", pOrderNo=" + pOrderNo + ", no="
				+ no + ", finalPay=" + finalPay + ", pFee=" + pFee + ", storeReq=" + storeReq + ", method=" + method
				+ ", storeName=" + storeName + "]";
	}

	
	
	
	
	
	
	

}
