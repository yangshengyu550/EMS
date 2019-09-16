<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加员工</title>
</head>
<body>
	<center>
		<form action="Add_e" method="post">
			请录入员工信息
			<hr>
			<table border="0" width="238" height="252">
				<tr>
					<td>员工号</td>
					<td><input type="text" name="no"></td>
				</tr>
				<tr>
					<td>姓名</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="text" name="sex"></td>
				</tr>
				<tr>
					<td>年龄</td>
					<td><input type="text" name="age"></td>
				</tr>
				<tr>
					<td>学历</td>
					<td><input type="text" name="education"></td>
				</tr>
				<tr>
					<td>部门</td>
					<td><input type="text" name="department"></td>
				</tr>
				<tr>
					<td>工资</td>
					<td><input type="text" name="wage"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="提交">&nbsp;&nbsp;&nbsp;
						<input type="reset" value="取消"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>