package com.javaex.vo;

public class BizstorecateVo {
	
	private int biz_store_cate_no;
	private int store_cate_no;
	private int store_no;
	
	
	
	public BizstorecateVo() {

	}



	public BizstorecateVo(int biz_store_cate_no, int store_cate_no, int store_no) {

		this.biz_store_cate_no = biz_store_cate_no;
		this.store_cate_no = store_cate_no;
		this.store_no = store_no;
	}



	public int getBiz_store_cate_no() {
		return biz_store_cate_no;
	}



	public void setBiz_store_cate_no(int biz_store_cate_no) {
		this.biz_store_cate_no = biz_store_cate_no;
	}



	public int getStore_cate_no() {
		return store_cate_no;
	}



	public void setStore_cate_no(int store_cate_no) {
		this.store_cate_no = store_cate_no;
	}



	public int getStore_no() {
		return store_no;
	}



	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}



	@Override
	public String toString() {
		return "BizstorecateVo [biz_store_cate_no=" + biz_store_cate_no + ", store_cate_no=" + store_cate_no
				+ ", store_no=" + store_no + "]";
	}
	
	
}
