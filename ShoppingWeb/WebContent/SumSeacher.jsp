<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索结果......</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<link href="css/goodShow.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.ss_all{
	width:100%;
	height:100em;
}
.ss_top{
	width:100%;
	height:40%;
}
.ss_content{
	width:100%;
	height:40%;
	margin-left:1em;
}
.head_hr{
		margin-top:1.6em;
		margin-button:1em;
}
 .contentshow{
	float:left;

} 
</style>
</head>
<body>
	<div class="ss_all">
		<div class="ss_top">
			<jsp:include page="head.jsp"/>
		</div>
		<div class="ss_content">
			<c:if test="${empty goodlist}">
			<h3 align="center" style="color:red;"><c:out value="没有查询到该商品，请重新查询！"/></h3>
		</c:if>
		<c:if test="${not empty goodlist}">
		<div class="contentshow">
			<table align="center" width="70%">
				<tr>
					<c:forEach var="item" items="${goodlist}" varStatus="status">
						<td>
							<div>
								<a href="cartgoodServlet?action=get&id=${item.getId()}&tablename=${tablename}" class="personalshow_introduce">
									<img src="${item.getImagesrc()}" width="230px" height="200px"/>	
									<div>
										<dl>
											<dt class="manshow_imagetext">限时抢购</dt>
											<dt>${item.getIntroduce()}</dt>
											<dt><b class="sheetshow_price">¥${item.getPrice()}</b>&nbsp;<s class="sheetshow_pricedel">¥${item.getPricing()}</s></dt>
										</dl>	
									</div>
								</a>
							</div>	
						</td>
					</c:forEach>
				</tr>
			</table>
		</div>
	</c:if>
		</div>
		<div class="ss_buttom">
			<jsp:include page="foot.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>