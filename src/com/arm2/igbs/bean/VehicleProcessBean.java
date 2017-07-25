package com.arm2.igbs.bean;

public class VehicleProcessBean {
	
	private int vehicleProcessId;
	private int vehicleId;
	private String goneTowards;
	private String startTime;
	private String returnTime;
	public int getVehicleProcessId() {
		return vehicleProcessId;
	}
	public int getVehicleId() {
		return vehicleId;
	}
	public String getGoneTowards() {
		return goneTowards;
	}
	public String getStartTime() {
		return startTime;
	}
	public String getReturnTime() {
		return returnTime;
	}
	public void setVehicleProcessId(int vehicleProcessId) {
		this.vehicleProcessId = vehicleProcessId;
	}
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}
	public void setGoneTowards(String goneTowards) {
		this.goneTowards = goneTowards;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
	}	
}
