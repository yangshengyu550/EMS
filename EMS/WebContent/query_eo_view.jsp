<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在职员工信息</title>
</head>
<body>
	<center>
		<%
			ResultSet rs = (ResultSet)request.getAttribute("rs");
			rs.last();
		%>
		你要查询的在职职工数据表共有 <font size="5" color="red"> <%=rs.getRow()%>
		</font>人
		<table border="2" bgcolor="ccceee" width="650">
			<tr bgcolor="CCCCCC" align="center">
				<td>记录条数</td>
				<td>职工号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>学历</td>
				<td>部门</td>
				<td>工资</td>
			</tr>
			<%
				rs.beforeFirst();
				while (rs.next()) {
			%>
			<tr align="center">
				<td><%=rs.getRow()%></td>
				<td><%=rs.getInt("eno")%></td>
				<td><%=rs.getString("ename")%></td>
				<td><%=rs.getString("esex")%></td>
				<td><%=rs.getInt("eage")%></td>
				<td><%=rs.getString("eedu")%></td>
				<td><%=rs.getString("edep")%></td>
				<td><%=rs.getInt("ewage")%></td>
			</tr>
			<%
				}
			%>
		</table>
		
		<a href="http://localhost:8080/PM/HomePage.jsp">返回</a>
	</center>
</body>
</html>