package com.arm2.igbs.daointerface;

import java.util.ArrayList;
import com.arm2.igbs.bean.*;

public interface DAOInterface {
	
	public boolean citizenRegister(CitizenBean cObj);		//Registration of new citizen
	public CitizenBean citizenLogin(CitizenBean cObj);		//Authentication of credentials by existing user
	public CitizenBean citizenDetails(int id);
	public boolean citizenComplaint(ComplaintBean ctObj, int cid);
	
	
	
	public OfficerBean officerLogin(OfficerBean cObj);		//Authentication of credentials by existing officer
	public OfficerBean officerDetails(int id);
	
	public int complaintCount();
	public ArrayList<String[]> showComplaints();
	public boolean resolveComplaints(int cmpId);
	
	public int binCount();
	public boolean intoBinStatus(BinProcessBean bobj);
	public ArrayList<String[]> showBinStatus();
	public ArrayList<String[]> showBinFull();
	public boolean updateBinFull(int bfId);
	
	

}
