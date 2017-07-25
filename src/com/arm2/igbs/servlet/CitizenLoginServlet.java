package com.arm2.igbs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.arm2.igbs.bean.CitizenBean;
import com.arm2.igbs.dao.DAOClass;

/**
 * Servlet implementation class CitizenLoginServlet
 */
@WebServlet("/CitizenLoginServlet")
public class CitizenLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public CitizenLoginServlet() {
		super();
	}
	
	public void init(ServletConfig config) throws ServletException {
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served As at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		try {
			CitizenBean userBean=(CitizenBean) request.getAttribute("obj");
			DAOClass ds =new DAOClass();
			if(ds.citizenLogin(userBean)!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("currentSessionUser",ds.citizenLogin(userBean));
				//response.sendRedirect("citizenProfile.jsp");
				response.sendRedirect("login.jsp?ERR=1");
				System.out.println("Success to Login");
			}
			else{
				out.println("<font color='red'><b>You have entered incorrect password</b></font>");
                response.sendRedirect("login.jsp?ERR=0");
                System.out.println("Failure to Login");
			}
			
		} catch (Exception e1) {
			System.out.println("In LServlet..."+e1);
			e1.printStackTrace();
		}
		
	}
}

