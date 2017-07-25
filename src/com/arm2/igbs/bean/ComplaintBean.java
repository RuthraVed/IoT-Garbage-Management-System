package com.arm2.igbs.bean;

public class ComplaintBean {
	
	private int complaintId;
	private int citizenID;
	private int complaintType;
	private String complaintContent;
	private String filePath;
	private String complaintTime;
	private String resolvedStatus;
	
	public int getComplaintId() {
		return complaintId;
	}
	public int getComplaintType() {
		return complaintType;
	}
	public String getComplaintContent() {
		return complaintContent;
	}
	public String getComplaintTime() {
		return complaintTime;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	public void setComplaintType(int complaintType) {
		this.complaintType = complaintType;
	}
	public void setComplaintContent(String complaintContent) {
		this.complaintContent = complaintContent;
	}
	public void setComplaintTime(String complaintTime) {
		this.complaintTime = complaintTime;
	}
	public int getCitizenID() {
		return citizenID;
	}
	public void setCitizenID(int citizenID) {
		this.citizenID = citizenID;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getResolvedStatus() {
		return resolvedStatus;
	}
	public void setResolvedStatus(String resolvedStatus) {
		this.resolvedStatus = resolvedStatus;
	}
}
