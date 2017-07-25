<%@ page language="java"
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="com.arm2.igbs.bean.CitizenBean"
   %>
   <%
    response.setHeader("Cache-Control","no-store,must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", -1);
    new java.util.Date();
    if(session.getAttribute("currentSessionUser")!=null)
    {
    %>
   
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>User Logged Successfully</title>
<SCRIPT type="text/javascript">
	function noBack() {
		window.history.forward();
	}
</SCRIPT>
</head>

<body onload="noBack();">
	<a href="LogoutServlet">Logout</a>
	<center>
		<%--
			CitizenBean currentUser = (CitizenBean) (session.getAttribute("currentSessionUser"));
		--%>
		<%
			CitizenBean currentUser = (CitizenBean) (session.getAttribute("currentSessionUser"));
		%>

		<p>Method #1 First name: ${currentSessionUser.citizenEmail}</p>
		<%=currentUser.getCitizenEmail() + " " + currentUser.getCitizenFname()%>
	</center>
</body>
</html>

<%
	} else
		response.sendRedirect("LoginPage.jsp");
%>