<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<style type="text/css">
.contentlist{
	margin-top:4em;
}
a{
	font-family:"华文宋体";
	font-size:1.73em;/* 13pt */
	font-weight:bold;
	text-decoration:none;
}
a:link{
	color:black;
}
a:hover{
	color:red;
	text-decoration:underline;
}
</style>
<script type="text/javascript">
function fanhui(){
	history.back();
}
</script>

</head>
<body>
	<div align="center">
		<div class="contentlist">
			<a href="showmessage.jsp" target="content_right">查看留言</a>
		</div>
		<div class="contentlist">
			<a href="submit.jsp" target="content_right">我要留言</a>
		</div>
		<div class="contentlist">
			<a href="showmessage.jsp" target="content_right">我的留言</a>
		</div>
		<div class="contentlist">
			<a href="showmessage.jsp" target="content_right">公共留言</a>
		</div>
		<div class="contentlist">
			<a href="#" target="content_right" onclick="fanhui()">返回</a>
		</div>
		<div class="contentlist">
			<a href="copytext.jsp" target="content_right">详情</a>
		</div>
	</div>
</body>
</html>