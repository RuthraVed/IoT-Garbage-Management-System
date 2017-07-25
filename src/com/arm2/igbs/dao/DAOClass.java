package com.arm2.igbs.dao;

import com.arm2.igbs.bean.BinBean;
import com.arm2.igbs.bean.BinFullBean;
import com.arm2.igbs.bean.BinProcessBean;
import com.arm2.igbs.bean.CitizenBean;
import com.arm2.igbs.bean.ComplaintBean;
import com.arm2.igbs.bean.OfficerBean;
import com.arm2.igbs.connection.DBUtil;
import com.arm2.igbs.daointerface.DAOInterface;
import java.sql.*;
import java.util.ArrayList;

public class DAOClass implements DAOInterface {

	Connection con=null;
	Statement stmt=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	String sqlpre="";
	int rows=0;
	int oid=0;
	CitizenBean cz=null;
	OfficerBean oz=null;
	ComplaintBean sc=null;
	BinBean bb = null;
	BinProcessBean bp = null;
	BinFullBean bf = null;

	public DAOClass() throws SQLException {
		con=DBUtil.getMyConnection();
		System.out.println("DAOClass Connecting...");
	}
	
	
	//citizenRegister()
	@Override
	public boolean citizenRegister(CitizenBean cObj){
		try{
			sqlpre="INSERT INTO CITIZEN_TBL (c_fname, c_lname, c_dob, c_address, c_zip, c_email, c_password) VALUES (?,?,?,?,?,?,?)";
			pst=con.prepareStatement(sqlpre);
			pst.setString(1,cObj.getCitizenFname());
			pst.setString(2,cObj.getCitizenLname());
			pst.setString(3, cObj.getCitizenDOB());
			pst.setString(4,cObj.getCitizenAddress());
			pst.setInt(5,cObj.getCitizenZip());
			pst.setString(6,cObj.getCitizenEmail());
			pst.setString(7,cObj.getCitizenPassword());
			rows=pst.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("IN DAOClass:citizenRegister()..."+e.getMessage());
			e.printStackTrace();
		}
		if(rows>0)
			return true;
		else
			return false;
	}

	
	//citizenLogin()
	@Override
	public CitizenBean citizenLogin(CitizenBean cObj) {
		int success=0;
		System.out.println("Email:"+cObj.getCitizenEmail());
		System.out.println("Password:"+cObj.getCitizenPassword());
		try{
			sqlpre="SELECT c_password,c_id FROM CITIZEN_TBL WHERE c_email='"+cObj.getCitizenEmail()+"';";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sqlpre);
			while(rs.next()){
				String pwd=rs.getString("c_password");
				System.out.println("Password Recieved From User: "+pwd);
				if(pwd.equals(cObj.getCitizenPassword())){
					oid= rs.getInt("c_id");
					System.out.println("DAOClass:citizenLogin() got CitizenId:"+oid);
					success=1;
				}
			}
		}
		catch(Exception e)
		{	System.out.println("IN DAOClass:citizenLogin()..."+e.getMessage());
			e.printStackTrace();
		}
		if(success==1)
			return citizenDetails(oid);
		else
			return null;
	}

	
	//officerLogin()
	@Override
	public OfficerBean officerLogin(OfficerBean cObj) {
		int success=0;
		try{
			sqlpre="SELECT o_password,o_id FROM OFFICER_TBL WHERE o_email='"+cObj.getOfficerEmail()+"';";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sqlpre);
			while(rs.next()){
				String pwd=rs.getString("o_password");
				System.out.println("Password Recieved: "+pwd);
				if(pwd.equals(cObj.getOfficerPassword())){
					oid= rs.getInt("o_id");
					System.out.println("DAOClass:officerLogin() got OfficerId:"+oid);
					success=1;
				}
			}
		}
		catch(Exception e)
		{	System.out.println("IN DAOClass:officerLogin()..."+e.getMessage());
			e.printStackTrace();
		}
		if(success==1)
			return officerDetails(oid);
		else
			return null;
	}

	
	//citizenComplaint()
	@Override
	public boolean citizenComplaint(ComplaintBean ctObj, int cid) {
		try{
			sqlpre="INSERT INTO COMPLAINT_TBL (c_id, ct_type, ct_content) VALUES (?,?,?)";
			pst=con.prepareStatement(sqlpre);
			pst.setInt(1,cid);
			pst.setInt(2,ctObj.getComplaintType());
			pst.setString(3, ctObj.getComplaintContent());
			rows=pst.executeUpdate();
		}
		catch(Exception e)
		{   System.out.println("IN DAOClass:citizenComplaint()..."+e.getMessage());
			e.printStackTrace();
		}
		if(rows>0)
			return true;
		else
			return false;

	}

	
	//complaintCount()
	@Override
	public int complaintCount() {
		int count=0;
		try{
			sqlpre="SELECT COUNT(*) FROM `COMPLAINT_PROCESS_TBL` WHERE cp_resolved = 'NO';";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sqlpre);
			while(rs.next()){
				count=rs.getInt(1);
				System.out.println("DAOClass:complaintCount() Recieved: "+count);
			}

		}catch(Exception e){
			System.out.println("IN DAOClass:complaintCount()..."+e.getMessage());
			e.printStackTrace();
		}
		return count;
	}
	
	
	//officerDeatails()
	@Override
	public OfficerBean officerDetails(int id) {
		try{
			sqlpre="SELECT * FROM OFFICER_TBL WHERE o_id='"+id+"';";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sqlpre);
			if (rs.next()) {
				oz = new OfficerBean();
				oz.setOfficerId(rs.getInt("o_id"));
				oz.setOfficerFname(rs.getString("o_fname"));
				oz.setOfficerLname(rs.getString("o_lname"));
				oz.setOfficerRank(rs.getString("o_rank"));
				oz.setOfficerEmail(rs.getString("o_email"));
				oz.setOfficerPassword(rs.getString("o_password"));
			}

		}
		catch(Exception e)
		{   System.out.println("IN DAOClass:officerDetails()..."+e.getMessage());
			e.printStackTrace();
		}
		return oz;
	}
	
	
	//showComplaints()
	@Override
	public ArrayList<String[]> showComplaints() {

		ArrayList <String[]> result = new ArrayList<String[]>();
		try{
			sqlpre="SELECT co.ct_id, co.c_id, co.ct_content, cp.cp_resolved FROM COMPLAINT_TBL co, COMPLAINT_PROCESS_TBL cp"
					+ " WHERE co.ct_id=cp.ct_id AND cp.cp_resolved='NO';";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sqlpre);
			int columnCount = rs.getMetaData().getColumnCount();
			while(rs.next())
			{	String[] row = new String[columnCount];
				for (int i=0; i <columnCount ; i++)
					row[i] = rs.getString(i + 1);
				result.add(row);
			}
			System.out.println("DAOClass:showComplaints() Result Output : " + result);
		}
		catch(Exception e)
		{	System.out.println("IN DAOClass:showComplaints()..."+e.getMessage());
			e.printStackTrace();
		}
		return result;
	}
	
	
	//resolveComplaints()
	@Override
	public boolean resolveComplaints(int cmpId) {
		try{
			sqlpre="UPDATE COMPLAINT_PROCESS_TBL SET cp_resolved='YES' WHERE cp_id="+cmpId+";";
			stmt=con.createStatement();
			rows=stmt.executeUpdate(sqlpre);
		}
		catch(Exception e)
		{	System.out.println("IN DAOClass:resolveComplaints()..."+e.getMessage());
			e.printStackTrace();
		}
		if(rows>0)
			return true;
		else
			return false;
	}
	
	
	//citizenDetails()
	@Override
	public CitizenBean citizenDetails(int id) {
		try{
			sqlpre="SELECT * FROM CITIZEN_TBL WHERE c_id='"+id+"';";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sqlpre);
			if (rs.next()) {
				cz = new CitizenBean();
				cz.setCitizenId(rs.getInt("c_id"));
				cz.setCitizenFname(rs.getString("c_fname"));
				cz.setCitizenLname(rs.getString("c_lname"));
				cz.setCitizenDOB(rs.getString("c_dob"));
				cz.setCitizenAddress(rs.getString("c_address"));
				cz.setCitizenZip(rs.getInt("c_zip"));
				cz.setCitizenEmail(rs.getString("c_email"));
				cz.setCitizenPassword(rs.getString("c_password"));
			}

		}
		catch(Exception e)
		{
			System.out.println("IN DAOClass:citizenDetails()..."+e.getMessage());
			e.printStackTrace();
		}
		return cz;
	}

	
	//BinCount()
		@Override
		public int binCount() {
			int count=0;
			try{
				sqlpre="SELECT COUNT(*) FROM `BIN_TBL`;";
				stmt=con.createStatement();
				rs=stmt.executeQuery(sqlpre);
				while(rs.next()){
					count=rs.getInt(1);
					System.out.println("DAOClass:BinCount() Recieved: "+count);
				}

			}catch(Exception e){
				System.out.println("IN DAOClass:BinCount()..."+e.getMessage());
				e.printStackTrace();
			}
			return count;
		}
		
	
	
	//intoBinStatus()
	@Override
	public boolean intoBinStatus(BinProcessBean bobj) {
		try{
			sqlpre="INSERT INTO BIN_PROCES_TBL (b_id, bp_level) VALUES (?,?)";
			pst=con.prepareStatement(sqlpre);
			pst.setInt(1,bobj.getBinId());
			pst.setInt(2,bobj.getBinLevel());
			rows=pst.executeUpdate();
		}
		catch(Exception e)
		{	System.out.println("IN DAOClass:intoBinStatus()..."+e.getMessage());
			e.printStackTrace();
		}
		if(rows>0)
			return true;
		else
			return false;
	}
	
	
	//showBinStatus()
	@Override
	public ArrayList<String[]> showBinStatus() {
		ArrayList <String[]> result2 = new ArrayList<String[]>();
		try{	sqlpre="SELECT * FROM BIN_PROCES_TBL";
				stmt=con.createStatement();
				rs=stmt.executeQuery(sqlpre);
				int columnCount = rs.getMetaData().getColumnCount();
				while(rs.next())
				{	String[] row = new String[columnCount];
					for (int i=0; i <columnCount ; i++)
						row[i] = rs.getString(i + 1);
					result2.add(row);
				}
				System.out.println("DAOClass:showBinStatus() Result Output : " + result2);
			}			
		catch(Exception e)
		{	System.out.println("IN DAOClass:showBinStatus()..."+e.getMessage());
			e.printStackTrace();
		}
		return result2;
	}
	
	
	//showBinFull()
	@Override
	public ArrayList<String[]> showBinFull() {
		ArrayList <String[]> result3 = new ArrayList<String[]>();
		try{	sqlpre="SELECT * FROM BIN_FULL_TBL WHERE bf_resolved='NO'";
				stmt=con.createStatement();
				rs=stmt.executeQuery(sqlpre);
				int columnCount = rs.getMetaData().getColumnCount();
				while(rs.next())
				{	String[] row = new String[columnCount];
					for (int i=0; i <columnCount ; i++)
					row[i] = rs.getString(i + 1);
					result3.add(row);
				}
				System.out.println("showBinFull() Result Output : " + result3);
			}
		catch(Exception e)
		{	System.out.println("IN DAOClass:showBinFull()..."+e.getMessage());
			e.printStackTrace();
		}
		return result3;
	}
	
	
	//updateBinFull()
	@Override
	public boolean updateBinFull(int bfId) {
		try{
			sqlpre="UPDATE BIN_FULL_TBL SET bf_resolved='YES' WHERE bf_id="+bfId+";";
			stmt=con.createStatement();
			rows=stmt.executeUpdate(sqlpre);
		}
		catch(Exception e)
		{	System.out.println("IN DAOClass:updateBinFull()..."+e.getMessage());
			e.printStackTrace();
		}
		if(rows>0)
			return true;
		else
			return false;
	}
}



   
	
