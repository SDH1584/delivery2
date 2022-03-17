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
	private String openHour;
	private String openMin;
	private String closeHour;
	private String closeMin;

	public BusinessVo() {

	}

	public BusinessVo(int storeNo, int no, int bizNo, String storeName, String storePhone, String storeMAdr,
			String storeSAdr, double storeLat, double sotreLng, String logoImg, int minPrice, String notice,
			String origin, int onOff, int fee, String openHour, String openMin, String closeHour, String closeMin) {
		super();
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
		this.openHour = openHour;
		this.openMin = openMin;
		this.closeHour = closeHour;
		this.closeMin = closeMin;
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
	
	public String getOpenHour() {
		return openHour;
	}

	public void setOpenHour(String openHour) {
		this.openHour = openHour;
	}

	public String getOpenMin() {
		return openMin;
	}

	public void setOpenMin(String openMin) {
		this.openMin = openMin;
	}

	public String getCloseHour() {
		return closeHour;
	}

	public void setCloseHour(String closeHour) {
		this.closeHour = closeHour;
	}

	public String getCloseMin() {
		return closeMin;
	}

	public void setCloseMin(String closeMin) {
		this.closeMin = closeMin;
	}

	@Override
	public String toString() {
		return "BusinessVo [storeNo=" + storeNo + ", No=" + No + ", bizNo=" + bizNo + ", storeName=" + storeName
				+ ", storePhone=" + storePhone + ", storeMAdr=" + storeMAdr + ", storeSAdr=" + storeSAdr + ", storeLat="
				+ storeLat + ", sotreLng=" + sotreLng + ", logoImg=" + logoImg + ", minPrice=" + minPrice + ", notice="
				+ notice + ", origin=" + origin + ", onOff=" + onOff + ", fee=" + fee + ", openHour=" + openHour
				+ ", openMin=" + openMin + ", closeHour=" + closeHour + ", closeMin=" + closeMin + "]";
	}

	
	

	
}
