package com.hand.hap.order.dto;

public class OrderLineResult  extends OrderLines{
	
	private int inventoryItemId;
	private String itemDescription;
	private int sals;
	private int headerId;
	private int lineNumber;
	private String itemCode;
	private String orderNumber;
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public int getLineNumber() {
		return lineNumber;
	}
	public void setLineNumber(int lineNumber) {
		this.lineNumber = lineNumber;
	}
	public int getHeaderId() {
		return headerId;
	}
	public void setHeaderId(int headerId) {
		this.headerId = headerId;
	}
	public int getInventoryItemId() {
		return inventoryItemId;
	}
	public void setInventoryItemId(int inventoryItemId) {
		this.inventoryItemId = inventoryItemId;
	}
	public String getItemDescription() {
		return itemDescription;
	}
	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}
	public int getSals() {
		return sals;
	}
	public void setSals(int sals) {
		this.sals = sals;
	}
}
