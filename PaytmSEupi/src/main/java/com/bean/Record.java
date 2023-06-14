package com.bean;

public class Record {
  private int id;
  private String mobileNo;
  private String time;
  private String amount;
  



  public Record(int id, String mobileNo, String time, String amount) {
	super();
	this.id = id;
	this.mobileNo = mobileNo;
	this.time = time;
	this.amount = amount;
}

public int getId() {
    return id;
  }

  public String getMobileNo() {
    return mobileNo;
  }

  public String getAmount() {
    return amount;
  }

  public String getTime() {
    return time;
  }

  public void setAmount(String amount) {
    this.amount = amount;
  }

  public void setTime(String time) {
    this.time = time;
  }
}