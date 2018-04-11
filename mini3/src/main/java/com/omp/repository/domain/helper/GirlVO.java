package com.omp.repository.domain.helper;

public class GirlVO {

	private String link;
	private String img;
	private String title;
	private String contents;
	private String numInfo;
	
	
	
	
	@Override
	public String toString() {
		return "GirlVO [link=" + link + ", img=" + img + ", title=" + title + ", contents=" + contents + ", numInfo="
				+ numInfo + "]";
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNumInfo() {
		return numInfo;
	}
	public void setNumInfo(String numInfo) {
		this.numInfo = numInfo;
	}
	
	
}
