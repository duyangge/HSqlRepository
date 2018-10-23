<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="web.service.bean.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车列表</title>
<link href="css/mycart.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<c:if test="${not empty cartItems}">
	<h5 align="left">${name}先生的购物车列表总计<span>${cartItems.size()}</span>件订单，详情如下：</h5>
	<table border="1" cellspacing="0" class="tablecart" align="center" width="90%" style="border-left:none;border-right:none;border-buttom:none;">
		<tr style="background:red">
			<td align="center"><span class="showMesstitle">商品</span></td>
			<td align="center"><span class="showMesstitle">商品品牌</span></td>
			<td align="center"><span class="showMesstitle">商品简介</span></td>
			<td align="center"><span class="showMesstitle">商品单价</span></td>
			<td align="center"><span class="showMesstitle">数量</span></td>
			<td align="center"><span class="showMesstitle">操作</span></td>
			<td align="center"><span class="showMesstitle">状态</span></td>
			<td align="center"><span class="showMesstitle">小计</span></td>
			<td align="center"><span class="showMesstitle">选择</span></td>
		</tr>
		<c:forEach var="item" items="${cartItems}" varStatus="status">
				<tr>
					<td align="center"><span class="showMess"><img src="${item.value.getImagesrc()}" width="40px" height="60px"/><c:out value="${item.value.getName()}"/></span></td>
					<td align="center"><span class="showMess"><c:out value="${item.value.getBrand()}"/></span></td>
					<td align="center"><span class="showMess"><c:out value="${item.value.getIntroduce()}"/></span></td>
					<td align="center"><span class="showMess">¥<font id="unitprice"><c:out value="${item.value.getPrice()} "/></font></span></td>
					<td align="center">
					<input type="button" name="addnumber" value="+" onclick="add()">
					<input type="text" name="numbershowtext" value="${item.value.getOrdernumber()}" id="number" readonly="true" style="width:20px;">
					<input type="button" name="reducenumber" value="-" onclick="reduce()">
					</td>
					<td align="center"><span><a href="delcartgoodServlet?action=post&ordernumber=${item.key}" onclick="DelCart()">移除</a></span></td>
					<td align="center"><span class="showMess"><a href="StrogeMyCartServlet?number=${item.value.getOrdernumber()}&ordernumber=${item.key}&id=${item.value.getId()}&tablename=<c:out value="${tablename}" default='goods'/>" onclick="GoOrder()">点击下单</a></span></td>
					<td align="center"><span class="showMess">¥<font id="subprice"><c:out value="${item.value.getOrdernumber()*item.value.getPrice()}"/></font></span></td>
						<td align="center"><span class="showMess"><input type="checkbox" name=""></span></td>
				</tr>
				<%-- <c:set var="sumprice" value="${ }"/> --%>
		</c:forEach>
	</table>
	<div>
		<%-- <c:out value="总价：¥${ }"/> --%>
	</div>
	<div align="center" style=" margin-top:50px">
		<a href="javaScript:removeall()">清空购物车</a>
		<a href="showlistServlet?tablename=<c:out value="${tablename }" default='goods'/>" class="continueshopping">继续购物</a>
		<a href="lookordersServlet">查看订单</a>
	</div>
</c:if>
<c:if test="${empty cartItems}">
	<script type="text/javascript">
		alert("亲\n\n您的购物车是空空的,快去添加你喜欢的宝物");
		history.back();
	</script>
</c:if>
	<a href="sum.jsp" style="text-align:center;">返回主页</a>
</body>
<script type="text/javascript" src="js/addcart.js"></script>
</html>