package com.arm2.igbs.bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BinProcessBean {

	private int binProcessId;
	private int binId;
	private int binLevel;
	private String binDate;
	private Date newTime;
	
	public int getBinProcessId() {
		return binProcessId;
	}
	public int getBinId() {
		return binId;
	}
	public int getBinLevel() {
		return binLevel;
	}
	
	public void setBinProcessId(int binProcessId) {
		this.binProcessId = binProcessId;
	}
	public void setBinId(int binId) {
		this.binId = binId;
	}
	public void setBinLevel(int binLevel) {
		this.binLevel = binLevel;
	}
	public String getBinDate() {
		return binDate;
	}
	public void setBinDate(String binDate) {
		this.binDate = binDate;
	}
	public Date getNewTime() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss");
		try {
			newTime = formatter.parse(binDate);
			System.out.println("The Date: "+newTime);
		} catch (ParseException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return newTime;
	}
	public void setNewTime(Date newTime) {
		this.newTime = newTime;
	}

}
