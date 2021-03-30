<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<link rel="stylesheet" href="sources/grumble.js-master/css/grumble.min.css" type="text/css"></link>

<script type="text/javascript" src="sources/grumble.js-master/js/jquery.grumble.min.js"></script>
<script type="text/javascript">
	$(function() {
		var sessionTableNum = $('#sessionTableNum').val();
		if(sessionTableNum !=null || sessionTableNum!=""){
			var $select = $("#table-num");
			var selectLenth = $("#table-num option").length;
			for ( var i = 0; i < selectLenth; i++) {
	
				if ($select.find("option").eq(i).val() == sessionTableNum) {
					$select.find("option").eq(i).attr("selected", true);
					break;
				}
			}
		
		}
		
		$('#table-num').change(function(){
			var tableNum = $("#table-num").val();
			$.post("cartServlet?method=tableNumChange",{tableNum:tableNum});
		
		});
		//显示当前导航
		$("#head-li li").eq(2).addClass("active");

		$("#upItemBtn")
				.click(
						function() {
							var tableNum = $("#table-num").val();
							window.location.href = "tradeServlet?method=addTrade&tableNum="
									+ tableNum;
						});

	});
</script>
</head>

<body>
<input type="hidden" value=${tableNum } id="sessionTableNum">
	<%@ include file="/WEB-INF/jsp/public/head.jspf"%>
	<div class="container ">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="row">
					<div class="col-md-3">
						<select class="form-control" id="table-num">
							<option value="1101">请选择餐桌号</option>
							<option value="1102">餐桌号：1 楼 102 桌</option>
							<option value="1103">餐桌号：1 楼 103 桌</option>
							<option value="1104">餐桌号：1 楼 104 桌</option>
							<option value="2105">餐桌号：2 楼 105 桌</option>
							<option value="2106">餐桌号：2 楼 106 桌</option>
							<option value="2107">餐桌号：2 楼 107 桌</option>
							<option value="2108">餐桌号：2 楼 108 桌</option>
						</select>
					</div>
					<div class="col-md-3"></div>
				</div>

			</div>
			<div class="panel-body">
				<table
					class="table table-hover table-bordered table-condensed book-manage">


					<c:if test="${empty cart.items}">
						<div class="alert alert-warning" role="alert">
							<i class="glyphicon glyphicon-info-sign"></i> 您的购物车空空如也~
						</div>
						<a class="btn btn-warning" href="bookServlet?method=toIndexUI">立即前往点餐
							<i class="glyphicon glyphicon-share-alt"></i>
						</a>
					</c:if>

					<c:if test="${!empty cart.items}">

						<tr>
							<th>序号</th>
							<th>图片</th>
							<th>名称</th>
							<th>菜式</th>
							<th>单价(RMB)</th>
							<th>数量</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${cart.items }" var="item" varStatus="status">

							<tr>
								<input type="hidden" value='${ item.dish.id}'>
								<td>${ status.index + 1}</td>
								<td><img src="upload/${item.dish.picture }"
									alt="${item.dish.name}" class="img-rounded"></td>
								<td>${item.dish.name }</td>
								<td>${item.dish.dishType.name }</td>
								<td>${item.dish.price }</td>
								<td><a class="btn btn-default btn-xs decrease-button" ><i
										class="glyphicon glyphicon-minus"
										></i> </a> <font
									color="maroon">&nbsp; <b>${item.quantity }</b> &nbsp;</font> <a
									class="btn btn-default btn-xs increase-button"><i
										class="glyphicon glyphicon-plus"
										></i> </a>
								</td>



								<td><a
									href="cartServlet?method=cartItemDelete&id=${item.dish.id}"
									class="btn btn-danger btn-sm">删除</a>
								</td>
							</tr>
						</c:forEach>
						<tr>

							<td colspan="5"><strong><font size="5" color="red">Total:
										￥ <b id="total-money">${cart.totalMoney }</b> </font> </strong>
							</td>

							<td><a class="btn btn-info btn-primary btn-block" href="cartServlet?method=cancel">取消 <i
									class="glyphicon glyphicon-remove"></i> </a>
							</td>
							<td><button class="btn btn-warning btn-primary btn-block"
									id="upItemBtn">
									确认 <i class="glyphicon glyphicon-chevron-right"></i>
								</button>
							</td>

						</tr>
					</c:if>


				</table>



			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script type="text/javascript">
	$(function() {
		if(parseInt($("#cart-num").html()) == 0){
					$("#upItemBtn").addClass("disabled");
		}
		
		$(".increase-button").click(function(){
		
			var $this =  $(this);
			var $tr =$this.parent().parent();
			var id = $tr.find(":input").val();
			$.post("cartServlet?method=cartItemChange",{id:id,value:'+'},function(data){
			if(data == "0"){
				$this.parent().grumble(
					{
						text: "库存不足", 
						angle:300, 
						distance: 10, 
						showAfter: 100,
						hideAfter: 2000
					}
				);
			
			}else{
				$tr.find('b').html(data.num);
				$("#total-money").html(data.totalMoney);
				var CartitemNum = parseInt($("#cart-num").html());
				if(CartitemNum == 0){
					$("#upItemBtn").removeClass("disabled");
				}
				$("#cart-num").html(CartitemNum+1)
			
				
				
			}
					
			},"json");
			
		});
		
		$(".decrease-button").click(function(){
			var $this =  $(this);
			var $tr =$this.parent().parent();
			var id = $tr.find(":input").val();
			$.post("cartServlet?method=cartItemChange",{id:id,value:'-'},function(data){
		
			
			if(data != "0"){
				$tr.find('b').html(data.num);
				$("#total-money").html(data.totalMoney);
				var CartitemNum = parseInt($("#cart-num").html());
				$("#cart-num").html(CartitemNum-1)
				if(parseInt($("#cart-num").html()) == 0){
					$("#upItemBtn").addClass("disabled");
				}
			}
			
			},"json");
		});
	})
	
	
	
</script>
</html>

