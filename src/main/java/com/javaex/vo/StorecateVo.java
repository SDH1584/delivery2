package com.javaex.vo;

public class StorecateVo {
	
	private int store_cate_no;
	private String store_cate_name;
	
	
	public StorecateVo(int store_cate_no, String store_cate_name) {
		this.store_cate_no = store_cate_no;
		this.store_cate_name = store_cate_name;
	}


	public StorecateVo() {

	}


	public int getStore_cate_no() {
		return store_cate_no;
	}


	public void setStore_cate_no(int store_cate_no) {
		this.store_cate_no = store_cate_no;
	}


	public String getStore_cate_name() {
		return store_cate_name;
	}


	public void setStore_cate_name(String store_cate_name) {
		this.store_cate_name = store_cate_name;
	}


	@Override
	public String toString() {
		return "Store_cateVo [store_cate_no=" + store_cate_no + ", store_cate_name=" + store_cate_name + "]";
	}
	
	
	
}
