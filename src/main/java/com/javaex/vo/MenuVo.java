package com.javaex.vo;

public class MenuVo {

	private int menu_no;
	private int menu_cate_no;
	private String menu_img;
	private String menu_name;
	private int menu_price;
	private String menu_desc;

	public MenuVo() {

	}

	public MenuVo(int menu_no, int menu_cate_no, String menu_img, String menu_name, int menu_price, String menu_desc) {

		this.menu_no = menu_no;
		this.menu_cate_no = menu_cate_no;
		this.menu_img = menu_img;
		this.menu_name = menu_name;
		this.menu_price = menu_price;
		this.menu_desc = menu_desc;
	}

	public int getMenu_no() {
		return menu_no;
	}

	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}

	public int getMenu_cate_no() {
		return menu_cate_no;
	}

	public void setMenu_cate_no(int menu_cate_no) {
		this.menu_cate_no = menu_cate_no;
	}

	public String getMenu_img() {
		return menu_img;
	}

	public void setMenu_img(String menu_img) {
		this.menu_img = menu_img;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public int getMenu_price() {
		return menu_price;
	}

	public void setMenu_price(int menu_price) {
		this.menu_price = menu_price;
	}

	public String getMenu_desc() {
		return menu_desc;
	}

	public void setMenu_desc(String menu_desc) {
		this.menu_desc = menu_desc;
	}

	@Override
	public String toString() {
		return "MenuVo [menu_no=" + menu_no + ", menu_cate_no=" + menu_cate_no + ", menu_img=" + menu_img
				+ ", menu_name=" + menu_name + ", menu_price=" + menu_price + ", menu_desc=" + menu_desc + "]";
	}

}
