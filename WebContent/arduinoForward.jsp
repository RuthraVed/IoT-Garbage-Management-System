<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="b1" class="com.arm2.igbs.bean.BinProcessBean"></jsp:useBean>
	<jsp:setProperty property="*" name="b1" />
	<%
		request.setAttribute("b1obj", b1);
	%>
	<jsp:forward page="BinProcessServlet"></jsp:forward>
</body>
</html>