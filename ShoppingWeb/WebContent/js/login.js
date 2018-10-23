/**
 * 进行登录与注册验证
 */
function reformsheet(){
	var username=document.getElementById("username").value;
		if(username==""){
			alert("提示\n\n用户名不能为空");
			return false;
		}
		var password=document.getElementById("password").value;
		if(password==""){
			alert("提示\n\n密码不能为空");
			return false;
		}else{
			document.getElementById("login").submit();
			return;
		}
}