package com.javaex.vo;

public class OrderListVo {
	
	// 필드
	private String store_name;
	private int people;
	private String order_date;
	private int order_status;
	private int p_order_no;
	private int no;
	private int final_pay;
	private int p_fee;
	private String store_req;
	private String method;
	private int count;
	private String menu_name;
	
	// 생성자
	public OrderListVo() {}

	public OrderListVo(String store_name, int people, String order_date, int order_status, int p_order_no, int no, int final_pay,
			int p_fee, String store_req, String method, int count, String menu_name) {
		super();
		this.store_name = store_name;
		this.people = people;
		this.order_date = order_date;
		this.order_status = order_status;
		this.p_order_no = p_order_no;
		this.no = no;
		this.final_pay = final_pay;
		this.p_fee = p_fee;
		this.store_req = store_req;
		this.method = method;
		this.count = count;
		this.menu_name = menu_name;
	}

	// 메소드 gs
	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	public int getOrder_status() {
		return order_status;
	}

	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}

	public int getP_order_no() {
		return p_order_no;
	}

	public void setP_order_no(int p_order_no) {
		this.p_order_no = p_order_no;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getFinal_pay() {
		return final_pay;
	}

	public void setFinal_pay(int final_pay) {
		this.final_pay = final_pay;
	}

	public int getP_fee() {
		return p_fee;
	}

	public void setP_fee(int p_fee) {
		this.p_fee = p_fee;
	}

	public String getStore_req() {
		return store_req;
	}

	public void setStore_req(String store_req) {
		this.store_req = store_req;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	// 메소드 일반
	@Override
	public String toString() {
		return "OrderListVo [store_name=" + store_name + ", people=" + people + ", order_date=" + order_date
				+ ", order_status=" + order_status + ", p_order_no=" + p_order_no + ", no=" + no + ", final_pay=" + final_pay + ", p_fee=" + p_fee
				+ ", store_req=" + store_req + ", method=" + method + ", count=" + count + ", menu_name=" + menu_name
				+ "]";
	}
}
