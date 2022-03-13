package com.javaex.vo;

public class POrderVo {

	private String menuImg;
	private String menuName;
	private int menuPrice;
	private String optionName;
	private int optionPrice;

	public POrderVo() {
		super();
	}

	public POrderVo(String menuImg, String menuName, int menuPrice, String optionName, int optionPrice) {
		super();
		this.menuImg = menuImg;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
	}

	public String getMenuImg() {
		return menuImg;
	}

	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String getOptionName() {
		return optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}

	public int getOptionPrice() {
		return optionPrice;
	}

	public void setOptionPrice(int optionPrice) {
		this.optionPrice = optionPrice;
	}

	@Override
	public String toString() {
		return "POrderMenu [menuImg=" + menuImg + ", menuName=" + menuName + ", menuPrice=" + menuPrice
				+ ", optionName=" + optionName + ", optionPrice=" + optionPrice + "]";
	}

}
