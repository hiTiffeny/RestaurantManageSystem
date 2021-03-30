<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<script type="text/javascript"
	src="sources/bootstrap-3.3.4/js/Chart.min.js"></script>
<script type="text/javascript">
	$(function() {
		//显示当前导航
		$("#left-nav").find("a").eq(5).addClass("active");
	});
</script>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/public/head.jspf"%>
	<div class="container ">
		<div class="row">
			<div class="col-md-2">
				<%@ include file="/WEB-INF/jsp/public/left-nav.jspf"%>
			</div>
			<div class="col-md-10">


				<div class="panel panel-default">
					<div class="panel-heading">近期营业额（RMB）</div>
					<div class="panel-body" style='padding:0;height:300px'>
						<canvas id="fin-chart" width="100" height="30"></canvas>
					</div>
				</div>


				<div class="row">
					<div class="col-md-6">
						<div class="panel panel-default">
							<div class="panel-heading">销量排行</div>
							<div class="panel-body" style='padding:0'>
								<canvas id="sale-chart" width="100" height="50"></canvas>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel panel-default">
							<div class="panel-heading">各大菜式销量</div>
							<div class="panel-body" style='padding:0;'>
								<canvas id="stock-chart" width="100" height="50"></canvas>
							</div>
						</div>
					</div>
				</div>







			</div>
		</div>
	</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script type="text/javascript">
	$(function() {
		var options = {
			responsive : true,
			scaleFontFamily : "'微软雅黑'"
		}
		
		//销售排行榜
		var data_sale_labels = new Array(10);
		var data_sale_data = new Array(10);
		$.post("bookServlet?method=getTopSaleDish", function(data) {
			for ( var i = 0; i < data.length; i++) {
				data_sale_labels[i] = data[i].name;
				data_sale_data[i] = data[i].sale;
			}
			
			var data_sale = {
			labels : data_sale_labels,
			datasets : [ {
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				data : data_sale_data
			} ]
		}
	
	
	
		//Get context with jQuery - using jQuery's .get() method.
		var ctx = $("#sale-chart").get(0).getContext("2d");
		//This will get the first returned node in the jQuery collection.
		//var myNewChart = new Chart(ctx);
		new Chart(ctx).Bar(data_sale, options);

		}, 'json');


	$.post("tradeServlet?method=getRecentTrade", function(data) {
			var data_labels = new Array(data.length);
			var data_data = new Array(data.length);
			for ( var i = 0; i < data.length; i++) {
				data_labels[i] = data[i].date;
				data_data[i] = data[i].money;
			}
		//近期营业
		var data_fin = {
			labels :data_labels,
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
	},'json');
		
		$.post("bookServlet?method=getSaleDishType", function(data) {
			var data_stock_labels = new Array(data.length);
			var data_stock_data = new Array(data.length);
			for ( var i = 0; i < data.length; i++) {
				data_stock_labels[i] = data[i].dishType.name;
				data_stock_data[i] = data[i].sale;
			}
		
			var data_stock = {
				labels : data_stock_labels,
				datasets : [
					
					{
						fillColor : "rgba(151,187,205,0.5)",
						strokeColor : "rgba(151,187,205,1)",
						pointColor : "rgba(151,187,205,1)",
						pointStrokeColor : "#fff",
						data : data_stock_data
						//data : [65,59,90,81,56,55,40]
					}
				]
			}
			var ctx = $("#stock-chart").get(0).getContext("2d");
			//This will get the first returned node in the jQuery collection.
			//var myNewChart = new Chart(ctx);
			new Chart(ctx).Radar(data_stock, options);
			
		},'json');
		

	});
</script>
</html>

