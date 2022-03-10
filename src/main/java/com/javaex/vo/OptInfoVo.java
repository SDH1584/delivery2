package com.javaex.vo;

import java.util.List;

public class OptInfoVo {
	private int optCateNo;
	private List<SelOptVo> selOptArr;

	
	
	public OptInfoVo() {
		super();
	}
	
	public OptInfoVo(int optCateNo, List<SelOptVo> selOptArr) {
		super();
		this.optCateNo = optCateNo;
		this.selOptArr = selOptArr;
	}
	
	
	
	public int getOptCateNo() {
		return optCateNo;
	}
	public void setOptCateNo(int optCateNo) {
		this.optCateNo = optCateNo;
	}
	public List<SelOptVo> getSelOptArr() {
		return selOptArr;
	}
	public void setSelOptArr(List<SelOptVo> selOptArr) {
		this.selOptArr = selOptArr;
	}

	@Override
	public String toString() {
		return "OptInfoVo [optCateNo=" + optCateNo + ", selOptArr=" + selOptArr + "]";
	}
	
	

	
	
}
