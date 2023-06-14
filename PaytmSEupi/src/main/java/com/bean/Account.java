package com.bean;


public class Account {
private int id;
private String mobileNo;
private String bankName;
private String accountNo;
private String ifscCode;
private String branch;
private int upi;
private int cupi;

public int getUpi() {
	return upi;
}
public void setUpi(int upi) {
	this.upi = upi;
}
public int getCupi() {
	return cupi;
}
public void setCupi(int cupi) {
	this.cupi = cupi;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getMobileNo() {
	return mobileNo;
}
public void setMobileNo(String mobileNo) {
	this.mobileNo = mobileNo;
}
public String getBankName() {
	return bankName;
}
public void setBankName(String bankName) {
	this.bankName = bankName;
}
public String getAccountNo() {
	return accountNo;
}
public void setAccountNo(String accountNo) {
	this.accountNo = accountNo;
}
public String getIfscCode() {
	return ifscCode;
}
public void setIfscCode(String ifscCode) {
	this.ifscCode = ifscCode;
}
public String getBranch() {
	return branch;
}
public void setBranch(String branch) {
	this.branch = branch;
}



}