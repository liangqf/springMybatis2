<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/ligerUI/lib/ligerUI/skins/Gray/css/all.css" />
		<title>留言列表页</title>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>
<body>
	<div align="center">
		<table border="1px" style="text-align: center; width: 350px;">
			<tr>
				<th width="30%">留言内容</th>
				<th width="30%">创建时间</th>
				<th width="40%">操作</th>
			</tr>
			<c:forEach items="${messageList }" var="message">
				<tr>
					<td>${message.mesContent }</td>
					<td><fmt:formatDate value="${message.mesCreatime }" pattern="yyyy-MM-dd"/></td>
					<td>
						<a>删除</a>
						<a href="editMes.form?mesId=${message.mesId }">修改</a>
						<a href="editMes.form">添加</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<br>
	</div>
</body>
</html>