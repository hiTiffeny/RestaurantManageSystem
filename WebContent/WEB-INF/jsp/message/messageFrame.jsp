<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>

</head>

<body>
	
	<table class="table table-striped " >
		<c:forEach items="${page.list}" var="message">
			<tr >
				<td><c:if test="${message.isRead == false}">
						【未读消息】
					</c:if><i class="glyphicon glyphicon-comment"></i></td>
				
				<!-- <td class="gen-content"> <b  style="float:left">内容：</b><pre style="float:left">${message.context }</pre></td> -->
				<td>时间：${fn:substring(message.date, 0, 19) }</td>
				
				<td>来自：${message.userFrom.name }</td>
				<td><a href='messageServlet?method=toMessageContext&id=${message.id}&pageNo=${page.pageNo}' class="btn btn-primary btn-sm">读取</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<nav class="text-center">
							<ul class="pagination">
								<li class=" ${page.hasPrev == true?"":"disabled"}"><a
									href="messageServlet?method=getMessageFrame&pageNo=1"> <span
										aria-hidden="true">首页</span> </a>
								</li>

								<li class=" ${page.hasPrev == true?"":"disabled"}"><a
									href="messageServlet?method=getMessageFrame&pageNo=${page.prevPage }"
									aria-label="Previous"> <span aria-hidden="true">&laquo;上一页</span>
								</a>
								</li>

								<li class="disabled"><a>第 ${page.pageNo } 页 共
										${page.totalPageNumber } 页</a>
								</li>
								<li class=" ${page.hasNext == true?"":"disabled"}"><a
									href="messageServlet?method=getMessageFrame&pageNo=${page.nextPage}"
									aria-label="Next"> <span aria-hidden="true">下一页&raquo;</span>
								</a>
								</li>
								<li class=" ${page.hasNext == true?"":"disabled"}"><a
									href="messageServlet?method=getMessageFrame&pageNo=${page.totalPageNumber}">
										<span aria-hidden="true">末页</span> </a>
								</li>
							</ul>
						</nav>
</body>
</html>

