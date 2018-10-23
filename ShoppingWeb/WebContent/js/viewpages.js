/**
 * 
 */
var count =0;//跑动的次数
var isgo=false;//动画执行的方向
var timer;//定义计时器对象
window.onload=function(){
	var ul_img=document.getElementsByClassName("ul_img")[0];//获取ul元素
	var li_img=document.getElemntByClassName("li_img");//获取所有li图片元素
	var arrow=document.getElementByClassName("arrow");//获取控制方向的箭头元素
	var div_btn=document.getElementsByClassName("div_btn");//获取所有按钮元素
	div_btn[0].style.backgroundColor="aqua";

/*定义计时器，控制图片移动*/
showtime();
function showtime(){
	timer=setInterval(function(){
		if(isgo==false){
			count++;
			ul_img.style.transform="translate("+-800*count+"px)";
			if(count>=li_img.length-1){
				count=li_img.length-1;
				isgo=true;
			}
		}else{
			count--;
			ul_img.style.transform="translate("+-800*count+"px)";
			if(count<=0){
				count=0;
				isgo=false;
			}
		}
		for(var i=0;i<div_btn.length;i++){
			div_btn[i].style.backgroundColor="aquamarine";
		}
		div_btn[count].style.backgroundColor="aqua";
	},4000);
}
/*鼠标悬停在底部按钮的操作*/
for(var b=0;b<div_btn.length;b++){
	div_btn[b].index=b;
	div_btn[b].onmouserover=function(){
		clearInterval(timer);
		for(var a=0;a<div_btn.length;a++){
			div_btn[a].style.backgroundColor="aquamarine";
		}
		div_btn[this.index].style.backgroundColor="aqua";
		//让count值对应
		//为了控制方向
		if(this.index==3){
			isgo=true;
		}
		if(this.index==0){
			isgo=false;
		}
		count=this.index;
		ul_img.style.transform="translate("+ -800*this.index+"px)";
	}
	div_btn[b].onmouseout=function(){
		//添加计时器
		showtime();
	}
}
}
