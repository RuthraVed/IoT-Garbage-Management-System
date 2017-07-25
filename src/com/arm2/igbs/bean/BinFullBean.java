package com.arm2.igbs.bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BinFullBean {
	private int binFullId;
	private int binProcessId;
	private int binFullLevel;
	private String binFullTimestamp;
	private Date newMoment;
	public int getBinFullId() {
		return binFullId;
	}
	public int getBinProcessId() {
		return binProcessId;
	}
	public int getBinFullLevel() {
		return binFullLevel;
	}
	public String getBinFullTimestamp() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss");
		try {
			newMoment = formatter.parse(binFullTimestamp);
			System.out.println("The Date: "+newMoment);
		} catch (ParseException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return binFullTimestamp;
		}
	
	public Date getNewMoment() {
		return newMoment;
	}
	public void setBinFullId(int binFullId) {
		this.binFullId = binFullId;
	}
	public void setBinProcessId(int binProcessId) {
		this.binProcessId = binProcessId;
	}
	public void setBinFullLevel(int binFullLevel) {
		this.binFullLevel = binFullLevel;
	}
	public void setBinFullTimestamp(String binFullTimestamp) {
		this.binFullTimestamp = binFullTimestamp;
	}
	public void setNewMoment(Date newMoment) {
		this.newMoment = newMoment;
	}

}
