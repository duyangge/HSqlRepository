<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/goodShow.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<div class="mansheetcontent_all">
		<jsp:include page="mansheet_show.jsp" ></jsp:include>
		<jsp:include page="sportsheet_show.jsp"></jsp:include>
		<%-- <jsp:forward page="${pageContext.request.contextPath }/mansheet_show.jsp"></jsp:forward>
		<jsp:forward page="${pageContext.request.contextPath }/sportsheet_show.jsp"></jsp:forward> --%>
	</div>
</body>
</html>
		