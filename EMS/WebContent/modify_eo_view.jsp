<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改主页面</title>
<script  type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<center>
<form name="fo" method="POST">
		<%
			ResultSet rs = (ResultSet)request.getAttribute("rs");
			rs.last();
		%>
		<br>
		<br>
		<br>
		<h3>在职职工表</h3>
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
				<td colspan="2">操作</td>
			</tr>
			<%
				rs.beforeFirst();
				while (rs.next()) {
				int no = rs.getInt("eno");
				request.setAttribute("eno",no);
			%>
			<tr align="center">
				<td><%=rs.getRow()%></td>
				<td><%=no%></td>
				<td><%=rs.getString("ename")%></td>
				<td><%=rs.getString("esex")%></td>
				<td><%=rs.getInt("eage")%></td>
				<td><%=rs.getString("eedu")%></td>
				<td><%=rs.getString("edep")%></td>
				<td><%=rs.getInt("ewage")%></td>
				<td><input type="submit" value="修改" onclick="fo.action='Update_check?eno=${eno}';fo.submit();"></td>
				<td><input type="submit" value="删除" onclick="fo.action='Delete_e?eno=${eno}';fo.submit();"></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
	</center>
</body>
</html>