package com.arm2.igbs.bean;

public class BinBean {
	
	private int binId;
	private int officerId;
	private String binLocality;
	private int binCapacity;
	
	public int getBinId() {
		return binId;
	}
	public String getBinLocality() {
		return binLocality;
	}
	public int getBinCapacity() {
		return binCapacity;
	}
	public void setBinId(int binId) {
		this.binId = binId;
	}
	public void setBinLocality(String binLocality) {
		this.binLocality = binLocality;
	}
	public void setBinCapacity(int binCapacity) {
		this.binCapacity = binCapacity;
	}
	public int getOfficerId() {
		return officerId;
	}
	public void setOfficerId(int officerId) {
		this.officerId = officerId;
	}
	
}
