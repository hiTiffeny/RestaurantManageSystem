<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>

</head>

<body>
	
		<table class="table">
			<tr>
				<td>来自：${message.userFrom.name }</td>

			</tr>
			<tr>
				<td>时间：${fn:substring(message.date, 0, 19) }</td>

			</tr>
			<tr>
				<td>内容：<br>${message.context }</td>

			</tr>
			
			


		</table>
		<a class="btn btn-warning"
			href="messageServlet?method=getMessageFrame&pageNo=${param.pageNo }">返回</a>
	
</body>

</html>


