<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<%@include file="/commons/head.jsp" %>
		<link rel="stylesheet" type="text/css" href="${ctx }/ligerUI/lib/ligerUI/skins/Gray/css/all.css" />
		<title></title>
  </head>
  <body>
  <div style="text-align: center;">
  <h1>&nbsp;修改留言内容</h1>
    <form action="save.form" method="post" style="text-align: center;">
        <p><input type="hidden" name="mesId" value="${message.mesId }"/></p>
                          内容：<input type="text" class="l-text " name="mesContent" value="${message.mesContent }"  /></br></br>
        <p align="center"><input type="submit" value="保存" class="l-button-over l-button" /></p>
    </form>
    </div>
  </body>
</html>