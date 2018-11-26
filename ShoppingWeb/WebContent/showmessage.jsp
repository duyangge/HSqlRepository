<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,web.service.bean.*,web.service.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="showpage" class="web.service.bean.ShowPage" scope="session"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看留言板</title>
<link href="css/main.css" type="text/css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="css/showMessPane.css">
</head>
<body>
<%	
	BaseDao bd=new BaseDao();//实例化一个demo类
	ArrayList<MessageBoard> messageboard=(ArrayList<MessageBoard>)session.getAttribute("messageboard");//返回所有的数据库中的记录
	ArrayList<MessageBoard> mb=(ArrayList<MessageBoard>)request.getAttribute("alm");//关键字搜索后，返回有关的数据库记录
	showpage.setPageSize(3);
	session.setAttribute("showpage", showpage);//保存，上一页，下一页的调用
	session.setAttribute("mb", mb);
%>
<div align="center">
<c:if test="${not empty messageboard}"><!--if判断messageboard是否为空  -->
	<c:choose>
		<c:when test="${messageboard.size()>0 }"><!-- when当messageboard的长度大于零 -->
				<%-- <caption id="captiontable"><h2>欢迎来到留言墙</h2></caption> --%>
					<form action="TakeServlet" method="post">
		请选择查询选项：
						<select name="contentselect" >
							<option value="content" selected="selected">内容</option>
							<option value="title" >主题</option>
							</select>
						<input type="text" name="seachertext" class="textseacher"/>
						<input type="submit" name="seacherbutton" value="搜索" class="button" id="seachertext"/>
						<!-- <input type="button" name="myleavemess" value="查看我的留言信息" class="button"/>
						<input type="button" name="myleavingmess" value="我要留言" class="button" onclick="backleavingmess()"/> -->
					</form> 
	<table id="tablemess" cellspacing="0" border="4" width="70%" height="50%">
		<tr>
			<td id='tabletitle' align='center'>留言匿名</td>
			<td id='tabletitle'align='center'>留言主题</td>
			<td id='tabletitle' align='center'>留言时间</td>
			<td  id='tabletitle' align='center'>留言内容</td>
			<td  id='tabletitle' align='center'>编辑操作</td>
			<td  id='tabletitle' align='center'>删除操作</td> 
		</tr>
<c:choose>
	<c:when test="${empty mb}"><!-- when当mb为空时 -->
			<c:forEach var="ms" items="${messageboard}"><!--循环遍历messageboard中的元素  -->
				<tr>
					<td id="tablecontent" align="center"><c:out value="${ms.name}"/></td>
					<td id="tablecontent" align="center"><c:out value="${ms.title}"/></td>
					<td id="tablecontent" align="center"><c:out value="${ms.date}"/></td>
					<td id="tablecontent"  align="center"><textarea  readonly="true"><c:out value="${ms.content}"/></textarea></td>
					<td id="tablecontent" align="center">
						<form action="" method="post">
							<input type="hidden" name="exittext " value="<c:out value="${ms.id}"/>"/>
							<input type="submit" value="编辑" name="exit1" class="button"/>
						</form>
					</td>
					<td id="tablecontent" align="center">
						<form action="TakeServlet" method="get">
							<input type="hidden" name="deltext" value="<c:out value="${ms.id}"/>"/>
							<input type="submit" value="删除" name="del1" class="button" onclick="removeleavingmess()"/>
						</form>
					</td>	
				</tr>
			</c:forEach>
	</c:when>
	<c:when test="${not empty mb}"><!-- when当mb不为空时 -->
		<c:forEach var="mb" items="${mb}"><!-- 遍历出mb中的元素 -->
			<tr>
				<td id="tablecontent" align="center"><c:out value="${mb.name}"/></td>
				<td id="tablecontent" align="center"><c:out value="${mb.title}"/></td>
				<td id="tablecontent" align="center"><c:out value="${mb.date}"/></td>
				<td><textarea id='textcontent' readonly='true'><c:out value="${mb.content}"/></textarea></td>
				<td id="tablecontent" align="center">
					<form action="" method="post">
						<input type="hidden" name="exittext" value="<c:out value="${mb.id}"/>"/>
						<input type="submit" value="编辑" name="exit2" class="button"/>
					</form>
				</td>
				<td id="tablecontent" align="center">
					<form action="TakeServlet" method="get">
						<input type="hidden" name="deltext" value="<c:out value="${mb.id}"/>"/>
						<input type="submit" value="删除" name="del2" class="button" onclick="removeleavingmess()" />
					</form>
				</td>
			</tr>
			</c:forEach>	
	</c:when>
</c:choose>
</table>		
		</c:when>
		<c:otherwise>${emptymess}</c:otherwise>
	</c:choose>
</c:if>
<br>
<table>
	<tr>
		<td>
			<form action="PageServlet" method="post">
				<input type="hidden" name="currentpage" value="${1}"/>
				<input type="submit" name="first" value="首页" class="button"/>
			</form>
		</td>
		<td>
			<form action="PageServlet" method="post">
				<input type="hidden" name="currentpage" value="${showpage.getCurrentpage()-1}"/>
				<input type="submit" name="back" value="上一页" class="button"/>
			</form>
		</td>
		<td>
			<form action="PageServlet" method="post">
				<input type="hidden" name="currentpage" value="${showpage.getCurrentpage()+1}"/>
				<input type="submit" name="go" value="下一页" class="button"/>
			</form>
		</td>
		<td>
			<form action="PageServlet" method="post">
				<input type="text" name="tiaozhuang" size="1"/>
				<input type="submit" name="jump" value="跳转" class="button"/>
			</form>
		</td>
		<td>
			<form action="PageServlet" method="post">
				<input type="hidden" name="currentpage" value="${showpage.getTotalPages()}"/>
				<input type="submit" name="last" value="尾页" class="button"/>
			</form>
		</td>
	</tr>
</table>
<h3><a href="submit.jsp">返回留言板</a><br>当前显示第${showpage.getCurrentpage()}/<%=bd.getTR(showpage,BaseDao.sqlmessageboard)%>页</h3>
</div>
</body>
<script type="text/javascript" src="js/leavemess.js"></script>
</html>