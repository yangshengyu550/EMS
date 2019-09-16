<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<hr>
	<!-- <font color="green">SUCCESS!!</font> -->
	<%
	response.setContentType("text/html;charset=utf-8");
	out.println("<script type='text/javascript'>alert('操作成功，即将返回主界面！');</script>");
	response.setHeader("refresh", "0.2;url=http://localhost:8080/PM/HomePage.jsp");
	%>
	</center>
</body>
</html>