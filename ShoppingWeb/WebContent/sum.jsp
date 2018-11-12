<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,web.service.bean.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>萍院欢乐购</title>
<link href="css/sum.css" rel="stylesheet" type="text/css">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />
<script type="text/javascript">
 window.onload=function(){
	setTimeout( "alert('Hi,${user.getUsername()}欢迎你')",1000)//2s钟后关闭 
} 
</script>  -->
</head>
<body>
	<jsp:include page="head.jsp"/>
		<div class="content"><!-- 中间内容 -->
			<div class="content_top">
				<div class="content_left">
						<jsp:include page="sum_left.jsp"></jsp:include>		
				</div><!-- content_left -->
				<div class="content_right">
					<jsp:include page="lunbo.jsp"></jsp:include>
				</div>
			</div><!-- content_top -->
			<div class="content_buttom">
				<jsp:include page="goodShow.jsp"/>
			</div>	
		</div><!-- content -->
		<jsp:include page="foot.jsp"/>
		<c:if test="${ not empty tablename }">
			<c:remove var="tablename" />
		</c:if>
</body>
</html>