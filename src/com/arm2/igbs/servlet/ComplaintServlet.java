package com.arm2.igbs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.arm2.igbs.bean.CitizenBean;
import com.arm2.igbs.bean.ComplaintBean;
import com.arm2.igbs.dao.DAOClass;

/**
 * Servlet implementation class ComplaintServlet
 */
@WebServlet("/ComplaintServlet")
public class ComplaintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintServlet() {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int cid=0;
		System.out.println("in post method of lodge complaint");
		


		try {
			/*ComplaintBean cmp = new ComplaintBean();
			cmp.setComplaintType(Integer.parseInt(request.getParameter("complaintId")));
			cmp.setComplaintContent(request.getParameter("complaintContent"));*/
			ComplaintBean cmp=(ComplaintBean) request.getAttribute("obj");
			DAOClass ds =new DAOClass();
			HttpSession session=request.getSession(false);
			if (session != null) {
				CitizenBean currentUser = (CitizenBean) (session.getAttribute("currentSessionUser"));
				cid=currentUser.getCitizenId();
				}
			if(ds.citizenComplaint(cmp, cid))
			{	out.write("Complaint Lodged...");
			    System.out.println("Complaint Lodged...");
				response.sendRedirect("lodgeComplaint.jsp"); 
			}
			else{
				out.write("Complaint Not lodged..");
				System.out.println("Complaint Not Lodged...");
				response.sendRedirect("lodgeComplaint.jsp");
				
			}
			//check = dc.insert((LicenseBean) request.getAttribute("obj"));

		} catch (Exception e1) {
			System.out.println("In LServlet..."+e1);
			e1.printStackTrace();
		}
	}

}
