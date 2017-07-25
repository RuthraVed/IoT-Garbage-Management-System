<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.arm2.igbs.dao.DAOClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%int cmpId=Integer.parseInt(request.getParameter("CMP")); %>
	<% 	DAOClass dao = new DAOClass();
		if(dao.resolveComplaints(cmpId))
			response.sendRedirect("resolveComplaint.jsp");
		else
			response.sendRedirect("error.html");
	%>
</body>
</html>