<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>魅力男鞋专场</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
</head>
<body onload="${pageContext.request.contextPath}/items_loadAll.action">
	<div class="mansheet">
		<div class="mansheet_title">
			<font class="mansheet_title_left">${manType.titleTop }</font><!--男鞋馆 MEN'SHOES  -->
			<font class="mansheet_title_right">${manType.more }&gt;&gt;</font><!--MORE  -->
			<hr/>
		</div>
		<div class="mansheet_band">
			<div class="mansheet_band_logo">
				<table border="0" cellspacing="0">
					<tr>
						<th class="mansheet_band_title">${manType.brandTitleOne }</th><!--商务鞋  -->
						<th class="mansheet_band_title">${manType.brandTitleSecond }</th><!--休闲鞋  -->
					</tr>
					<!--使用循环变量,出图标  -->
					<tr>
					
						<c:forEach items="${manBrand}" var="brand" varStatus="status">
							<th><img src="${brand.imageSrc}"></th>
							<!--显示商标一行两列  -->
							<c:if test="${status.count % 2 == 0}"></tr><tr>
							</c:if>	
						</c:forEach>
					</tr>
				</table>
			</div>
			<div class="mansheet_image">
				<img  class="mansheet_image_big" src="${manShowText.get(0).itemsShowImgSrc }"/>
				<div class="mansheet_image_text_div">
					<dl>
						<dt>${manShowText.get(0).itemShowTextType }</dt>
						<dt>${manShowText.get(0).itemShowTextIntro }</dt>
					</dl>
				</div>	
			</div>
			<div class="mansheet_show">
				<table border="0" cellspacing="0" class="showimage_table">
					<tr class="mansheet_show_line">
						<c:forEach items="${manShowText}" var="manshowtext" varStatus="status" begin="1">
							<th>
								<div>
									<a href="${pageContext.request.contextPath }/items_inItemsList.action?tid=1" class="sheetimage_text_a" >
									<dl>
										<dt class="sheet_show_toptext">${manshowtext.itemShowTextType }</dt>
										<dt class="sheet_show_buttom">${manshowtext.itemShowTextIntro }</dt>
									</dl>
									<img src="${manshowtext.itemsShowImgSrc}"/>
									</a>
								</div>	
							</th>	
							<!--显示一行三列  -->
							<c:if test="${status.count % 3 == 0 }">
								</tr>
								<tr>
							</c:if>
						</c:forEach>
					</tr>
				</table>
			</div>
		</div> 			
	</div>	
</body>
</html>