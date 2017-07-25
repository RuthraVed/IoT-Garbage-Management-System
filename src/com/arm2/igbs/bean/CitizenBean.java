package com.arm2.igbs.bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CitizenBean {
	private int citizenId;
	private String citizenFname;
	private String citizenLname;
	private String citizenDOB;
	private Date newDOB;
	private String citizenAddress;
	private int citizenZip;
	private String citizenEmail;
	private String citizenPassword;
	
	public int getCitizenId() {
		return citizenId;
	}
	public String getCitizenFname() {
		return citizenFname;
	}
	public String getCitizenLname() {
		return citizenLname;
	}
	public String getCitizenDOB() {
		return citizenDOB;
	}
	public String getCitizenAddress() {
		return citizenAddress;
	}
	public int getCitizenZip() {
		return citizenZip;
	}
	public String getCitizenEmail() {
		return citizenEmail;
	}
	public String getCitizenPassword() {
		return citizenPassword;
	}
	public void setCitizenId(int citizenId) {
		this.citizenId = citizenId;
	}
	public void setCitizenFname(String citizenFname) {
		this.citizenFname = citizenFname;
	}
	public void setCitizenLname(String citizenLname) {
		this.citizenLname = citizenLname;
	}
	public void setCitizenDOB(String citizenDOB) {
		this.citizenDOB = citizenDOB;
	}
	public void setCitizenAddress(String citizenAddress) {
		this.citizenAddress = citizenAddress;
	}
	public void setCitizenZip(int citizenZip) {
		this.citizenZip = citizenZip;
	}
	public void setCitizenEmail(String citizenEmail) {
		this.citizenEmail = citizenEmail;
	}
	public void setCitizenPassword(String citizenPassword) {
		this.citizenPassword = citizenPassword;
	}
	public Date getNewDOB() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		try {
			newDOB = formatter.parse(citizenDOB);
			System.out.println("The Date: "+newDOB);
		} catch (ParseException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return newDOB;
	}
	public void setNewDOB(Date newDOB) {
		this.newDOB = newDOB;
	}
		
}
