package com.omp.repository.domain;

public class ModelTypeCar {
	
	private int modelTypeCarNo;
	private int typeCarNo;
	private String val;
	private String displacement;
	private String maxOutput;
	private String fuelEff;
	private String release;
	
	
	@Override
	public String toString() {
		return "ModelTypeCar [modelTypeCarNo=" + modelTypeCarNo + ", typeCarNo=" + typeCarNo + ", val=" + val
				+ ", displacement=" + displacement + ", maxOutput=" + maxOutput + ", fuelEff=" + fuelEff + ", release="
				+ release + "]";
	}
	public int getModelTypeCarNo() {
		return modelTypeCarNo;
	}
	public void setModelTypeCarNo(int modelTypeCarNo) {
		this.modelTypeCarNo = modelTypeCarNo;
	}
	public int getTypeCarNo() {
		return typeCarNo;
	}
	public void setTypeCarNo(int typeCarNo) {
		this.typeCarNo = typeCarNo;
	}
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
	public String getDisplacement() {
		return displacement;
	}
	public void setDisplacement(String displacement) {
		this.displacement = displacement;
	}
	public String getMaxOutput() {
		return maxOutput;
	}
	public void setMaxOutput(String maxOutput) {
		this.maxOutput = maxOutput;
	}
	public String getFuelEff() {
		return fuelEff;
	}
	public void setFuelEff(String fuelEff) {
		this.fuelEff = fuelEff;
	}
	public String getRelease() {
		return release;
	}
	public void setRelease(String release) {
		this.release = release;
	}
	
	
	
}
