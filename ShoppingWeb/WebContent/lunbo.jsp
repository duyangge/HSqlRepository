<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{margin: 0;padding: 0;}
.fl{float: left;}
.fr{float: right;}
.cb{clear: both;}
ul{list-style: none;}
.lunbo{width: 100%;height: 100%;overflow: hidden;position: relative;  /* left: -30px;top: 0px; */  float:right;}
.lunbo img{float: left;}
.box{width: 5110px;}
.btn{width: 100%;height: 100px;position: absolute;top: 40%;display: none;}
.lunbo .btn-l,.lunbo .btn-r{background-color: rgba(249,38,114,0.5);width: 50px;height: 100px;font-size: 82px;color: #ccc;border-radius: 10px;}	
.list-li{position: absolute;bottom: 10px;left: 20%;}
.list-li li{float: left;width: 50px;height: 50px;background-color: #F9263E;line-height: 50px;text-align: center;border-radius: 50%;margin-left: 10px;color: #fff;font-size: 22px;}
/* 	点缀 */
.dianzui{width: 100%;height: 4px;background-color: #ccc;position: absolute;bottom: 0px;}
.dian{width: 1px;height:4px;background-color: red;}
/* 遮罩层 */
.fugai{position: absolute;left: 0;top: 0;height: 100%;width: 730px;
	}
.fugai1,.fugai2,.fugai3{width: 243px;height: 730px;float: left;z-index: 999;overflow: hidden;}
.btn-con-l,.btn-con-r{width: 150px;height: 100px;}
.btn-con-l img,.btn-con-r img{width: 100%;height: 100%;}

</style>
</head>
<body>
<div class="lunbo">
	<div class="fugai">
		<div class="fugai1"></div>
		<div class="fugai2"></div>
		<div class="fugai3"></div>
		<div class="cb"></div>
	</div>

	<div class="dianzui">
		<div class="dian"></div>
	</div>
	<div class="box">
		<img src="images/lunbo/lunbo1.jpg">
		<img src="images/lunbo/lunbo2.jpg">
		<img src="images/lunbo/lunbo3.jpg">
		<img src="images/lunbo/lunbo4.jpg">
		<img src="images/lunbo/lunbo5.jpg">
		<img src="images/lunbo/lunbo6.jpg">
		<img src="images/lunbo/lunbo1.jpg">			
	</div>
	<div class="btn">
		<div class="btn-l fl"><</div>
		<div class="btn-con-l fl"></div>
		<div class="btn-r fr">></div>
		<div class="btn-con-r fr">r</div>
	</div>
	<ul class="list-li">
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
		<li>6</li>
	</ul>
</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
var i=0;
var stop;
/*	每隔2秒运行一次轮播*/
stop=setInterval(function(){
	i++;
	if(i>6){
		i=1;
	}
	xiaoguo2(i);
	xiaoguo(i);
},4000)
/*	动作函数*/
function xiaoguo2(n){
/*		块一*/
	$('.fugai1')
	.css({"background-image":"url(images/lunbo/lunbo"+n+".jpg)",'background-repeat':'no-repeat','display':'block',"backgroundPosition-x":0+'px'})
	.animate({"backgroundPosition-x":-730+'px'},3000)
	.css({'display':'none'})
	//块二
	$('.fugai2')
	.css({"background-image":"url(images/lunbo/lunbo"+n+".jpg)",'background-repeat':'no-repeat','display':'block',"backgroundPosition-x":-200+'px'})
	.animate({"backgroundPosition-x":-730*2+'px'},3000)
	.animate({'display':'none'})
	//块三
	$('.fugai3')
	.css({"background-image":"url(images/lunbo/lunbo"+n+".jpg)",'background-repeat':'no-repeat','display':'block',"backgroundPosition-x":0+'px'})
	.animate({"backgroundPosition-x":-730*3+'px'},3000)
	.animate({'display':'none'})
/*		$('.fugai')
	.css({"background-image":"url(image/lunbo"+n+".jpg)",'background-repeat':'no-repeat','display':'block',"backgroundPosition-x":0+'px'})
	.deplay(3000).animate({"backgroundPosition-x":-730*3+'px'},3000)
	.animate({'display':'none'},10)		*/
}
$('.list-li>li').eq(0).css({'background-color':'orange'})
function xiaoguo(n){
	var b=n-1;	
	$('.list-li>li').css({'background-color':'#F9263E'})	
	$('.list-li>li').eq(b).css({'background-color':'orange'})
	$('.dian').animate({'width':730+'px'},2000)
	$('.dian').animate({'width':0+'px'},100)
	$('.box').animate({'margin-left':-n*730+'px'},2000,function(){
		if(n==6){
			$('.box').css({'margin-left':0+'px'})
		}
	})
}
/*	左右按钮*/
function huan(n){
	var j=i;
	i=i+n;
	
	if(i>6){
		i=1;
	}
	if(i<0){
		i=5;
	}
	xiaoguo(i);
}
//左箭头
$('.btn-l').click(function(){
clearInterval(stop);
	stop=null;			
		huan(-1);	
		if(i==0){
			$('.btn-con-l').html('<img src="image/lunbo'+parseInt(6)+'.jpg">')
		}else{
			$('.btn-con-l').html('<img src="image/lunbo'+parseInt(i)+'.jpg">')
		}
		$('.box').stop(true,true);
		$('.dian').stop(true,true);
		
});
//右箭头
$('.btn-r').click(function(){
	clearInterval(stop);
	stop=null;
		huan(1);			
		if(i==5){
			$('.btn-con-r').html('<img src="image/lunbo'+parseInt(1)+'.jpg">')
		}else if (i==6) {
			$('.btn-con-r').html('<img src="image/lunbo'+parseInt(2)+'.jpg">')
		}else{
			$('.btn-con-r').html('<img src="image/lunbo'+parseInt(i+2)+'.jpg">')
		}
		$('.box').stop(true,true);
		$('.dian').stop(true,true);
});
//$('.btn-l').click(function(){huan(-1);});
//$('.btn-r').click(function(){huan(1);});

/*	鼠标放上大块*/
$('.lunbo').mouseover(function(){
	clearInterval(stop);
	stop=null;
	$('.btn').show();

})
/*	鼠标离开大块*/
$('.lunbo').mouseout(function(){
	if(stop==null){
		stop=setInterval(function(){
			i++;
			if(i>6){
				i=1;
			}
			xiaoguo(i);
			xiaoguo2(i);
		},4000)			
	}
	$('.btn').hide();
	$('.btn-con-l').text('');
	$('.btn-con-r').text('');
})
/*按钮小标题*/
$('.list-li>li').mouseover(function(){		
	clearInterval(stop);
	stop=null;
	i= Number($(this).text());
	xiaoguo($(this).text())
	$('.box').stop(true,true);
	$('.dian').stop(true,true);
})
</script>
</html>