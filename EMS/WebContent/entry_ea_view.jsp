<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>录入新员工信息</title>
</head>
<body>
<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
	%>
	<center>
		<form action="Entry_en" method="post">
			<table border="0" width="238" height="252">
				<tr>
					<td>职工号</td>
					<td><input name="eno"></td>
				</tr>
				<tr>
					<td>姓名</td>
					<td><input name="ename" value=<%=rs.getString("aname")%>></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input name="esex" value=<%=rs.getString("asex")%>></td>
				</tr>
				<tr>
					<td>年龄</td>
					<td><input name="eage" value=<%=rs.getInt("aage")%>></td>
				</tr>
				<tr>
					<td>学历</td>
					<td><input name="eedu" value=<%=rs.getString("aedu")%>></td>
				</tr>
				<tr>
					<td>部门</td>
					<td><input name="edep" value=<%=rs.getString("adep")%>></td>
				</tr>
				<tr>
					<td>工资</td>
					<td><input name="ewage" value=<%=rs.getInt("awage")%>></td>
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