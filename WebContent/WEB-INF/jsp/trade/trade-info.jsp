<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
	<input value="${trade.id}" type="hidden" id="tradeId">
		<div class="panel panel-default">
			<div class="panel-heading"><p class="text-center"><b>订单号：[${trade.id }]--总数：[${trade.dish_num }]--总价：[￥ ${trade.price }]--餐桌号：[${trade.customer_table }]--接单服务员：[${trade.user.name }] </b></p></div>
			<div class="panel-body">
				<table
					class="table table-hover table-bordered table-condensed book-manage">

					<tr>
						<th>序号</th>
						<th>图片</th>
						<th>名称</th>
						<th>单价(RMB)</th>
						<th>数量</th>

					</tr>
					<c:forEach items="${requestScope.cart.items }" var="item"
						varStatus="status">

						<tr>
							<input type="hidden" value='${ item.dish.id}'>
							<td>${ status.index + 1}</td>
							<td><img src="upload/${item.dish.picture }"
								alt="${item.dish.name}" class="img-rounded">
							</td>
							<td>${item.dish.name }</td>
							<td>${item.dish.price }</td>
							<td>${item.quantity }</td>




						</tr>
					</c:forEach>
					<tr>

						<td colspan="3"></td>
						<td><a class="btn btn-info btn-primary btn-block"
								href="tradeServlet?method=${(to_flag == '1')?'toTradeAllUI':'toTradeUI' }&pageNo=${param.pageNum }">
								<i class="glyphicon glyphicon-chevron-left"></i>返回
							</a></td>
						<td> <button class="btn btn-warning btn-primary btn-block"
								id="startMakeBtn">
								<b id="state">${trade.tradeState.str}</b><i class="glyphicon glyphicon-check"></i>
							</button></td>

					</tr>



				</table>
			</div>
		</div>


	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script type="text/javascript">
if($('#state').html() == '完成'){
	$('#state').parent().addClass("disabled");
}
	$("#startMakeBtn").click(function(){
		var id=$("#tradeId").val();
		$.post("tradeServlet?method=changeState",{ id: id},function(data){
			$("#state").html(data);
			if(data=='完成' || data=='无效订单'){
				$('#startMakeBtn').addClass("disabled");
			}
			
		});
	});
</script>
</html>

