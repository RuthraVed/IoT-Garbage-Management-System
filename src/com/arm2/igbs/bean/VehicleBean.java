package com.arm2.igbs.bean;

public class VehicleBean {
	
	private int vehicleId;
	private int officerId;
	private String vehicleRegNo;
	private String vehicleType;
	
	public int getVehicleId() {
		return vehicleId;
	}
	public String getVehicleRegNo() {
		return vehicleRegNo;
	}
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}
	public void setVehicleRegNo(String vehicleRegNo) {
		this.vehicleRegNo = vehicleRegNo;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	public int getOfficerId() {
		return officerId;
	}
	public void setOfficerId(int officerId) {
		this.officerId = officerId;
	}	
	
}
