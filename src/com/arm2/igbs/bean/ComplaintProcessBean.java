package com.arm2.igbs.bean;

public class ComplaintProcessBean {
	
	private int complaintProcessId;
	private int complaintID;
	private boolean resolved;
	private String complaintNote;
	private String complaintDate;
	
	public int getComplaintProcessId() {
		return complaintProcessId;
	}
	public int getComplaintID() {
		return complaintID;
	}
	public boolean isResolved() {
		return resolved;
	}
	public String getComplaintNote() {
		return complaintNote;
	}
	public String getComplaintDate() {
		return complaintDate;
	}
	public void setComplaintProcessId(int complaintProcessId) {
		this.complaintProcessId = complaintProcessId;
	}
	public void setComplaintID(int complaintID) {
		this.complaintID = complaintID;
	}
	public void setResolved(boolean resolved) {
		this.resolved = resolved;
	}
	public void setComplaintNote(String complaintNote) {
		this.complaintNote = complaintNote;
	}
	public void setComplaintDate(String complaintDate) {
		this.complaintDate = complaintDate;
	}
	
	

}
