package com.omp.repository.domain.helper;

public class NewsVO {

	private String link;
	private String title;
	private String contents;
	private String info;
	private String img;
	
	
	
	@Override
	public String toString() {
		return "NewsVO [link=" + link + ", title=" + title + ", contents=" + contents + ", info=" + info + ", img="
				+ img;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
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
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
}
