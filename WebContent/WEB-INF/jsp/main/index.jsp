<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<script type="text/javascript"
	src="sources/bootstrap-3.3.4/js/Chart.min.js"></script>
<script type="text/javascript">
	$(function() {
		//显示当前导航
		$("#head-li li").eq(0).addClass("active");
	});
</script>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/public/head.jspf"%>

	<div class="container ">
		<div class="row">
			<div class="col-md-12">

				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-retweet"></i> 动态业务量
					</div>
					<div class="panel-body" style='padding:0;height:400px'>
						<canvas id="fin-chart" width="100" height="30"></canvas>
					</div>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class="glyphicon glyphicon-transfer"></i> 最新订单
						</h3>
					</div>
					<div class="panel-body">
						<table class="table table-striped book-manage">
							<tr>

								<th>订单号</th>
								<th>数量</th>
								<th>总价(RMB)</th>
								<th>服务人员</th>
								<th>餐桌号</th>
								<th>提交时间</th>
								<th>订单状态</th>
							</tr>
							<c:forEach items="${pageTrade.list }" var="trade">

								<tr>
									<td>${trade.id }</td>
									<td>${trade.dish_num }</td>
									<td>${trade.price }</td>

									<td>${trade.user.name }</td>
									<td>${trade.customer_table }</td>

									<td>${fn:substring(trade.date, 0, 19) }</td>
									<td>${trade.tradeState.str }</td>
									
								</tr>
							</c:forEach>


						</table>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class="glyphicon glyphicon-sort-by-attributes-alt"></i> 本月销量排行
						</h3>
					</div>
					<div class="panel-body">
						<table class="table table-striped book-manage table-bordered">
							<tr>
								<th>名称</th>
								<th>销量</th>
							</tr>
							<c:forEach items="${top_sale }" var="dish">
								<tr>
									<td>${dish.name }</td>
									<td>${dish.sale }</td>
								</tr>
							</c:forEach>

						</table>
					</div>
				</div>
			</div>
		</div>








	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script type="text/javascript">
	$(function() {
		function ajaxStart() {
			$.post("tradeServlet?method=getTimeTrade", function(data) {
				var data_labels = new Array(data.length);
				var data_data = new Array(data.length);
				for ( var i = 0; i < data.length; i++) {
					data_labels[i] = data[i].date;
					data_data[i] = data[i].money;
				}
				//近期营业
				var data_fin = {
					labels : data_labels,
					datasets : [ {
						fillColor : "rgba(151,187,205,0.5)",
						strokeColor : "rgba(151,187,205,1)",
						pointColor : "rgba(151,187,205,1)",
						pointStrokeColor : "#fff",
						data : data_data
					} ]
				}
				var ctx = $("#fin-chart").get(0).getContext("2d");
				new Chart(ctx).Line(data_fin, options);
			}, 'json');
		}

		var options = {
			responsive : true,
			animation : false,
			scaleFontFamily : "'微软雅黑'"
		}
		ajaxStart();
		setInterval(ajaxStart, 3000);

	});
</script>
</html>

