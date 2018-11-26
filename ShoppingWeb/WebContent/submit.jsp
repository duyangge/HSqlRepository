<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>submitted information</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<link href="css/showMessPane.css" rel="stylesheet" type="text/css" >
<script type="text/javascript">
function checkForm(){
	var title=document.getElementById("title").value;
	if(title==""){
		alert("提示\n\n请输入标题");
		return false;
	} 
	var address=document.getElementById("address").value;
	var myreg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
	if(address==""){
		alert("亲\n\n邮箱不能为空");
		return false;
	}
	if(!myreg.test(address)){
		alert("亲\n\n请输入有效的E_mail!");
		myreg.focus();
		return false;
	}
	var content=document.getElementById("content").value;
	if(content==""){
		alert("亲\n\n请输入有效的E_mail!");
		return false;
	}else{
		alert("亲\n\n您已提交成功");
		return true;
	}
}
</script>
</head>
<body>
	<c:if test="${not empty error}">
		<script type="text/javascript">
			alert("提交成功\n你可以查看留言板信息");
		</script>
	</c:if>
	<div class="subform"> 
		<div class="subform_content">
				<form action="BoardServlet" method="post" name="form_sub">
					<table>
						<tr><td><span id="submit_text">留言标题:</span></td></tr>
						<tr><td><input type="text" name="title" size="45" id="title"></td></tr>
						<tr><td><span id="submit_text">邮箱:</span></td></tr>
						<tr><td><textarea rows="7" cols="30"  name="qqyouxiang" id="address"></textarea></td></tr>
						<tr><td><span id="submit_text">留言内容：</span></td></tr>
						<tr><td><textarea rows="7" cols="30" name="content" id="content"></textarea></td></tr>
					</table>
					<br>
					<input type="submit" name="sumbit" value="马上提交" class="sm_b" onclick="return checkForm()">&nbsp;&nbsp;
					<input type="reset" name="reset"  value="清空" class="sm_b">
					<a href="helppageServlet">查看留言板</a>
				</form>
		</div>
		<div class="subform_buttom">
			<form action="" method="post" name="form_buttom">
				<!--上一页，下一页，跳转  -->
			</form>
		</div>
	</div>
</body>
</html>