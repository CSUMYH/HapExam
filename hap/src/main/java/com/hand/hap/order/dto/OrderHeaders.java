package com.hand.hap.order.dto;

import java.util.Date;

import com.hand.hap.system.dto.BaseDTO;

public class OrderHeaders extends BaseDTO{
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private int headerId;
   private String orderNumber;
   private int complanyBy;
   private Date orderDate;
   private String orderStatus;
   private int customerId;
   private int requestId;
   private int programId;
public int getHeaderId() {
	return headerId;
}
public void setHeaderId(int headerId) {
	this.headerId = headerId;
}
public String getOrderNumber() {
	return orderNumber;
}
public void setOrderNumber(String orderNumber) {
	this.orderNumber = orderNumber;
}
public int getComplanyBy() {
	return complanyBy;
}
public void setComplanyBy(int complanyBy) {
	this.complanyBy = complanyBy;
}
public Date getOrderDate() {
	return orderDate;
}
public void setOrderDate(Date orderDate) {
	this.orderDate = orderDate;
}
public String getOrderStatus() {
	return orderStatus;
}
public void setOrderStatus(String orderStatus) {
	this.orderStatus = orderStatus;
}
public int getCustomerId() {
	return customerId;
}
public void setCustomerId(int customerId) {
	this.customerId = customerId;
}


   
}
