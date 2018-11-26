<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单列表</title>
<link href="css/mycart.css" rel="stylesheet" type="text/css"/>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<c:if test="${not empty orderList}">
	<h5 align="left" style="color:blue" >${username}先生的订单列表，总计<span>${orderList.size()}件订单，详情如下：</span></h5>
	<table border="1" cellspacing="0" class="tablecart" align="center" width="90%">
		<tr style="background:red">
		<!--1.显示：订单编号，商品名称，商品数量，总金额，订单时间，是否付款， 
		 -->
		 	<td align="center"><span class="showMesstitle">订单编号</span></td>
			<td align="center"><span class="showMesstitle">商品</span></td>
			<td align="center"><span class="showMesstitle">商品数量</span></td>
			<td align="center"><span class="showMesstitle">总金额</span></td>
			<td align="center"><span class="showMesstitle">下单时间</span></td>
			<td align="center"><span class="showMesstitle">状态</span></td>
		</tr>
		<c:forEach var="orders" items="${orderList}">
				<tr>
					<td align="center"><span class="showMess"><c:out value="${orders.getRid()}"/></span></td>
					<td align="center"><span class="showMess"><img src="${1}" width="40px" height="60px"/><c:out value="${1}"/></span></td>
					<td align="center"><span class="showMess"><c:out value="${orders.getGnum()}"/></span></td>
					<td align="center"><span class="showMess">¥<c:out value="${orders.getAllMoney()}"/></span></td>
					<td align="center"><span class="showMess"><c:out value="${orders.getDate()}"/></td>
					<td align="center"><span class="showMess"><c:out value="${orders.getOrderStatus()}"/></span></td>
				</tr>
		</c:forEach>
	</table>
	<div align="center" style=" margin-top:50px">
		<a href="#"  class="continueshopping">继续购物</a>
	</div>
</c:if>
<c:if test="${empty buylist}">
	<script type="text/javascript">
		alert("亲\n\n您还没有下单哦,快去挑选你喜欢的商品吧");
		history.back();
	</script>
</c:if>
<a href="sum.jsp" style="text-align:left;margin-left:5%;">返回主页</a>
</body>
<script type="text/javascript" src="js/addcart.js"></script>
</html>