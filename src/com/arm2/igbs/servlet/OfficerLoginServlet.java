package com.arm2.igbs.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.arm2.igbs.bean.OfficerBean;
import com.arm2.igbs.dao.DAOClass;

/**
 * Servlet implementation class OfficerLoginServlet
 */
@WebServlet("/OfficerLoginServlet")
public class OfficerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OfficerLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
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
        try {
			OfficerBean officeBean=(OfficerBean) request.getAttribute("obj");
			DAOClass ds =new DAOClass();
			if(ds.officerLogin(officeBean)!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("currentSessionUser",ds.officerLogin(officeBean));
				response.sendRedirect("officeLogin.jsp?ERR=1");
				System.out.println("Success to Office Login...");
			}
			else{
				response.sendRedirect("officeLogin.jsp?ERR=0");
				System.out.println("Failure to Office Login...");
			}

		} catch (Exception e1) {
			System.out.println("In Servlet..."+e1);
			e1.printStackTrace();
		}
	}


}
