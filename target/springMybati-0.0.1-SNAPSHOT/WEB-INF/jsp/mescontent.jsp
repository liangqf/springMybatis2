<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="com.springMybatis.entity.*"%>
<html>
<head></head>
<body>
	<%
		Message mes = (Message) request.getAttribute("mes");
	%>
	<div align="center">
		<h1>留言内容详情</h1>
		<p><%=mes.getMesContent()%></p>
		<a href=<%=request.getContextPath()+"/findall.form" %>><input type="submit" value="返回" /></a>
	</div>
</body>
</html>