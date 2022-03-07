package com.javaex.vo;

public class AddressVo {
	
	// 필드
	private int address_no;
	private int no;
	private String address_name;
	private String main_address;
	private String sub_address;
	private int lat;
	private int lng;
	private int default_address;
	
	
	//생성자
	public AddressVo() {}

	public AddressVo(int address_no, int no, String address_name, String main_address, String sub_address, int lat,
			int lng, int default_address) {
		this.address_no = address_no;
		this.no = no;
		this.address_name = address_name;
		this.main_address = main_address;
		this.sub_address = sub_address;
		this.lat = lat;
		this.lng = lng;
		this.default_address = default_address;
	}

	// 메소드 gs
	public int getAddress_no() {
		return address_no;
	}


	public void setAddress_no(int address_no) {
		this.address_no = address_no;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getAddress_name() {
		return address_name;
	}


	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}


	public String getMain_address() {
		return main_address;
	}


	public void setMain_address(String main_address) {
		this.main_address = main_address;
	}


	public String getSub_address() {
		return sub_address;
	}


	public void setSub_address(String sub_address) {
		this.sub_address = sub_address;
	}


	public int getLat() {
		return lat;
	}


	public void setLat(int lat) {
		this.lat = lat;
	}


	public int getLng() {
		return lng;
	}


	public void setLng(int lng) {
		this.lng = lng;
	}


	public int getDefault_address() {
		return default_address;
	}

	
	public void setDefault_address(int default_address) {
		this.default_address = default_address;
	}

	// 일반 메소드
	@Override
	public String toString() {
		return "AddressVo [address_no=" + address_no + ", no=" + no + ", address_name=" + address_name
				+ ", main_address=" + main_address + ", sub_address=" + sub_address + ", lat=" + lat + ", lng=" + lng
				+ ", default_address=" + default_address + "]";
	}
}
