<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="c1" class="com.arm2.igbs.bean.CitizenBean"></jsp:useBean>
<jsp:setProperty property="*" name="c1"/>
<%request.setAttribute("obj",c1); %>
<jsp:forward page="CitizenLoginServlet"></jsp:forward>

</body>
</html>