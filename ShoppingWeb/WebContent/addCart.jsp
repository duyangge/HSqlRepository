<%@page import="javax.sound.midi.SysexMessage,web.service.bean.Items"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加商品</title>
<link href="css/addcart.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<form action="cartgoodServlet" method="post" name="myform"><!--先不提交cartServlet  -->
<!--通过获取物品id得到物品信息  -->
	<div class="content">
		<div class="content_left">
			<img src="${item.getImagesrc()}"/>
			<input type="hidden" value="${item.getId()}" id="itemx" name="itemidname"/>
		</div>
		<div class="content_right">
				<div>
					<table  cellspacing="0" class="showmess">
							<tr>
								<td><font id="goodintroduce_e">${item.getIntroduce()}</font></td>
							</tr>
							<tr>
								<td id="goodnametitle">名称</td>
							</tr>
							<tr>
								<td><font id="goodname_e">${item.getName()}</font></td>
							</tr>
							<tr>
								<td id="goodnametitle">品牌</td>
							</tr>
							<tr>
								<td><font id="goodbrand_e">${item.getBrand()}</font></td>
							</tr>
							<tr>
								<td id="goodnametitle">价格</td>
							</tr>
							<tr>
								<td><font id="goodprice_e">¥${item.getPrice()}</font>&nbsp;&nbsp;
								<s class="sheetshow_pricedel">¥${item.getPricing()}</s></td>
							</tr>
					</table>
				</div>
				<div>
				<!-- 选择商品的数量 -->
					<table class="shownumber">
						<tr>
							<td><input type="button" name="addnumber" value="+" onclick="add()"></td>
							<td><input type="text" name="numbershowtext" value="1" id="number" readonly="true" style="width:20px;"></td>
							<td><input type="button" name="reducenumber" value="-" onclick="reduce()"></td>
						</tr>
					</table>
				</div>
			</div>
	</div>
	<!-- 加入购物车和立即购买两个按钮事件 -->
	<div class="content_button">
		<input type="hidden" name="goodorder" value="goodorder"/>
		<input type="hidden" name="orderdetails" value="orderdetails"/>
		<input type="hidden" name="tablename" value="<c:out value="${tablename}" default='goods'/>"/>
		<input type="hidden" name="username" value="${name}" id="username"/>
		<input type="submit" name="addcart" value="加入购物车" id="addcartbutton" onclick="addCart()">
		<input type="button" name="buy" value="立即下单"  onclick="buygoods()" id="buybutton"/>
	</div>
	<div class="all_buttom">
		<a href="mycartgoodServlet?tablename=<c:out value="${tablename}" default='goods'/>" class="lookcar">查看购物车</a>
		<a href="mansheetshow.jsp" class="continueshopping">继续购物</a>
	</div>
	</form>
</body>
<script type="text/javascript" src="js/addcart.js">
</script>
</html>