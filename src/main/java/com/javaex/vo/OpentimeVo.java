package com.javaex.vo;

public class OpentimeVo {
	
	private int	open_time_no;
	private int	store_no;
	private int	day;
	private int	day_off;
	
	
	public OpentimeVo(int open_time_no, int store_no, int day, String open_time, String close_time, int day_off) {

		this.open_time_no = open_time_no;
		this.store_no = store_no;
		this.day = day;
		this.day_off = day_off;
	}


	public OpentimeVo() {

	}


	public int getOpen_time_no() {
		return open_time_no;
	}


	public void setOpen_time_no(int open_time_no) {
		this.open_time_no = open_time_no;
	}


	public int getStore_no() {
		return store_no;
	}


	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}


	public int getDay() {
		return day;
	}


	public void setDay(int day) {
		this.day = day;
	}



	public int getDay_off() {
		return day_off;
	}


	public void setDay_off(int day_off) {
		this.day_off = day_off;
	}


	@Override
	public String toString() {
		return "OpentimeVo [open_time_no=" + open_time_no + ", store_no=" + store_no + ", day=" + day + ", open_time="
				 + ", close_time=" + ", day_off=" + day_off + "]";
	}
	
	
	
	
}
