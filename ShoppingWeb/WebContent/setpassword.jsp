<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<style type="text/css">
.ps.all{
	width:450px; 
	height:450px; 
	text-align:center;
}
.textpass{
	height:40px;
	width:250px;
	border-left:none;
	border-top:none;
	border-right:none;
	padding-left:50%;	
}
.button,,.textpass{
	margin-right:50px;
	border-radius:5px;
}
.button{
	height:37px;
	width:365px; 
	background:blue;
	border:none;
	border-radius:5px;	
}		
.button:active{
	background:red;
	color:black;
	font-weight;bold;
}
.button:hover{
	background:red;
	color:black;
	font-weight;bold;
}

</style>
<script type="text/javascript">
function submit(){
	if(window.confirm("你确定要修改密码吗？")){
		var pswordone=document.getElementById("pswordone").value;
		var pswordtwo=document.getElementById("pswordtwo").value;
		var psreg=/^[a-zA-Z0-9]{6,16}$/;
		if(!psreg.test(pswordone)){
			alert("提示\n\n密码的长度应为6~16");
			pswordone.focus();
			return false;
		}
		if(pswordone!=pswordtwo){
			alert("提示\n\n两次输入的密码不一致");
			pswordtwo.focus();
			return false;
		}else{
			document.getElementById("resign").submit();
			return;
		}
		window.location.href="";//修改密码的页面
	}
}

</script>
</head>
<body>
<div class="ps_all">
	<form action="changepasswordServlet" method="post">
		<table>
			<tr>	
				<td><input type="password"  class="textpass" id="pswordone" name="passwordone" placeholder="输入密码"/></td>
			</tr>
			<tr>
				<td><input type="password" class="textpass" id="pswordtwo" name="passwordtwo" placeholder="确认密码"/></td>
			</tr>
			<tr>
				<td><input type="button" class="button" value="确定" onclick="return submit()"/></td>
			</tr>
			<tr>
				<td><input type="reset"  class="button" value="清空"/></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>