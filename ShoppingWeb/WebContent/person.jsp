<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<frameset rows="90,*">
		<frame name="content_top" src="login_top.jsp" scrolling="no" frameborder="0">
		<frameset cols="150,*">
			<frame name="content_left" src="person_option.jsp" scrolling="no" frameborder="0"  marginwidth=30px>
			<frame name="content_right" src="#" scrolling="auto" frameborder="0">
		</frameset>
		<noframes>  <!--不支持框架-->
			<body>
				您的浏览器不支持框架？不过像你的浏览器，真的不太好找!
			</body>
		</noframes>
</frameset>
</html>
