<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/goodShow.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
.head_hr{
	margin-top:15px;
	margin-buttom:10px;
}
.contentshow{
	margin:30px;
}
</style>
</head>
<body>
	 <jsp:include page="head.jsp"/> 
	 <!--显示商品  -->
	<div class="contentshow">
		<table align="center">
			<c:if test="${not empty itemslist}">
			<c:forEach var="i" begin="0" end="5">
			<tr>
				<c:forEach var="items" items="${itemslist}" varStatus="status">
					<td>
						<div>
							<a href="${pageContext.request.contextPath }/items_goDetailItems.action?gid=${items.getGid()}&tablename=<c:out value="${tablename}" default='Items'/>" class="personalshow_introduce">
								<img src="${items.getImgsrc()}" width="230px" height="200px"/>	
								<div>
									<dl>
										<dt class="manshow_imagetext">限时抢购</dt>
										<dt>${items.getGintroduce()}</dt>
										<dt><b class="sheetshow_price">¥${items.getGprice()}</b>&nbsp;<s class="sheetshow_pricedel">¥${items.getGprice()}</s></dt>
									</dl>	
								</div>
							</a>
						</div>	
					</td>
				</c:forEach>
			</tr>
				</c:forEach>
			</c:if>	
		</table>
	</div>
	<c:remove var="welcome"/>
	<jsp:include page="foot.jsp"/>
</body>
</html>