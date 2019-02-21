<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>update Emp</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
	</head>

	<body>
		<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p>
								2009/11/20
								<br />
							</p>
						</div>
						<div id="topheader">
							<h1 id="title">
								<a href="#">Main</a>
							</h1>
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						update Emp info:
					</h1>
					<form action="${pageContext.request.contextPath}/user/modify" method="post">
						<table cellpadding="0" cellspacing="0" border="0"
							class="form_table">
							<tr>
								<td valign="middle" align="right">
									id:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="id" value="${requestScope.user.id}" readonly/>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									姓名
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="username" value="${requestScope.user.username}"/>
								</td>
							</tr>
                            <tr>
                                <td valign="middle" align="right">
                                    密码
                                </td>
                                <td valign="middle" align="left">
                                    <input type="text" class="inputgri" name="password" value="${requestScope.user.password}"/>
                                </td>
                            </tr>
							<tr>
								<td valign="middle" align="right">
									真实姓名
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="realName" value="${requestScope.user.realName}"/>
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									性别
								</td>
								<td valign="middle" align="left">
									<c:choose>
										<c:when test="${requestScope.user.sex==1}">
											男 <input type="radio" class="inputgri" name="sex" value="1" checked/>
											女 <input type="radio" class="inputgri" name="sex" value="0"/>
										</c:when>
										<c:when test="${requestScope.user.sex==0}">
											男 <input type="radio" class="inputgri" name="sex" value="1"/>
											女 <input type="radio" class="inputgri" name="sex" value="0" checked/>
										</c:when>
									</c:choose>

								</td>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="Confirm" />
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
