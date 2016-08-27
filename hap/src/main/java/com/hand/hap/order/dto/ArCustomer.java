package com.hand.hap.order.dto;

import java.util.Date;

public class ArCustomer {
	private int customerId;
	private String customerNumber;
	private String customerName;
	private int complanyId;
	private String enabledFlag ;
	private Date creatDate;
	private int createdBy;
	private Date lastUpdateDate;
	private int lastUpdateLogin;
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getCustomerNumber() {
		return customerNumber;
	}
	public void setCustomerNumber(String customerNumber) {
		this.customerNumber = customerNumber;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public int getComplanyId() {
		return complanyId;
	}
	public void setComplanyId(int complanyId) {
		this.complanyId = complanyId;
	}
	public String getEnabledFlag() {
		return enabledFlag;
	}
	public void setEnabledFlag(String enabledFlag) {
		this.enabledFlag = enabledFlag;
	}
	public Date getCreatDate() {
		return creatDate;
	}
	public void setCreatDate(Date creatDate) {
		this.creatDate = creatDate;
	}
	public int getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	public Date getLastUpdateDate() {
		return lastUpdateDate;
	}
	public void setLastUpdateDate(Date lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}
	public int getLastUpdateLogin() {
		return lastUpdateLogin;
	}
	public void setLastUpdateLogin(int lastUpdateLogin) {
		this.lastUpdateLogin = lastUpdateLogin;
	}
}
