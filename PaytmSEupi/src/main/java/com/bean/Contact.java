package com.bean;

public class Contact {
	
	private String mobailNo;
	private int id;
	public String getMobailNo() {
		return mobailNo;
	}
	public void setMobailNo(String mobailNo) {
		this.mobailNo = mobailNo;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Contact(String mobailNo, int id) {
		super();
		this.mobailNo = mobailNo;
		this.id = id;
	}
	
	

}