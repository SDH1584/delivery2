package com.javaex.vo;

public class BusinessVo2 {
	
	private int store_no;
	private int no;
	private int biz_no;
	private String store_name;
	private String store_phone;
	private String store_m_adr;
	private String store_s_adr;
	private double store_lat;
	private double store_lng;
	private String logo_img;
	private int min_price;
	private String notice;
	private String origin;
	private int on_off;
	
	
	public BusinessVo2(int store_no, int no, int biz_no, String store_name, String store_phone, String store_m_adr,
			String store_s_adr, double store_lat, double store_lng, String logo_img, int min_price, String notice,
			String origin, int on_off) {
		this.store_no = store_no;
		this.no = no;
		this.biz_no = biz_no;
		this.store_name = store_name;
		this.store_phone = store_phone;
		this.store_m_adr = store_m_adr;
		this.store_s_adr = store_s_adr;
		this.store_lat = store_lat;
		this.store_lng = store_lng;
		this.logo_img = logo_img;
		this.min_price = min_price;
		this.notice = notice;
		this.origin = origin;
		this.on_off = on_off;
	}


	public BusinessVo2() {

	}


	public int getStore_no() {
		return store_no;
	}


	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public int getBiz_no() {
		return biz_no;
	}


	public void setBiz_no(int biz_no) {
		this.biz_no = biz_no;
	}


	public String getStore_name() {
		return store_name;
	}


	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}


	public String getStore_phone() {
		return store_phone;
	}


	public void setStore_phone(String store_phone) {
		this.store_phone = store_phone;
	}


	public String getStore_m_adr() {
		return store_m_adr;
	}


	public void setStore_m_adr(String store_m_adr) {
		this.store_m_adr = store_m_adr;
	}


	public String getStore_s_adr() {
		return store_s_adr;
	}


	public void setStore_s_adr(String store_s_adr) {
		this.store_s_adr = store_s_adr;
	}


	public double getStore_lat() {
		return store_lat;
	}


	public void setStore_lat(double store_lat) {
		this.store_lat = store_lat;
	}


	public double getStore_lng() {
		return store_lng;
	}


	public void setStore_lng(double store_lng) {
		this.store_lng = store_lng;
	}


	public String getLogo_img() {
		return logo_img;
	}


	public void setLogo_img(String logo_img) {
		this.logo_img = logo_img;
	}


	public int getMin_price() {
		return min_price;
	}


	public void setMin_price(int min_price) {
		this.min_price = min_price;
	}


	public String getNotice() {
		return notice;
	}


	public void setNotice(String notice) {
		this.notice = notice;
	}


	public String getOrigin() {
		return origin;
	}


	public void setOrigin(String origin) {
		this.origin = origin;
	}


	public int getOn_off() {
		return on_off;
	}


	public void setOn_off(int on_off) {
		this.on_off = on_off;
	}


	@Override
	public String toString() {
		return "BusinessVo2 [store_no=" + store_no + ", no=" + no + ", biz_no=" + biz_no + ", store_name=" + store_name
				+ ", store_phone=" + store_phone + ", store_m_adr=" + store_m_adr + ", store_s_adr=" + store_s_adr
				+ ", store_lat=" + store_lat + ", store_lng=" + store_lng + ", logo_img=" + logo_img + ", min_price="
				+ min_price + ", notice=" + notice + ", origin=" + origin + ", on_off=" + on_off + "]";
	}
	
	
	
	
	
	

}
