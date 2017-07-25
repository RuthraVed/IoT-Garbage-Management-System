package com.arm2.igbs.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arm2.igbs.bean.BinProcessBean;
import com.arm2.igbs.dao.DAOClass;

/**
 * Servlet implementation class BinProcessServlet
 */
@WebServlet("/BinProcessServlet")
public class BinProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BinProcessServlet() {
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
			BinProcessBean bean=(BinProcessBean) request.getAttribute("b1obj");
			DAOClass ds =new DAOClass();
			if(ds.intoBinStatus(bean))
			{	out.write("Success to insert");
				response.sendRedirect("arduinoTalk.jsp");
				System.out.println("Data from arduino sent success...");
			}
			else{
				out.write("Failure to insert");
				response.sendRedirect("arduinoTalk.jsp");
				System.out.println("Failure Data from arduino to db...");
				
			}
			
		} catch (Exception e1) {
			System.out.println("In BinProcessServlet..."+e1);
			e1.printStackTrace();
		}


	}

}
