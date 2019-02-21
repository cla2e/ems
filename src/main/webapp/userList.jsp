<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						<p>
							2019/2/20
							<br />
							安全退出
						</p>
					</div>
					<div id="topheader">
						<h1 id="title">
							<a href="#">main</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						Welcome!
					</h1>
					<table class="table">
						<tr class="table_header">
							<td>
								序号
							</td>
							<td>
								用户名
							</td>
							<td>
								真实姓名
							</td>
							<td>
								性别
							</td>
							<td>
								Operation
							</td>
						</tr>

						<c:forEach var="u" items="${requestScope.list}" varStatus="vs">
							<tr class="row1">
								<td>
									${vs.count}
								</td>
								<td>
									${u.username}
								</td>
								<td>
									${u.realName}
								</td>
								<td>
									<c:choose>
										<c:when test="${u.sex==1}">
											男
										</c:when>
										<c:when test="${u.sex==0}">
											女
										</c:when>
									</c:choose>
								</td>
								<td>
									<a href="${pageContext.request.contextPath}/user/delete?id=${u.id}">delete emp</a>&nbsp;<a href="${pageContext.request.contextPath}/user/selectById?id=${u.id}">update emp</a>
								</td>
							</tr>

						</c:forEach>

					</table>
					<p>
						<input type="button" class="button" value="Add User" onclick="location='${pageContext.request.contextPath}/regist.jsp'"/>
					</p>
				</div>
				<a href="">1</a>
				<a href="">2</a>
				<a href="">3</a>
			</div>
			<div id="footer">
				<div id="footer_bg">
				ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
