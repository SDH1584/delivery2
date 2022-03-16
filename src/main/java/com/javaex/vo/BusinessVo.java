package com.javaex.vo;

public class BusinessVo {
	private int storeNo;
	private int No;
	private int bizNo;
	private String storeName;
	private String storePhone;
	private String storeMAdr;
	private String storeSAdr;
	private double storeLat;
	private double sotreLng;
	private String logoImg;
	private int minPrice;
	private String notice;
	private String origin;
	private int onOff;
	private int fee;
	private String store_cate_no;
	private String store_cate_name;
	private String	open_time;
	private String	close_time;
	
	
	public BusinessVo() {
		
	}


	public BusinessVo(int storeNo, int no, int bizNo, String storeName, String storePhone, String storeMAdr,
			String storeSAdr, double storeLat, double sotreLng, String logoImg, int minPrice, String notice,
			String origin, int onOff, int fee, String store_cate_no, String store_cate_name, String open_time,
			String close_time) {
		this.storeNo = storeNo;
		No = no;
		this.bizNo = bizNo;
		this.storeName = storeName;
		this.storePhone = storePhone;
		this.storeMAdr = storeMAdr;
		this.storeSAdr = storeSAdr;
		this.storeLat = storeLat;
		this.sotreLng = sotreLng;
		this.logoImg = logoImg;
		this.minPrice = minPrice;
		this.notice = notice;
		this.origin = origin;
		this.onOff = onOff;
		this.fee = fee;
		this.store_cate_no = store_cate_no;
		this.store_cate_name = store_cate_name;
		this.open_time = open_time;
		this.close_time = close_time;
	}


	public int getStoreNo() {
		return storeNo;
	}


	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}


	public int getNo() {
		return No;
	}


	public void setNo(int no) {
		No = no;
	}


	public int getBizNo() {
		return bizNo;
	}


	public void setBizNo(int bizNo) {
		this.bizNo = bizNo;
	}


	public String getStoreName() {
		return storeName;
	}


	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}


	public String getStorePhone() {
		return storePhone;
	}


	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}


	public String getStoreMAdr() {
		return storeMAdr;
	}


	public void setStoreMAdr(String storeMAdr) {
		this.storeMAdr = storeMAdr;
	}


	public String getStoreSAdr() {
		return storeSAdr;
	}


	public void setStoreSAdr(String storeSAdr) {
		this.storeSAdr = storeSAdr;
	}


	public double getStoreLat() {
		return storeLat;
	}


	public void setStoreLat(double storeLat) {
		this.storeLat = storeLat;
	}


	public double getSotreLng() {
		return sotreLng;
	}


	public void setSotreLng(double sotreLng) {
		this.sotreLng = sotreLng;
	}


	public String getLogoImg() {
		return logoImg;
	}


	public void setLogoImg(String logoImg) {
		this.logoImg = logoImg;
	}


	public int getMinPrice() {
		return minPrice;
	}


	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
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


	public int getOnOff() {
		return onOff;
	}


	public void setOnOff(int onOff) {
		this.onOff = onOff;
	}


	public int getFee() {
		return fee;
	}


	public void setFee(int fee) {
		this.fee = fee;
	}


	public String getStore_cate_no() {
		return store_cate_no;
	}


	public void setStore_cate_no(String store_cate_no) {
		this.store_cate_no = store_cate_no;
	}


	public String getStore_cate_name() {
		return store_cate_name;
	}


	public void setStore_cate_name(String store_cate_name) {
		this.store_cate_name = store_cate_name;
	}


	public String getOpen_time() {
		return open_time;
	}


	public void setOpen_time(String open_time) {
		this.open_time = open_time;
	}


	public String getClose_time() {
		return close_time;
	}


	public void setClose_time(String close_time) {
		this.close_time = close_time;
	}


	@Override
	public String toString() {
		return "BusinessVo [storeNo=" + storeNo + ", No=" + No + ", bizNo=" + bizNo + ", storeName=" + storeName
				+ ", storePhone=" + storePhone + ", storeMAdr=" + storeMAdr + ", storeSAdr=" + storeSAdr + ", storeLat="
				+ storeLat + ", sotreLng=" + sotreLng + ", logoImg=" + logoImg + ", minPrice=" + minPrice + ", notice="
				+ notice + ", origin=" + origin + ", onOff=" + onOff + ", fee=" + fee + ", store_cate_no="
				+ store_cate_no + ", store_cate_name=" + store_cate_name + ", open_time=" + open_time + ", close_time="
				+ close_time + "]";
	}
	
	
	
	
	}
