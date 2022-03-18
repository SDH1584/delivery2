package com.javaex.vo;

import java.util.Arrays;

public class OpentimeVo {

	private int open_time_no;
	private int store_no;
	private int[] day_offs;
	
	
	private int day_off;

	
	
	
	public OpentimeVo() {
		
	}

	public OpentimeVo(int open_time_no, int store_no, int[] day_offs, int day_off) {
		this.open_time_no = open_time_no;
		this.store_no = store_no;
		this.day_offs = day_offs;
		this.day_off = day_off;
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

	public int[] getDay_offs() {
		return day_offs;
	}

	public void setDay_offs(int[] day_offs) {
		this.day_offs = day_offs;
	}

	public int getDay_off() {
		return day_off;
	}

	public void setDay_off(int day_off) {
		this.day_off = day_off;
	}

	@Override
	public String toString() {
		return "OpentimeVo [open_time_no=" + open_time_no + ", store_no=" + store_no + ", day_offs="
				+ Arrays.toString(day_offs) + ", day_off=" + day_off + "]";
	}
	

	

}
