package com.arm2.igbs.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arm2.igbs.bean.CitizenBean;
import com.arm2.igbs.dao.DAOClass;

/**
 * Servlet implementation class CitizenRegisterServlet
 */
@WebServlet("/CitizenRegisterServlet")
public class CitizenRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	Statement stmt=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	String sqlpre="";
	int rows=0;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CitizenRegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();

		try {
			CitizenBean bean=(CitizenBean) request.getAttribute("obj");
			DAOClass ds =new DAOClass();
			if(ds.citizenRegister(bean))
				response.sendRedirect("successRegister.jsp"); 
			
			else{
				out.write("Failure to insert");
				response.sendRedirect("error.html");
				
			}
			//check = dc.insert((LicenseBean) request.getAttribute("obj"));

		} catch (Exception e1) {
			System.out.println("In LServlet..."+e1);
			e1.printStackTrace();
		}

	}

}
