<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>魅力男鞋专场</title>
</head>
<body>
	<div class="mansheet">
		<div class="mansheet_title">
			<font class="mansheet_title_left">男鞋馆 MEN'SHOES</font>
			<font class="mansheet_title_right">MORE&gt;&gt;</font>
			<hr/>
		</div>
		<div class="mansheet_band">
			<div class="mansheet_band_logo">
				<table border="0" cellspacing="0">
					<tr>
						<th class="mansheet_band_title">商务鞋</th>
						<th class="mansheet_band_title">休闲鞋</th>
					</tr>
					<!--使用循环变量  -->
					<tr>
						<th><img src="images/sheetbandimage/mansheet/1.png"></th>
						<th><img src="images/sheetbandimage/mansheet/2.png"></th>
					</tr>
					<tr>
						<th><img src="images/sheetbandimage/mansheet/3.png"></th>
						<th><img src="images/sheetbandimage/mansheet/4.png"></th>
					</tr>
					<tr>
						<th><img src="images/sheetbandimage/mansheet/5.png"></th>
						<th><img src="images/sheetbandimage/mansheet/6.png"></th>
					</tr>
					<tr>
						<th><img src="images/sheetbandimage/mansheet/7.png"></th>
						<th><img src="images/sheetbandimage/mansheet/8.png"></th>
					</tr>
					<tr>
						<th><img src="images/sheetbandimage/mansheet/9.png"></th>
						<th><img src="images/sheetbandimage/mansheet/10.png"></th>
					</tr>
				</table>
			</div>
			<div class="mansheet_image">
				<img  class="mansheet_image_big" src="images/sheetimage/mansheetimage/bigsheet.png"/>
				<div class="mansheet_image_text_div">
					<dl>
						<dt>森达</dt>
						<dt>潮流新品特惠</dt>
					</dl>
				</div>	
			</div>
			<div class="mansheet_show">
				<table border="0" cellspacing="0" class="showimage_table">
					<tr class="mansheet_show_line">
						<th><%-- showlistServlet--%>
							<div><a href="${pageContext.request.contextPath }/items_inItemsList.action?tablename=Items" class="sheetimage_text_a" >
								<dl>
									<dt class="sheet_show_toptext">百丽</dt>
									<dt class="sheet_show_buttom">专柜同款</dt>
								</dl>
								<img src="images/sheetimage/mansheetimage/mansheet1.png"/>
								</a>
							</div>	
						</th>
						<th>
							<div><a href="showlistServlet?tablename=goods" class="sheetimage_text_a" >
								<dl>
									<dt class="sheet_show_toptext">他她</dt>
									<dt class="sheet_show_buttom">型男首选</dt>
								</dl>
							<img src="images/sheetimage/mansheetimage/mansheet2.png"/>
							</a>
							</div>
						</th>
						<th>
							<div><a href="showlistServlet?tablename=goods" class="sheetimage_text_a" >
								<dl>
									<dt class="sheet_show_toptext">暇步士</dt>
									<dt class="sheet_show_buttom">美式休闲时尚</dt>
								</dl>
							<img src="images/sheetimage/mansheetimage/mansheet3.png"/>
							</a>
							</div>
						</th>
					</tr>
					<tr class="mansheet_show_line">
						<th>
							<div><a href="showlistServlet?tablename=goods" class="sheetimage_text_a" >
								<dl>
									<dt class="sheet_show_toptext">拔佳</dt>
									<dt class="sheet_show_buttom">春季出游潮搭</dt>
								</dl>
							<img src="images/sheetimage/mansheetimage/mansheet4.png"/>
							</a>
							</div>
						</th>
						<th>
							<div><a href="showlistServlet?tablename=goods" class="sheetimage_text_a" >
								<dl>
									<dt class="sheet_show_toptext">卡特</dt>
									<dt class="sheet_show_buttom">潮品工装</dt>
								</dl>
							<img src="images/sheetimage/mansheetimage/mansheet5.png"/>
							</a>
							</div>
						</th>
						<th>
							<div><a href="showlistServlet?tablename=goods" class="sheetimage_text_a" >
								<dl>
									<dt class="sheet_show_toptext">天美意</dt>
									<dt class="sheet_show_buttom">焕季潮流</dt>
								</dl>
							<img src="images/sheetimage/mansheetimage/mansheet6.png"/>
							</a>
							</div>
						</th>
					</tr>
				</table>
			</div>
		</div> 			
	</div>	
</body>
</html>