<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript">
function back(){
	history.back();
}

</script>
<style type="text/css">
.contentlist{
	margin-top:4em;
}
a{
	font-family:"华文宋体";
	font-size:1.69em;
	font-weight:bold;
	text-decoration:none;
}"WebContent/person_option.jsp"
a:link{
	color:black;
}
/* a:visited{
 color:blue; 
} */
a:hover{
	color:red;
	text-decoration:underline;
}
/* a:active{
color:purple;
text-decoration:underline;
} */

</style>
<script type="text/javascript">
function fanhui(){
	history.back();
}

</script>
</head>
<body>
	<div align="center">
		<div class="contentlist">
			<a href="MyInformationServlet" target="content_right">个人信息</a>
		</div>
		<div class="contentlist">
			<a href="mycartgoodServlet?tablename=<c:out value="${tablename}" default='goods'/>" target="content_right">我的购物车</a>
		</div>
		<div class="contentlist">
			<a href="lookordersServlet" target="content_right">我的订单</a>
		</div>
		<div class="contentlist">
			<a href="showlistServlet?tablename=goods">购物中心</a>
		</div>
		<div class="contentlist">
			<a href="setpassword.jsp" target="content_right">密码设置</a>
		</div>
		<div class="contentlist">
			<a href="submit.jsp" target="content_right">联系我们</a>
		</div>
		<div class="contentlist">
			<a href="javaScript:back()" >返回</a>
		</div>
	</div>
</body>
</html>