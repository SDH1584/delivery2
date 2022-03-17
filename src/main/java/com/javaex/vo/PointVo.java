package com.javaex.vo;

public class PointVo {

	private int pointNo;
	private int no;
	private int point;
	private int pointDesc;
	private String pointDate;
	public PointVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PointVo(int pointNo, int no, int point, int pointDesc, String pointDate) {
		super();
		this.pointNo = pointNo;
		this.no = no;
		this.point = point;
		this.pointDesc = pointDesc;
		this.pointDate = pointDate;
	}
	public int getPointNo() {
		return pointNo;
	}
	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getPointDesc() {
		return pointDesc;
	}
	public void setPointDesc(int pointDesc) {
		this.pointDesc = pointDesc;
	}
	public String getPointDate() {
		return pointDate;
	}
	public void setPointDate(String pointDate) {
		this.pointDate = pointDate;
	}
	@Override
	public String toString() {
		return "PointVo [pointNo=" + pointNo + ", no=" + no + ", point=" + point + ", pointDesc=" + pointDesc
				+ ", pointDate=" + pointDate + "]";
	}
	
}
