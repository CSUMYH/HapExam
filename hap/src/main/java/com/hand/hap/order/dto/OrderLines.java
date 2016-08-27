package com.hand.hap.order.dto;

import com.hand.hap.system.dto.BaseDTO;

public class OrderLines extends BaseDTO {
	private int lineId;
	private int headerId;
	private int lineNumber;
	private int inventoryItemId;
	private int orderQuantity;
	private String  orderQuantityUom;
	private int unitSellingPrice;
	private String descrition;
	private int companyId;
	public int getLineId() {
		return lineId;
	}
	public void setLineId(int lineId) {
		this.lineId = lineId;
	}
	public int getHeaderId() {
		return headerId;
	}
	public void setHeaderId(int headerId) {
		this.headerId = headerId;
	}
	public int getLineNumber() {
		return lineNumber;
	}
	public void setLineNumber(int lineNumber) {
		this.lineNumber = lineNumber;
	}
	public int getInventoryItemId() {
		return inventoryItemId;
	}
	public void setInventoryItemId(int inventoryItemId) {
		this.inventoryItemId = inventoryItemId;
	}
	public int getOrderQuantity() {
		return orderQuantity;
	}
	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}
	public String getOrderQuantityUom() {
		return orderQuantityUom;
	}
	public void setOrderQuantityUom(String orderQuantityUom) {
		this.orderQuantityUom = orderQuantityUom;
	}
	public int getUnitSellingPrice() {
		return unitSellingPrice;
	}
	public void setUnitSellingPrice(int unitSellingPrice) {
		this.unitSellingPrice = unitSellingPrice;
	}
	public String getDescrition() {
		return descrition;
	}
	public void setDescrition(String descrition) {
		this.descrition = descrition;
	}
	public int getCompanyId() {
		return companyId;
	}
	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}
}
