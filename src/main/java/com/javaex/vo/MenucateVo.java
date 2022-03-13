package com.javaex.vo;

public class MenucateVo {
	private int menu_cate_no;
	private int store_no;
	private String menu_cate_name;
	
	
	
	
	
	public MenucateVo() {
		
	}





	public MenucateVo(int menu_cate_no, int store_no, String menu_cate_name) {
		
		this.menu_cate_no = menu_cate_no;
		this.store_no = store_no;
		this.menu_cate_name = menu_cate_name;
	}





	public int getMenu_cate_no() {
		return menu_cate_no;
	}





	public void setMenu_cate_no(int menu_cate_no) {
		this.menu_cate_no = menu_cate_no;
	}





	public int getStore_no() {
		return store_no;
	}





	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}





	public String getMenu_cate_name() {
		return menu_cate_name;
	}





	public void setMenu_cate_name(String menu_cate_name) {
		this.menu_cate_name = menu_cate_name;
	}





	@Override
	public String toString() {
		return "MenucateVo [menu_cate_no=" + menu_cate_no + ", store_no=" + store_no + ", menu_cate_name="
				+ menu_cate_name + "]";
	}
	
	
}
