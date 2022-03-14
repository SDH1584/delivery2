package com.javaex.vo;

public class MainVo {

	private int storeNo;
	private int no;
	private String storeName;
	private String storePhone;
	private String storeMAdr;
	private String storeSAdr;
	private String logoImg;
	private double storeLat;
	private double storeLng;
	private int recommand;
	private double lat;
	private double lng;
	private int people;
	private String mainAddress;
	private String subAddress;
	private int countPeople;

	// 생성자
	public MainVo() {
	}

	public MainVo(int storeNo, int no, String storeName, String storePhone, String storeMAdr, String storeSAdr,
			String logoImg, double storeLat, double storeLng, int recommand, double lat, double lng, int people,
			String mainAddress, String subAddress, int countPeople) {
		this.storeNo = storeNo;
		this.no = no;
		this.storeName = storeName;
		this.storePhone = storePhone;
		this.storeMAdr = storeMAdr;
		this.storeSAdr = storeSAdr;
		this.logoImg = logoImg;
		this.storeLat = storeLat;
		this.storeLng = storeLng;
		this.recommand = recommand;
		this.lat = lat;
		this.lng = lng;
		this.people = people;
		this.mainAddress = mainAddress;
		this.subAddress = subAddress;
		this.countPeople = countPeople;
	}

	// g/s
	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getLogoImg() {
		return logoImg;
	}

	public void setLogoImg(String logoImg) {
		this.logoImg = logoImg;
	}

	public double getStoreLat() {
		return storeLat;
	}

	public void setStoreLat(double storeLat) {
		this.storeLat = storeLat;
	}

	public double getStoreLng() {
		return storeLng;
	}

	public void setStoreLng(double storeLng) {
		this.storeLng = storeLng;
	}

	public int getRecommand() {
		return recommand;
	}

	public void setRecommand(int recommand) {
		this.recommand = recommand;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLng() {
		return lng;
	}

	public void setLng(double lng) {
		this.lng = lng;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getMainAddress() {
		return mainAddress;
	}

	public void setMainAddress(String mainAddress) {
		this.mainAddress = mainAddress;
	}

	public String getSubAddress() {
		return subAddress;
	}

	public void setSubAddress(String subAddress) {
		this.subAddress = subAddress;
	}

	public int getCountPeople() {
		return countPeople;
	}

	public void setCountPeople(int countPeople) {
		this.countPeople = countPeople;
	}

	//메소드 일반
	@Override
	public String toString() {
		return "MainVo [storeNo=" + storeNo + ", no=" + no + ", storeName=" + storeName + ", storePhone=" + storePhone
				+ ", storeMAdr=" + storeMAdr + ", storeSAdr=" + storeSAdr + ", logoImg=" + logoImg + ", storeLat="
				+ storeLat + ", storeLng=" + storeLng + ", recommand=" + recommand + ", lat=" + lat + ", lng=" + lng
				+ ", people=" + people + ", mainAddress=" + mainAddress + ", subAddress=" + subAddress
				+ ", countPeople=" + countPeople + "]";
	}

}
