<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物头部</title>
<link href="css/sum.css" rel="stylesheet" type="text/css">
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript">
function SeacherGood(){
	var text=document.getElementById("text_seacher");
	if(text.value==""){
		alert("提示\n\n请输入要查询的物品！");
	}else{
		window.location.href="SumIndexServlet?tablename=goods&goodname="+text.value;
		return;
	}
}
</script>
</head>
<body>
	<div class="all">
		<!--  头部内容-->
		<div class="header">
			<!-- logo -->			 	
			<div class="logo">
				<div class="logo_top"><a href="user_loginout.action">退出</a></div>
				<c:if test="${ empty user}">
					<div class="logo_top">
						<a href="resign.jsp">注册</a>&nbsp;
						<span>|</span>
					</div>
					<div class="logo_top">
						&nbsp;
						<a href="login.jsp" >你好，请登录</a>
					</div>
				</c:if>
				<c:if test="${not empty user}">
					<div class="logo_top">
							<font color="#ff8000"><c:out value="欢迎你回来,${user.username}"/></font>
					</div>
				</c:if>
				<div>
					<a href="mansheetshow.jsp" class="logo_top_left">时尚商城</a>
					<a href="sum.jsp" class="logo_top_left">首页</a>
				</div>
			</div>
			<div class="seacher_div"><!-- 搜索栏 -->
			<div>
					<img class="seacher_image" src="images/background/pxxy.jpg"/>
			</div>
			<div class="seacher_all">
					<input class="seacher" type="text" name="shousuo" placeholder="输入你需要的物品" id="text_seacher"/>
					<button class="btn_search" onclick="SeacherGood()">搜索</button>
			</div>	
			<div class="logo_car">
					<a href="${pageContext.request.contextPath }/cart_lookCart.action" class="shoppingcar_logo">
					<img class="" src="images/background/shoppingcar.png"/>
					<font class="logo_car_buttle">我的购物车(<font size="0.5em" color="black">${countAllCartItems }</font>)</font></a>
			</div>	
			</div>
			<div class="logo_list">
				<ul class="navigation">
					<li><a href="sum.jsp" class="sum" style="color:white">全部商品分类</a></li>
					<li><a href="showlistServlet?tablename=goods" id="list">运动馆</a></li>
					<li><a href="showlistServlet?tablename=goods" id="list">鞋靴馆</a></li>
					<li><a href="showlistServlet?tablename=goods" id="list">儿童馆</a></li>
					<li><a href="person.jsp" id="list">个人中心</a></li>
					<li><a href="#" id="list">积分兑换</a></li>
					<li><a href="connectionus.jsp" id="list">联系我们</a></li>
				</ul>
			</div>
	</div>
	<div class="head_hr">
		<hr/>
	</div>	
</div>
</body>
</html>