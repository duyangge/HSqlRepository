<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>运动商城</title>
<link href="css/goodShow.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	 <jsp:include page="head.jsp"/> 
	 <!--显示商品  -->
	<div class="contentshow">
		<table align="center">
			<c:forEach var="i" begin="0" end="4">
			<tr>
				<td>
					<div>
						<a href="cartServlet?action=get&id=ms001" class="personalshow_introduce">
							<image src="images/sheetimage/mansheetimage/mansheetimage01/manshowPane_03.jpg"/>	
							<div>
								<dl>
									<dt class="manshow_imagetext">限时抢购</dt>
									<dt>Belle/百丽春专柜同款黑色牛皮革</dt>
									<dt>男休闲鞋豆豆鞋3LQ01AM7</dt>
									<dt><b class="sheetshow_price">¥368</b>&nbsp;<s class="sheetshow_pricedel">¥999</s></dt>
								</dl>	
							</div>
						</a>
					</div>	
				</td>
				<td>
					<div>
						<a href="cartServlet?action=get&id=ms002" class="personalshow_introduce">
						<image src="images/sheetimage/mansheetimage/mansheetimage01/manshowPane_12.jpg"/>	
						<div>
							<dl>
								<dt class="manshow_imagetext">限时抢购</dt>
								<dt>Belle/百丽秋季专柜同款黑色牛皮</dt>
								<dt>商务正装男单鞋3UX01CM5</dt>
								<dt><b class="sheetshow_price">¥398</b>&nbsp;<s class="sheetshow_pricedel">¥1088</s></dt>
							</dl>	
						</div>
						</a>
					</div>	
				
				</td>
				<td>
					<div>
						<a href="cartServlet?action=get&id=ms003" class="personalshow_introduce">
						<image src="images/sheetimage/mansheetimage/mansheetimage01/manshowPane_07.jpg"/>	
						<div>
							<dl>
								<dt class="manshow_imagetext">限时抢购</dt>
								<dt>Belle/百丽秋季黑色牛皮男简约</dt>
								<dt>商务正装系带舒适德比鞋皮鞋</dt>
								<dt><b class="sheetshow_price">¥488</b>&nbsp;<s class="sheetshow_pricedel">¥1220</s></dt>
							</dl>	
						</div>
						</a>
					</div>	
				</td>
				<td>
					<div>
						<a href="cartServlet?action=get&id=ms004" class="personalshow_introduce">
						<image src="images/sheetimage/mansheetimage/mansheetimage01/manshowPane_10.jpg"/>	
						<div>
							<dl>
								<dt class="manshow_imagetext">限时抢购</dt>
								<dt>Belle/百丽秋季黑色牛皮男休闲鞋</dt>
								<dt>板鞋35702CM7</dt>
								<dt><b class="sheetshow_price">¥428</b>&nbsp;<s class="sheetshow_pricedel">¥999</s></dt>
							</dl>	
						</div>
						</a>
					</div>	
				</td>
				<td>
					<div>
					<a href="cartServlet?action=get&id=ms005" class="personalshow_introduce">
						<image src="images/sheetimage/mansheetimage/mansheetimage01/manshowPane_14.jpg"/>	
						<div>
							<dl>
								<dt class="manshow_imagetext">限时抢购</dt>
								<dt>Belle/百丽春专柜同款黑色牛皮革</dt>
								<dt>男休闲鞋豆豆鞋3LQ01AM7</dt>
								<dt><b class="sheetshow_price">¥368</b>&nbsp;<s class="sheetshow_pricedel">¥999</s></dt>
							</dl>	
						</div>
						</a>
					</div>	
				</td>
			</tr>
		</c:forEach>
		</table>
	</div>
	<jsp:include page="foot.jsp"/>
</body>
</html>