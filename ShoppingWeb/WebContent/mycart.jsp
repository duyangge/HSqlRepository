<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="web.service.bean.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车列表</title>
<link href="css/mycart.css" rel="stylesheet" type="text/css"/>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/addcart.js"></script>
</head>
<body>
<c:if test="${not empty cartlist}">
	<form action="${pageContext.request.contextPath }/cart_deleCart.action" method="post">
	<h4 align="left"><font size="4px" color="blue">${user.getUsername()}先生</font>,商品数量总共<font  size="4px" color="red">${countAllCartItems}</font>件，详情如下：</h4>
	<table border="1" cellspacing="0" class="tablecart" align="center" width="90%" style="border-left:none;border-right:none;border-buttom:none;">
		<tr style="background:red">
			<td align="center"><span class="showMesstitle">选择</span></td>
			<td align="center"><span class="showMesstitle">商品</span></td>
			<td align="center"><span class="showMesstitle">商品品牌</span></td>
			<td align="center"><span class="showMesstitle">商品简介</span></td>
			<td align="center"><span class="showMesstitle">商品单价</span></td>
			<td align="center"><span class="showMesstitle">数量</span></td>
			<td align="center"><span class="showMesstitle">状态</span></td>
			<td align="center"><span class="showMesstitle">小计</span></td>
		</tr>
		<c:forEach var="cartItems" items="${cartlist}" varStatus="status">
				<tr>
					<td align="center"><span class="showMess"><input type="checkbox" name="gidlist"  value="${cartItems.getGid()}" id="gid"/></span></td>
					<td align="center"><span class="showMess"><img src="${cartItems.getImgsrc()}" width="50px" height="60px"/><c:out value="${item.value.getName()}"/></span></td>
					<td align="center"><span class="showMess" ><c:out value="${cartItems.getGbrand()}"/></span></td>
					<td align="center"><span class="showMess"><c:out value="${cartItems.getGintroduce()}"/></span></td>
					<td align="center"><span class="showMess">¥<font id="unitprice"><c:out value="${cartItems.getGprice()} "/></font></span></td>
					<td align="center">
					<input type="button" name="addnumber" value="+" onclick="javaScript:window.location.href='${pageContext.request.contextPath }/cart_addCartNum.action?uid=${cartItems.getUid()}&gid=${cartItems.getGid()}&gnum=1'"/>
					<input type="text" name="numbershowtext" value="${cartItems.getGnum()}" id="number" readonly="readonly" style="width:20px;"><!--&showPage.currentPage=${showPage.getCurrentpage()}  -->
					<input type="button" name="reducenumber" value="-" onclick="javaScript:window.location.href='${pageContext.request.contextPath }/cart_decCartNum.action?uid=${cartItems.getUid()}&gid=${cartItems.getGid()}&gnum=1'"/>
					</td>
					<td align="center"><span class="showMess"><a href="#" onclick="pitchon()">点击下单</a></span></td>
					<td align="center"><span class="showMess">¥<font id="subprice"><c:out value="${cartItems.getGnum()*cartItems.getGprice()}"/></font></span></td>
				</tr>
		</c:forEach>
	</table><!--已选商品数量，已选商品总价格  -->
	<div style="margin-top:5%;">
		<div align="center">
			<a href="${pageContext.request.contextPath }/cart_lookCart.action?showPage.currentpage=${1}">首页</a>
			<a href="${pageContext.request.contextPath }/cart_lookCart.action?showPage.currentpage=${showPage.getCurrentpage()-1}">上一页</a>&nbsp;
			<span>当前${ showPage.getCurrentpage()}/${showPage.getTotalpages() }页</span>&nbsp;
			<a href="${pageContext.request.contextPath }/cart_lookCart.action?showPage.currentpage=${showPage.getCurrentpage()+1}">下一页</a>
			<a  href="${pageContext.request.contextPath }/cart_lookCart.action?showPage.currentpage=${showPage.getTotalpages()}">尾页</a>
		</div>
		<div  style="float:left; margin-left:5%; ">
			<a href="javaScript:allSelect();">全选</a>&nbsp;
			<a href="javaScript:pitchon();">下单</a>&nbsp;
			<a href="${pageContext.request.contextPath }/orders_lookOrders.action">我的订单</a>
			<input type="submit" value="删除" border="0" style="color: blue; border:0px;background: white;font-size:15px;text-decoration: underline;">
			<a href="${pageContext.request.contextPath }/user_loginout.action">退出</a>&nbsp;&nbsp;
		</div>
	<%-- 	<div align="right" style="margin-right:100px;"><span>已选择商品<font>{0}</font>件</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="showMess">合计<font id="selCartprice">￥${0}</font></span></div> --%>
	</div>
	</form>
	<div>
	</div>
</c:if><!--javascript:history.go(-1)  -->
<a href="sum.jsp" class="continueshopping">返回</a>
<c:if test="${empty cartlist}">
		<h3 align="center" style="font-style: italic;font-weight: bold;font-size:14px; color:blue;">空空的，需要您去寻找你的宝藏......</h3>
</c:if>
</body>
</html>