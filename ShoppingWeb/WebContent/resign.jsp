<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>user-resgin</title>
	<link href="css/regiter.css" rel="stylesheet" type="text/css"/>
	<!-- <script type="text/javascript">
	/*1.创建xmlHTTpRequest对象createxmlHttpRequest()
	 * 2.利用open方法创建于服务器的连接
	 3.发送请求send
	 4.校验状态onreadystatechange
	 */
 	window.onload=function(){
		 var users=document.getElementById("usernames");
		 users.onblur=function(){//当文本框失去焦点是注册监听
		var xmlhttp=createXMLHttpRequest();//创建XMLHttpRequest对象
		xmlhttp.open("POST","<c:url value='/ResginServlet'/>",true);//与服务器进行连接
		xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");//post，需要设置请求头
		xmlhttp.send("usernames="+users.value);//发送请求,给出请求体
		xmlhttp.onreadystatechange=function(){//给xmlhttp的onreadystatechange的事件监听器
			if(xmlhttp.readyState==4 &&xmlhttp.status==200){
				//服务器响应结束
				var text=xmlhttp.responseText;
				var mess=document.getElementById("alter");
				if(text.trim()=="1"){
					mess.innerHTML="*该用户名已注册";
				}else{
					mess.innerHTML="";
				}
			}//status,readyState
			}//onreadystatechange
			
				}//onblur
		 }//onload
	</script> -->
</head>
<body>
	<%-- <c:if test="${not empty requestScope.reginmess}">
		<script type="text/javascript">
			alert("亲\n\n您已注册成功请登录");
		</script>
	</c:if>
	<c:if test="${not empty requestScope.myerror}">
		<script type="text/javascript">
			alert("亲\n\n注册失败请重新注册");
		</script>
	</c:if> --%>
	<div class="container">
		<form id="resign" name="userresign" action="${pageContext.request.contextPath }/user_register.action" method="post">
				<div class="allresign" >
					<div class="allresign_div">
						<div class="resign_name">
							<h2>Sign up</h2>
						</div>
						<div class="input_resign">
							<div class="login">
								<input type="text" class="text" placeholder="请输入用户名/手机号" name="username" id="usernames"><br>
								<font class="mess" id="alter"></font>
								<c:remove var="messresign"/>
							</div>
							<br>
							<div class="login">
								<input type="text" class="text" placeholder="输入邮箱" name="address" id="address">
							</div>
							<br>
							<div class="login">
								<input class="textpass" type="password"  placeholder="设置密码" name="password1" id="pswordone">
							</div>
							<br>
							<div class="login">
								<input class="textpass" type="password"  placeholder="确认密码" name="password" id="pswordtwo">
							</div>
							<br>
							<div>
								<input type="button"  name="resign"  value="REGISTER"  class="button" onclick="return checkForm();">
							</div>
							<br>
							<div class="lrmess">
								<a href="login.jsp" class="login_resign">已有账号? 立即登录》</a>
							</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript"src="js/regiter.js"></script>
</html>