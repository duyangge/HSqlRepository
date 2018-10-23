/**
 * 登录验证
 */
$(function(){
	var xmlhttp;
	$("#submit").click(function(){
		if(checkInput()){
			var username=$("input[name='username']")[0].value;
			var password=$("input[name='password']")[0].value;
			alert(username);
			getxhr();
			xmlhttp.open("post","/ShoppingWeb/UserServlet?method=login&username="+username+"&password="+password,true);
			/*xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");*/
			xmlhttp.send("username="+username+"&password="+password);
			xmlhttp.onreadystatechange=function()
			{
			    if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    {
			        var str=xmlhttp.responseText;
			        if(str=="该用户不存在"){
			        	alert("该用户不存在");
			        	$("form")[0].reset();
			        }else if(str=="密码错误"){
			        	alert("密码错误");
			        	$("form")[0].reset();
			        }else if(str=="登录成功"){
			        	
			        	window.location.href="/WEB-INF/view/first.jsp";
			        }
			    }
			}
			
		}else{
			return false;
		}
		
	});
	
	function getxhr(){
		if (window.XMLHttpRequest)
		{
		    //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		    xmlhttp=new XMLHttpRequest();
		}
		else
		{
		    // IE6, IE5 浏览器执行代码
		    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}

	}
});

function checkInput(){
	//判断用户名是否为空
	if($("input[name=username]").val()==null || $("input[name=username").val()==""){
		//alert("用户名不能为空");
		toastr.warning("用户名不能为空");
		$("input[name=username]").focus();
		return false;
	}
	
	//判断密码是否为空
	if($("input[name=password]").val()==null || $("input[name=password").val()==""){
		//alert("密码不能为空");
		toastr.warning("用户名不能为空");
		$("input[name=password]").focus();
		return false;
	}
	return true;
}