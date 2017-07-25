<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
	alert("gotaccha");
</script>

<jsp:useBean id="c2" class="com.arm2.igbs.bean.ComplaintBean"></jsp:useBean>
<jsp:setProperty property="*" name="c2"/>
<%request.setAttribute("obj",c2); %>
<jsp:forward page="ComplaintServlet"></jsp:forward>

</body>
</html>