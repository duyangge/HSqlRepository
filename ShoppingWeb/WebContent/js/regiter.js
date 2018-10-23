
 function createXMLHttpRequest(){ //创建xmlHttpRequest对象
	try{
		return new XMLHttpRequest();
	}catch(e){
		try{
			return new ActvieXObject("Microsoft.XMLHTTP");
		}catch(e){
			try{
				return new ActvieXObject("Msxml2.XMLHTTP");
			}catch(e){
				throw e;
			}
		}
	}
}
 function checkForm(){
		var username=document.getElementById("usernames").value;
		if(username==""){
			alert("提示\n\n用户名不能为空");
			username.focus();
			return false;
		}
		var address=document.getElementById("address").value;
		var myreg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
		if(address==""){
			alert("提示\n\n邮箱不能为空");
			return false;
		}
		if(!myreg.test(address)){
			alert("提示\n\n请输入有效的E_mail!");
			myreg.focus();
			return false;
		}
		var pswordone=document.getElementById("pswordone").value;
		var pswordtwo=document.getElementById("pswordtwo").value;
		var psreg=/^[a-zA-Z0-9]{6,16}$/;
		if(pswordone==""){
			alert("提示\n\n密码不能为空");
			pswordone.focus();
			return false;
		}
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
	}