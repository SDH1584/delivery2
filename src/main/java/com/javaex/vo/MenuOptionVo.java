package com.javaex.vo;

public class MenuOptionVo {
	private int menuCateNo;
	private int storeNo;
	private String menuCateName;
	private int menuNo;
	private String menuImg;
	private String menuName;
	private int menuPrice;
	private String menuDesc;
	private int optionCateNo;
	private String optionCateName;
	private int chkRdo;
	private int opCateOpNo;
	private int optionNo;
	private String optionName;
	private int optionPrice;
	
	
	
	public MenuOptionVo() {
		
	}
	
	public MenuOptionVo(int menuCateNo, int storeNo, String menuCateName, int menuNo, String menuImg, String menuName,
			int menuPrice, String menuDesc, int optionCateNo, String optionCateName, int chkRdo, int opCateOpNo,
			int optionNo, String optionName, int optionPrice) {
		super();
		this.menuCateNo = menuCateNo;
		this.storeNo = storeNo;
		this.menuCateName = menuCateName;
		this.menuNo = menuNo;
		this.menuImg = menuImg;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.menuDesc = menuDesc;
		this.optionCateNo = optionCateNo;
		this.optionCateName = optionCateName;
		this.chkRdo = chkRdo;
		this.opCateOpNo = opCateOpNo;
		this.optionNo = optionNo;
		this.optionName = optionName;
		this.optionPrice = optionPrice;
	}
	
	
	
	public int getMenuCateNo() {
		return menuCateNo;
	}
	public void setMenuCateNo(int menuCateNo) {
		this.menuCateNo = menuCateNo;
	}
	public int getStoreNo() {
		return storeNo;
	}
	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}
	public String getMenuCateName() {
		return menuCateName;
	}
	public void setMenuCateName(String menuCateName) {
		this.menuCateName = menuCateName;
	}
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
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
	public String getMenuDesc() {
		return menuDesc;
	}
	public void setMenuDesc(String menuDesc) {
		this.menuDesc = menuDesc;
	}
	public int getOptionCateNo() {
		return optionCateNo;
	}
	public void setOptionCateNo(int optionCateNo) {
		this.optionCateNo = optionCateNo;
	}
	public String getOptionCateName() {
		return optionCateName;
	}
	public void setOptionCateName(String optionCateName) {
		this.optionCateName = optionCateName;
	}
	public int getChkRdo() {
		return chkRdo;
	}
	public void setChkRdo(int chkRdo) {
		this.chkRdo = chkRdo;
	}
	public int getOpCateOpNo() {
		return opCateOpNo;
	}
	public void setOpCateOpNo(int opCateOpNo) {
		this.opCateOpNo = opCateOpNo;
	}
	public int getOptionNo() {
		return optionNo;
	}
	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
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
		return "MenuOptionVo [menuCateNo=" + menuCateNo + ", storeNo=" + storeNo + ", menuCateName=" + menuCateName
				+ ", menuNo=" + menuNo + ", menuImg=" + menuImg + ", menuName=" + menuName + ", menuPrice=" + menuPrice
				+ ", menuDesc=" + menuDesc + ", optionCateNo=" + optionCateNo + ", optionCateName=" + optionCateName
				+ ", chkRdo=" + chkRdo + ", opCateOpNo=" + opCateOpNo + ", optionNo=" + optionNo + ", optionName="
				+ optionName + ", optionPrice=" + optionPrice + "]";
	}
	
	
	
}
