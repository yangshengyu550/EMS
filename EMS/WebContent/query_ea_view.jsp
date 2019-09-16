<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>应聘员工信息</title>
</head>
<body>
	<center>
	<form name="fo2" method="post">
		<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
			ResultSet rs = (ResultSet)request.getAttribute("rs");
			rs.last();
		%>
		你要查询的应聘职工数据表共有 <font size="5" color="red"> <%=rs.getRow()%>
		</font>人
		<table border="2" bgcolor="ccceee" width="650">
			<tr bgcolor="CCCCCC" align="center">
				<td>记录条数</td>
				<td>姓名</td>
				<td>性别</td>
				<td>年龄</td>
				<td>学历</td>
				<td>应聘部门</td>
				<td>期望工资</td>
				<td colspan="2">操作</td>
			</tr>
			<%
				rs.beforeFirst();
				while (rs.next()) {
				String aname = rs.getString("aname");
				String asex = rs.getString("asex");
				int aage = rs.getInt("aage");
				String aedu = rs.getString("aedu");
				String adep = rs.getString("adep");
				int awage = rs.getInt("awage");
				int id = rs.getInt("id");
				request.setAttribute("id",id);
				
			%>
			<tr align="center">
				<td><%=rs.getRow()%></td>
				<td><%=aname%></td>
				<td><%=asex%></td>
				<td><%=aage%></td>
				<td><%=aedu%></td>
				<td><%=adep%></td>
				<td><%=awage%></td>
				<%-- <jsp:forward page="/entry_ea_view.jsp?ename=${nname},esex=${nsex},eage=${nage},eedu=${nedu},edep=${ndep},ewage=${nwage}"/> --%>
				<%-- <td><a href="entry_ea_view.jsp?ename=${nname},esex=${nsex},eage=${nage},eedu=${nedu},edep=${ndep},ewage=${nwage}">录入</a></td> --%>
				<td><input type="submit" value="录入" onclick="fo2.action='Entry_check?id=${id}';fo2.submit();"></td>
				<td><input type="submit" value="删除" onclick="fo2.action='Delete_en?id=${id}';fo2.submit();"></td>
			</tr>
			<%
				}
			%>
		</table>
		</form>
	</center>
</body>
</html>