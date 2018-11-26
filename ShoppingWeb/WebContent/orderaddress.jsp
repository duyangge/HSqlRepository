<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>下单时，需添加详细订单 </title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<style type="text/css">
	form{width: 50em;overflow: hidden;margin: 5em auto;}
	div{line-height: 4em;}
	input{width: 25em;padding-left: 1em;height: 3em;
	line-height: 3em;color: #333;font-size: 1.4em;
	border: 0.1em solid #666;outline: none;margin-bottom: 1em;display: inline-block;}
	span{display: inline-block;float: left;}
	.submit{width: 12em;background: #666;color: #fff;margin-left: 5em;cursor: pointer;}
</style>
</head>
<body>
	<form action="${pageContext.request.contextPath }/orders_saveShippingAddress" method="post" class="form" id="detailtable">
			<table>
			<caption><span style="color:red;text-align:center;">请填写好以下信息</span></caption>
				<tr>
					<td><span>收货人：</span></td>
					<td><input type="text" name="shippingAddress.consignee" id="name" placeholder="收货人"  value="${user.username}"/></td>
				</tr>
				<tr>
					<td><span>联系电话：</span></td>
					<td><input type="text" name="shippingAddress.phone" id="phone" placeholder="联系电话电话" /></td>
				</tr>
				</tr>
				<tr>
					<td><span>邮政编号：</span></td>
					<td><input type="password" name="shippingAddress.postcode" id="postoffice" placeholder="邮政编号" />
				</td>
				<tr>
					<td><span>商品备注:</span></td>
					<td><input type="text" name="shippingAddress.remark" id="note" placeholder="商品备注" /></td>
				</tr>
				<tr>
					<td><span>收货地址：</span></td>
					<td><input type="text" name="shippingAddress.shippingaddress" id="address" placeholder="收货地址" /></td>
				</tr>
				<tr>
					<td><span>订单编号</span></td>
					<td><input type="text" name="orderno" id="orderno" value="${orders.getRid()}" readonly="true"/></td>
				</tr>
			</table>
			<input type="hidden" name="shippingAddress.uid" value="${user.getUid() }"/>
			<input type="button" value="提交" class="submit" onclick="return check();"/>
			<input type="reset" value="重置" class="submit" />
	</form>
	<a href="#" onclick="GoBack()">返回</a>
</body>
<script type="text/javascript" src="js/addcart.js"></script>
<script type="text/javascript">
function check(){
		var name = document.getElementById("name");			
		if(name.value==''){
			alert('亲\n\n收货人不能为空哦！');
			name.focus();
			return false;
		}else{
			var vname=(/^[a-zA-Z\u4e00-\u9fa5]{2,10}$/);
			if (!vname.test(name.value)) {
				alert('亲\n\n收货人名字格式不正确\n长度为2-10个字，只能是中文或英文哟！');
				name.focus();
				return false; 
			}
		}					 					
		var phone = document.getElementById('phone');
		if(phone.value==''){
			alert('亲\n\n您还没有输入电话呢！');
			phone.focus();
			return false;
		}else{
			var phone_reg = /^13[0-9]{1}[0-9]{8}$|15[0-9]{1}[0-9]{8}$|18[0-9]{1}[0-9]{8}|17[0-9]{1}[0-9]{8}$|14[0-9]{1}[0-9]{8}/;
			var tel_reg = /^([0-9]{3,4}-)?[0-9]{7,8}$/;
			if(!phone_reg.test(phone.value) && !tel_reg.test(phone.value)){
				alert('亲\n\n您输入的手机或电话号码格式不正确.');
				phone.focus();
				return false;
			}
		}
		var postoffice = document.getElementById('postoffice');
		if(postoffice.value==''){
			alert('亲\n\n您还没有填写邮政编号呢！');
			postoffice.focus();
			return false;
		}else{
			var vpwd = /^[A-Za-z0-9]+$/;
			if(!vpwd.test(postoffice.value)){
				alert('亲\n\n您输入格式有误！');
				postoffice.focus();
				return false;
			}else{
				if(postoffice.value.length<10){
					alert('亲\n\n您输入长度的不能少于10位哦！');
					postoffice.focus();
					return false;
				}
			}
		}
		/* var email = document.getElementById('email');
		if(email.value==''){
			alert('亲\n\n您还没有输入邮箱呢！');
			email.focus();
			return false;
		}else{
			var vemail = /^[0-9a-zA-Z]+(?:[\_\.\-][a-z0-9\-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\.[a-zA-Z]+$/i;
			if(!vemail.test(email.value)){
				alert('亲\n\n您输入的邮箱格式有点错误！');
				email.focus();
				return false;
			}
		} */
		var address = document.getElementById('address');
		if(address.value==''){
			alert('亲\n\n输入的地址不能为空哦');
			address.focus();
			return false;
		}else{
			if(address.value.length<8){
				alert('亲\n\n地址的长度不能少于6个字');
				address.focus();
				return false;
			}else{
				alert("亲\n\n您的收货信息已提交成功！");
				document.getElementById("detailtable").submit();
				return true;
			}
		} 
}
</script>
</html>
