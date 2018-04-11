package com.omp.repository.domain.helper;

public class SearchVO {

	private String domestic;
	private String key;
	private int price1;
	private int price2;
	private int mnfNo;
	private int typeCarNo;
	private int modelTypeCarNo;
	private int year1;
	private int year2;
	
	

	@Override
	public String toString() {
		return "SearchVO [domestic=" + domestic + ", key=" + key + ", price1=" + price1 + ", price2=" + price2
				+ ", mnfNo=" + mnfNo + ", typeCarNo=" + typeCarNo + ", modelTypeCarNo=" + modelTypeCarNo + ", year1="
				+ year1 + ", year2=" + year2 + "]";
	}

	public String getDomestic() {
		return domestic;
	}

	public void setDomestic(String domestic) {
		this.domestic = domestic;
	}

	public int getYear1() {
		return year1;
	}
	public void setYear1(int year1) {
		this.year1 = year1;
	}
	public int getYear2() {
		return year2;
	}
	public void setYear2(int year2) {
		this.year2 = year2;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public int getPrice1() {
		return price1;
	}
	public void setPrice1(int price1) {
		this.price1 = price1;
	}
	public int getPrice2() {
		return price2;
	}
	public void setPrice2(int price2) {
		this.price2 = price2;
	}
	public int getMnfNo() {
		return mnfNo;
	}
	public void setMnfNo(int mnfNo) {
		this.mnfNo = mnfNo;
	}
	public int getTypeCarNo() {
		return typeCarNo;
	}
	public void setTypeCarNo(int typeCarNo) {
		this.typeCarNo = typeCarNo;
	}
	public int getModelTypeCarNo() {
		return modelTypeCarNo;
	}
	public void setModelTypeCarNo(int modelTypeCarNo) {
		this.modelTypeCarNo = modelTypeCarNo;
	}
	
	
}
