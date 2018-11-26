<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<link href="css/login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="login_top">
		<img class="login_top_image" src="images/background/pxxyh.jpg"/>
		<div class="login_top_title">
			<a href="sum.jsp">首页</a>&nbsp;
			<span>|</span>&nbsp;
			<a href="#">帮助</a>&nbsp;
			<span>|</span>&nbsp;
			<a href="connectionus.jsp">反馈</a>
			<select>
				<option>语言设置</option>
				<option>中文</option>
				<option >英文</option>
				
			</select>
			<%-- <a href="${pageContext.request.contextPath }/user_login.action?request_locale=zh_CN">中文</a>
			<a href="${pageContext.request.contextPath }/user_login.action?request_locale=en_US">英文</a> --%>
		</div>
	</div>
</body>
</html>