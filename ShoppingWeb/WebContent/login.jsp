<%-- <%@page import="java.awt.SystemTray"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.service.bean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <jsp:useBean id="users" class="web.service.bean.user" scope="session"/>    --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录中</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<link href="css/login.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
/* function myReload() {
    document.getElementById("CreateCheckCode").src = document.getElementById("CreateCheckCode").src+"?nocache="+ new Date().getTime();
  } */
</script>
</head>
<body>
<div class="login_all">
	<jsp:include page="login_top.jsp"></jsp:include><!-- 登陆头部 -->
	<div class="login_content">
		<form action="${pageContext.request.contextPath }/user_login.action" method="post" name="userlogin" id="login">
			<div class="alllogin">
			<c:remove var="name"/>
				<div class="div_login_title">
					<font class="login_title" >Sign In</font>
				</div>
				<div class="input_login">
					<div class="login">
						<input class="text" type="text" id="username"  placeholder="输入用户名/手机号" name="username" autocomplete="off"/>
						<br/>
						 <font class="mess">
							<c:if test="${not empty loginerror}">
								<c:out value="${loginerror}"/>
							</c:if>
						</font>
						<c:remove var="mess"/>
					</div>
					<br>
					<div class="login">
						<input class="textpass" id="password" type="password"  placeholder="输入密码" name="password">
					</div>
					<br>
					<div class="validcode">
						<input type="text" name="checkCode" style="width:7em;height:3.5em;"> 
						<img src="<c:out value='PCCode'/>" id="CreateCheckCode" align="middle" style="margin-top:-1em;"> 
						<a href="#" onclick="myReload()" style="font-size:1.2em;color:red;margin-left:10em;"> 看不清,换一个</a>	
					</div>
					<br>
					<div class="div_button_login">
						<input class="button" type="button"  id="button_login" name="login" value="LOGIN" onclick="return reformsheet()">	
					</div>
					<br>
					<div class="div_login_bottom">
						<a href="setpassword.jsp" class="login_resign">忘记密码</a>
						<a href="resign.jsp" class="login_resign">免费注册</a>
					</div>
				</div>	
			</div>
		</form>
	</div>
</div>
<jsp:include page="loginfoot.jsp"></jsp:include>
<c:if test="${not empty errormsg }">
	<script type="text/javascript">
		alert("亲\n\n您输入的验证码有误请重新输入");
	</script>
</c:if>
</body>
<script type="text/javascript" src="js/login.js"></script>
</html>
