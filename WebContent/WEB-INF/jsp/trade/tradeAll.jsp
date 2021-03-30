<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<script type="text/javascript">
	$(function() {
		//显示当前导航
		$("#head-li li").eq(3).addClass("active");
	});
</script>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/public/head.jspf"%>
	<div class="container ">
		<div class="row">
			<div class="col-md-2">
				<ul class="list-group">
					<a href="tradeServlet?method=toTradeUI" class="list-group-item">未完成订单</a>
					<a href="tradeServlet?method=toTradeAllUI" class="list-group-item active">所有订单</a>
				</ul>
			</div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<!-- <div class="panel-heading">订单</div> -->
					<div class="panel-body">
						<table
							class="table table-hover table-bordered table-condensed book-manage">
							<tr>

								<th>订单号</th>
								<th>数量</th>
								<th>总价(RMB)</th>
								<th>服务人员</th>
								<th>餐桌号</th>
								<th>提交时间</th>
								<th>订单状态</th>
								<th>操作</th>
							</tr>
							<c:forEach items="${page.list }" var="trade">

								<tr>
									<td>${trade.id }</td>
									<td>${trade.dish_num }</td>
									<td>${trade.price }</td>
									
									<td>${trade.user.name }</td>
									<td>${trade.customer_table }</td>
									
									<td >${fn:substring(trade.date, 0, 19)  }</td>
									<td ><a
										class="btn btn-default btn-sm">${trade.tradeState.str }</a></td>
									<td>
									
									
										
										<a
										href="tradeServlet?method=getTrade&pageNum=${page.pageNo}&tradeId=${trade.id }&to_flag=1"
										class="btn btn-info btn-sm">查看详情</a> 
										</td>
								</tr>
							</c:forEach>

						</table>

						<nav class="text-center">
							<ul class="pagination">
								<li class=" ${page.hasPrev == true?"":"disabled"}"><a
									href="tradeServlet?method=toTradeAllUI&pageNo=1"> <span
										aria-hidden="true">首页</span> </a></li>

								<li class=" ${page.hasPrev == true?"":"disabled"}"><a
									href="tradeServlet?method=toTradeAllUI&pageNo=${page.prevPage }"
									aria-label="Previous"> <span aria-hidden="true">&laquo;上一页</span>
								</a></li>

								<li class="disabled"><a>第 ${page.pageNo } 页 共
										${page.totalPageNumber } 页</a></li>
								<li class=" ${page.hasNext == true?"":"disabled"}"><a
									href="tradeServlet?method=toTradeAllUI&pageNo=${page.nextPage}"
									aria-label="Next"> <span aria-hidden="true">下一页&raquo;</span>
								</a></li>
								<li class=" ${page.hasNext == true?"":"disabled"}"><a
									href="tradeServlet?method=toTradeAllUI&pageNo=${page.totalPageNumber}">
										<span aria-hidden="true">末页</span> </a></li>
							</ul>
						</nav>

					</div>
				</div>
				
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
</html>

