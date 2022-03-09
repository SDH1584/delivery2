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
	private double Lat;
	private double Lng;
	private int people;
	private String mainAddress;
	private String subAddress;
	private String addressName;
	private int orderNo;
	private int pOrderNo;
	private int orderStatus;
	
	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public MainVo(int storeNo, int no, String storeName, String storePhone, String storeMAdr, String storeSAdr,
			String logoImg, double storeLat, double storeLng, int people, int pOrderNo, int orderStatus) {
		super();
		this.storeNo = storeNo;
		this.no = no;
		this.storeName = storeName;
		this.storePhone = storePhone;
		this.storeMAdr = storeMAdr;
		this.storeSAdr = storeSAdr;
		this.logoImg = logoImg;
		this.storeLat = storeLat;
		this.storeLng = storeLng;
		this.people = people;
		this.pOrderNo = pOrderNo;
		this.orderStatus = orderStatus;
	}

	public MainVo(int storeNo, int no, String storeName, String storePhone, String storeMAdr, String storeSAdr,
			String logoImg, double storeLat, double storeLng, int recommand, double lat, double lng, int people,
			String mainAddress, String subAddress, String addressName, int orderNo, int pOrderNo, int orderStatus) {
		super();
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
		Lat = lat;
		Lng = lng;
		this.people = people;
		this.mainAddress = mainAddress;
		this.subAddress = subAddress;
		this.addressName = addressName;
		this.orderNo = orderNo;
		this.pOrderNo = pOrderNo;
		this.orderStatus = orderStatus;
	}

	public MainVo(int storeNo, int no, String storeName, String storePhone, String storeMAdr, String storeSAdr,
			String logoImg, double storeLat, double storeLng, int recommand, double lat, double lng, int people,
			String mainAddress, String subAddress, String addressName, int No, int pOrderNo) {
		super();
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
		Lat = lat;
		Lng = lng;
		this.people = people;
		this.mainAddress = mainAddress;
		this.subAddress = subAddress;
		this.addressName = addressName;
		this.pOrderNo = pOrderNo;
	}

	public MainVo(int storeNo) {
		super();
		this.storeNo = storeNo;
	}

	public MainVo() {
		super();
	}

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
		return Lat;
	}

	public void setLat(double lat) {
		Lat = lat;
	}

	public double getLng() {
		return Lng;
	}

	public void setLng(double lng) {
		Lng = lng;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getmainAddress() {
		return mainAddress;
	}

	public void setmainAddress(String mainAddress) {
		this.mainAddress = mainAddress;
	}

	public String getSubAddress() {
		return subAddress;
	}

	public void setSubAddress(String subAddress) {
		this.subAddress = subAddress;
	}

	public String getAddressName() {
		return addressName;
	}

	public void setAddressName(String addressName) {
		this.addressName = addressName;
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

	@Override
	public String toString() {
		return "MainVo [storeNo=" + storeNo + ", no=" + no + ", storeName=" + storeName + ", storePhone=" + storePhone
				+ ", storeMAdr=" + storeMAdr + ", storeSAdr=" + storeSAdr + ", logoImg=" + logoImg + ", storeLat="
				+ storeLat + ", storeLng=" + storeLng + ", recommand=" + recommand + ", Lat=" + Lat + ", Lng=" + Lng
				+ ", people=" + people + ", mainAddress=" + mainAddress + ", subAddress=" + subAddress
				+ ", addressName=" + addressName + ", orderNo=" + orderNo + ", pOrderNo=" + pOrderNo + "]";
	}

	public MainVo(double lat, double lng, String mainAddress, String subAddress, String addressName) {
		super();
		Lat = lat;
		Lng = lng;
		this.mainAddress = mainAddress;
		this.subAddress = subAddress;
		this.addressName = addressName;
	}

	public MainVo(int storeNo, int no, String storeName, String storePhone, String storeMAdr, String storeSAdr,
			String logoImg, double storeLat, double storeLng, int recommand, int people) {
		super();
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
		this.people = people;
	}

	public MainVo(String storeMAdr, String storeSAdr, double storeLat, double storeLng) {
		super();
		this.storeMAdr = storeMAdr;
		this.storeSAdr = storeSAdr;
		this.storeLat = storeLat;
		this.storeLng = storeLng;
	}

}
