package com.omp.repository.domain;

public class TypeCar {

	private int typeCarNo;
	private int typeCarGroupNo;
	private int mnfNo;
	private String val;
	private String img;
	
	public int getTypeCarNo() {
		return typeCarNo;
	}
	@Override
	public String toString() {
		return "TypeCar [typeCarNo=" + typeCarNo + ", typeCarGroupNo=" + typeCarGroupNo + ", mnfNo=" + mnfNo + ", val="
				+ val + ", img=" + img + "]";
	}
	public void setTypeCarNo(int typeCarNo) {
		this.typeCarNo = typeCarNo;
	}
	public int getTypeCarGroupNo() {
		return typeCarGroupNo;
	}
	public void setTypeCarGroupNo(int typeCarGroupNo) {
		this.typeCarGroupNo = typeCarGroupNo;
	}
	public int getMnfNo() {
		return mnfNo;
	}
	public void setMnfNo(int mnfNo) {
		this.mnfNo = mnfNo;
	}
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
	
}
