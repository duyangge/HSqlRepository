<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<div class="infor_all">
		<div class="infor_my">
			<table style=" position:relative;left:50%;top:50%;">
				<tr>
					<td>用户名：</td>
					<td>${User.getUsername()}</td>
				</tr>
				<tr>
					<td>邮箱：</td>
					<td>${User.getAddress()}</td>
				</tr>
				<tr>
					<td>登录时间：</td>
					<td>${requestScope.logintime}</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>