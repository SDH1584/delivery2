package com.javaex.vo;

public class StorecateVo {
	
	private int store_cate_no;
	private int store_no;
	private String store_cate_name;
	
	
	public StorecateVo() {
		
	}


	


	public StorecateVo(int store_cate_no, int store_no, String store_cate_name) {

		this.store_cate_no = store_cate_no;
		this.store_no = store_no;
		this.store_cate_name = store_cate_name;
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





	public String getStore_cate_name() {
		return store_cate_name;
	}





	public void setStore_cate_name(String store_cate_name) {
		this.store_cate_name = store_cate_name;
	}





	@Override
	public String toString() {
		return "StorecateVo [store_cate_no=" + store_cate_no + ", store_no=" + store_no + ", store_cate_name="
				+ store_cate_name + "]";
	}

	
	
	
}
