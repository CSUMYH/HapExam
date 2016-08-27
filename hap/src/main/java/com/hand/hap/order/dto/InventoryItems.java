package com.hand.hap.order.dto;

import java.util.Date;

public class InventoryItems {
	private int inventoryItemId;
	private String itemCode;
	private String itemUom;
	private String itemDescription;
	private String orderFlag;
	private Date startActiveDate;
	private Date endActiveDate;
	private String enableFlag;
	private Date creationDate;
	private int createdBy;
	private int lastUpdateBy;
	public int getInventoryItemId() {
		return inventoryItemId;
	}
	public void setInventoryItemId(int inventoryItemId) {
		this.inventoryItemId = inventoryItemId;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemUom() {
		return itemUom;
	}
	public void setItemUom(String itemUom) {
		this.itemUom = itemUom;
	}
	public String getItemDescription() {
		return itemDescription;
	}
	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}
	public String getOrderFlag() {
		return orderFlag;
	}
	public void setOrderFlag(String orderFlag) {
		this.orderFlag = orderFlag;
	}
	public Date getStartActiveDate() {
		return startActiveDate;
	}
	public void setStartActiveDate(Date startActiveDate) {
		this.startActiveDate = startActiveDate;
	}
	public Date getEndActiveDate() {
		return endActiveDate;
	}
	public void setEndActiveDate(Date endActiveDate) {
		this.endActiveDate = endActiveDate;
	}
	public String getEnableFlag() {
		return enableFlag;
	}
	public void setEnableFlag(String enableFlag) {
		this.enableFlag = enableFlag;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public int getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	public int getLastUpdateBy() {
		return lastUpdateBy;
	}
	public void setLastUpdateBy(int lastUpdateBy) {
		this.lastUpdateBy = lastUpdateBy;
	}

}
