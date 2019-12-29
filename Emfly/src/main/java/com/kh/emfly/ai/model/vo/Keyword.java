package com.kh.emfly.ai.model.vo;

public class Keyword implements java.io.Serializable {
	
	private int kID;
	private String keyword;
	
	public Keyword() {
		
	}
	public Keyword(int kID, String keyword) {
		super();
		this.kID = kID;
		this.keyword = keyword;
	}
	public int getkID() {
		return kID;
	}
	public void setkID(int kID) {
		this.kID = kID;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	

}
