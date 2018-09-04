package com.java.beans;

import java.util.List;

public class Emp {
private String id;
private String emailId;
private String startTime;
private String endTime;
private String date;
private String successFlag;
private String displayMsg;
private List<Emp> lEmp;

public String getSuccessFlag() {
	return successFlag;
}
public void setSuccessFlag(String successFlag) {
	this.successFlag = successFlag;
}
public String getDisplayMsg() {
	return displayMsg;
}
public void setDisplayMsg(String displayMsg) {
	this.displayMsg = displayMsg;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getEmailId() {
	return emailId;
}
public void setEmailId(String emailId) {
	this.emailId = emailId;
}
public String getStartTime() {
	return startTime;
}
public void setStartTime(String startTime) {
	this.startTime = startTime;
}
public String getEndTime() {
	return endTime;
}
public void setEndTime(String endTime) {
	this.endTime = endTime;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public List<Emp> getlEmp() {
	return lEmp;
}
public void setlEmp(List<Emp> lEmp) {
	this.lEmp = lEmp;
}

}
