package com.omp.repository.domain.helper;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.omp.repository.domain.ImageFiles;
import com.omp.repository.domain.ModelTypeCar;
import com.omp.repository.domain.OptOfCar;
import com.omp.repository.domain.TypeCar;

public class CarVO {

	private int carNo;
	private int special;
	private int accident_status;
	private int modelNo;
	private String trans;
	private String carsNumber;
	private String driving;
	private int price;
	private String color;
	private String title;
	private String contents;
	private int status;
	private Timestamp regDate;
	private Timestamp updateDate;
	private int[] optionNo;
	
	private ModelTypeCar modelTypeCar;
	private TypeCar typeCar;
	
	private List<OptOfCar> optList;
	private List<ImageFiles> imgList;
	
	
	public TypeCar getTypeCar() {
		return typeCar;
	}

	public void setTypeCar(TypeCar typeCar) {
		this.typeCar = typeCar;
	}

	public ModelTypeCar getModelTypeCar() {
		return modelTypeCar;
	}

	public void setModelTypeCar(ModelTypeCar modelTypeCar) {
		this.modelTypeCar = modelTypeCar;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public List<OptOfCar> getOptList() {
		return optList;
	}

	public void setOptList(List<OptOfCar> optList) {
		this.optList = optList;
	}

	public List<ImageFiles> getImgList() {
		return imgList;
	}

	public void setImgList(List<ImageFiles> imgList) {
		this.imgList = imgList;
	}

	public int getModelNo() {
		return modelNo;
	}

	public void setModelNo(int modelNo) {
		this.modelNo = modelNo;
	}

	public int[] getOptionNo() {
		return optionNo;
	}

	public void setOptionNo(int[] optionNo) {
		this.optionNo = optionNo;
	}

	private MultipartFile[] attach;

	public int getCarNo() {
		return carNo;
	}

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}

	public int getSpecial() {
		return special;
	}

	public void setSpecial(int special) {
		this.special = special;
	}

	public int getAccident_status() {
		return accident_status;
	}

	public void setAccident_status(int accident_status) {
		this.accident_status = accident_status;
	}

	public String getTrans() {
		return trans;
	}

	public void setTrans(String trans) {
		this.trans = trans;
	}

	public String getCarsNumber() {
		return carsNumber;
	}

	public void setCarsNumber(String carsNumber) {
		this.carsNumber = carsNumber;
	}

	public String getDriving() {
		return driving;
	}

	public void setDriving(String driving) {
		this.driving = driving;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	public MultipartFile[] getAttach() {
		return attach;
	}

	public void setAttach(MultipartFile[] attach) {
		this.attach = attach;
	}

}
