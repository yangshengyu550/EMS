<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改在职职工信息</title>
</head>
<body>
<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
		session.setAttribute("enoo", rs.getInt("eno"));
	%>
	<center>
		<form action="Update_e" method="post">
			<table border="0" width="238" height="252">
				<tr>
					<td>职工号</td>
					<td><input name="eno2" value=<%=rs.getInt("eno")%>></td>
				</tr>
				<tr>
					<td>姓名</td>
					<td><input name="ename" value=<%=rs.getString("ename")%>></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input name="esex" value=<%=rs.getString("esex")%>></td>
				</tr>
				<tr>
					<td>年龄</td>
					<td><input name="eage" value=<%=rs.getInt("eage")%>></td>
				</tr>
				<tr>
					<td>学历</td>
					<td><input name="eedu" value=<%=rs.getString("eedu")%>></td>
				</tr>
				<tr>
					<td>部门</td>
					<td><input name="edep" value=<%=rs.getString("edep")%>></td>
				</tr>
				<tr>
					<td>工资</td>
					<td><input name="ewage" value=<%=rs.getInt("ewage")%>></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="提交">
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="取消"></td>
				</tr>

			</table>
		</form>
	</center>
</body>
</html>