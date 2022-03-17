package com.javaex.vo;

public class MenuOptioncateVO {
	
	private int option_cate_no;
	private int menu_no;
	private String option_cate_name;
	private int chk_rdo;
	
	
	public MenuOptioncateVO() {
		
	}


	public MenuOptioncateVO(int option_cate_no, int menu_no, String option_cate_name, int chk_rdo) {
		super();
		this.option_cate_no = option_cate_no;
		this.menu_no = menu_no;
		this.option_cate_name = option_cate_name;
		this.chk_rdo = chk_rdo;
	}


	public int getOption_cate_no() {
		return option_cate_no;
	}


	public void setOption_cate_no(int option_cate_no) {
		this.option_cate_no = option_cate_no;
	}


	public int getMenu_no() {
		return menu_no;
	}


	public void setMenu_no(int menu_no) {
		this.menu_no = menu_no;
	}


	public String getOption_cate_name() {
		return option_cate_name;
	}


	public void setOption_cate_name(String option_cate_name) {
		this.option_cate_name = option_cate_name;
	}


	public int getChk_rdo() {
		return chk_rdo;
	}


	public void setChk_rdo(int chk_rdo) {
		this.chk_rdo = chk_rdo;
	}


	@Override
	public String toString() {
		return "MenuOptioncate [option_cate_no=" + option_cate_no + ", menu_no=" + menu_no + ", option_cate_name="
				+ option_cate_name + ", chk_rdo=" + chk_rdo + "]";
	}
	
	
	
}
