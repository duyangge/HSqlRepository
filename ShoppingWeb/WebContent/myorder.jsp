<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单列表</title>
<link href="css/mycart.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<c:if test="${not empty buylist}">
	<h5 align="left" style="color:blue" >${name}先生的订单列表，总计<span>${buylist.size()}件订单，详情如下：</span></h5>
	<table border="1" cellspacing="0" class="tablecart" align="center" width="90%">
		<tr style="background:red">
			<td align="center"><span class="showMesstitle">商品</span></td>
			<td align="center"><span class="showMesstitle">商品品牌</span></td>
			<td align="center"><span class="showMesstitle">商品简介</span></td>
			<td align="center"><span class="showMesstitle">商品单价</span></td>
			<td align="center"><span class="showMesstitle">数量</span></td>
			<td align="center"><span class="showMesstitle">小计</span></td>
			<td align="center"><span class="showMesstitle">下单时间</span></td>
			<td align="center"><span class="showMesstitle">操作</span></td>
			<td align="center"><span class="showMesstitle">状态</span></td>
		</tr>
		<c:forEach var="item" items="${buylist}">
				<tr>
					<td align="center"><span class="showMess"><img src="${item.value.getImagesrc()}" width="40px" height="60px"/><c:out value="${item.value.getName()}"/></span></td>
					<td align="center"><span class="showMess"><c:out value="${item.value.getBrand()}"/></span></td>
					<td align="center"><span class="showMess"><c:out value="${item.value.getIntroduce()}"/></span></td>
					<td align="center"><span class="showMess">¥<c:out value="${item.value.getPrice()} "/></span></td>
					<td align="center"><span class="showMess"><c:out value="${item.value.getOrdernumber()} "/></span></td>
					<td align="center"><span class="showMess">¥<c:out value="${item.value.getOrdernumber()*item.value.getPrice()}"/></span></td>
					<td align="center"><span class="showMess"><c:out value="${item.value.getTime()}"/></td>
					<td align="center"><span><a href="delordersServlet?action=post&ordernumber=${item.key}">退货</a></span></td>
					<td align="center"><span class="showMess"><a href="#" onclick="launchgoods()">未发货</a></span></td>
				</tr>
		</c:forEach>
	</table>
	<div align="center" style=" margin-top:50px">
		<a href="showlistServlet?tablename=<c:out value="${tablename }" default='goods'/>" class="continueshopping">继续购物</a>
	</div>
</c:if>
<c:if test="${empty buylist}">
	<script type="text/javascript">
		alert("亲\n\n您还没有下单哦,快去挑选你喜欢的商品吧");
		history.back();
	</script>
</c:if>
<!-- <a href="sum.jsp" style="text-align:center;">返回主页</a> -->
</body>
<script type="text/javascript" src="js/addcart.js"></script>
</html>