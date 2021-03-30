<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<link rel="stylesheet"
	href="sources/grumble.js-master/css/grumble.min.css" type="text/css"></link>
<link rel="stylesheet" href="sources/bootstrap-3.3.4/css/scojs.css"
	type="text/css"></link>
<link rel="stylesheet" href="sources/myCss/style.css" type="text/css"></link>
<script type="text/javascript"
	src="sources/bootstrap-3.3.4/js/sco.modal.js"></script>
<script type="text/javascript"
	src="sources/bootstrap-3.3.4/js/sco.confirm.js"></script>

<script type="text/javascript"
	src="sources/grumble.js-master/js/jquery.grumble.min.js"></script>
<script type="text/javascript">
				var pageNum = 1;
				var flagSroll = 0;
				var flagLoad = 0;
				//var $btn = $(this).button('loading');
				function getMore() {
					flagLoad = 1;
					
					//var loadImg = "<img src="+"'sources/images/loading.gif'"+"></img>";
					
					var $btn = $('#more-button').button('loading');
					
					pageNum++;
					var url = "bookServlet?method=getMoreList&pageNum="
							+ pageNum;
					$.post(url, function(data) {

						var list = data.list;
						for ( var i = 0; i < list.length; i++) {
							$("#main-container").append("<div></div>");
							$("#main-container div").last().addClass("panel")
									.addClass("panel-default").addClass(
											"book-dish");
							var $div = $("#main-container div").last();
							$div.last().append("<div></div>");

							$div.last().last().find("div").addClass(
									"panel-body");

							$div.last().last().find("div").append("<div class='alert alert-info dish-inner' role='alert'>描述："+list[i].description+"</div>")
									.append(
											"<img>" + "<b>" + list[i].name
													+ "</b>" + "<p>"
													+ "销量："
													+ list[i].sale +" 库存："+list[i].stock + "<br>价格：<strong><font size='5'>￥"+ list[i].price +"</font></strong></p>");
							$div.last().last().find("b").addClass("dish-name");
							$div.last().last().find("div").find("img").attr(
									"src", "upload/"+list[i].picture).addClass(
									"img-rounded").attr("onmouseover","javascript:showDescription(this)").attr("onmouseout","javascript:hideDescription(this)");
							$div.last().last().last().append("<div></div>");

							$div.last().last().find("div").eq(1).addClass(
									"panel-footer");
							$("#main-container div").last().last().append(
									"<button>加入购物车</button>");
							$("#main-container div").last().last().find(
									"button").addClass("btn").addClass(
									"btn-primary").addClass("btn-lg").addClass(
									"btn-block").attr("onclick","javascript:addCart("+list[i].id+",'"+list[i].name+"'"+")");

						}
						if (data.totalItemNumber / data.pageSize <= pageNum) {
							$("#more-button").remove();
							flagSroll = 1;
						}
						$btn.button('reset');
						flagLoad = 0;
					}, "json");
 					//$btn.button('reset')
				}
	$(function() {
		//显示当前导航
		$("#head-li li").eq(1).addClass("active");
		
		$("#more-button").click(getMore
			);
				
				
				
				var nowSelect= $("#hidden-value-dishType").val();
				var selectLenth = $("#dish-select option").length;
				var $select = $("#dish-select");
				for(var i=0;i<selectLenth;i++){
					
					if($select.find("option").eq(i).val() == nowSelect){
						$select.find("option").eq(i).attr("selected", true); 
						break;
					}
				}
				
				
			
					
	});
	//将id为XX的item加入到购物车
	function addCart(id,name) {
		$.post("cartServlet?method=addToCart", { id:id},
		   function(data){
		   if(data=='false'){
		   		var options = {title:'库存不足'};
	   			var modal = $.scojs_modal(options);
	   			modal.show();
		   }else{
				   	$("#cart-num").html(data);
				   	var flag  = 1;
				   	$("#cart-table tr").each(function(){
				   		$this = $(this);
					   	if($this.find(":input").val() == id){
					   		var quantity = $this.find("td").last().html();
					   		quantity = parseInt(quantity); 
					   		$this.find("td").last().html(quantity+1);
					   		flag = 2;
					   	}
					// alert( $(this).find(":input").val());
					});
					if(flag == 1){
						$("#cart-table").append("<tr><input type='hidden' value='"+id+"'><td>"+name+"</td><td>"+1+"</td></tr>");
					}
				}	   	
		   });
	}
	
	
</script>
<style>
.dish-inner {
	display: none;
	position: absolute;
	width: 170px;
	z-index: 20;
	filter: alpha(opacity = 90); /* ie 有效*/
	-moz-opacity: 0.9; /* Firefox  有效*/
	opacity: 0.9; /* 通用，其他浏览器  有效*/
}
}
</style>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/public/head.jspf"%>
	<div class="modal fade" id="modal" style="height:50px">
		<div class="modal-header">
			<a class="close" href="#" data-dismiss="modal">×</a>
			<h3></h3>
		</div>
		<div class="inner"></div>
	</div>
	<div class="container">

		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="btn-group" role="group" aria-label="...">
					<a href="bookServlet?method=setSortAttr&bookCondition=1"
						class="btn btn-default">上新</a> <a
						href="bookServlet?method=setSortAttr&bookCondition=2"
						class="btn btn-default">销量</a> <a
						href="bookServlet?method=setSortAttr&bookCondition=3"
						class="btn btn-default">价格</a>
				</div>
				<form class="navbar-form navbar-right" role="search"
					action="bookServlet?method=searchDish" method="post">
					<input type="hidden" id="hidden-value-dishType"
						value="${bookLikeStr}"> <select class="form-control"
						name="likeStr" id="dish-select">
						<option value="">所有菜式</option>
						<c:forEach items="${dishType}" var="dish">
							<option value="${dish.id }">${dish.name }</option>
						</c:forEach>
					</select>
					<button type="submit" class="btn btn-default">
						<i class="glyphicon glyphicon-search"></i> 搜索
					</button>
				</form>
			</div>
			<div class="panel-body" id="main-container">
				<c:if test="${page.totalPageNumber == 0}">
					<div class="alert alert-warning" role="alert">
						<i class="glyphicon glyphicon-info-sign"></i> 没有找到您要搜索的内容
					</div>
				</c:if>
				<c:forEach items="${page.list}" var="dish">
					<div class="panel panel-default book-dish">
						<div class="panel-body">
							<div class="alert alert-info dish-inner" role="alert">
								描述：${dish.description }</div>
							<img src="upload/${dish.picture }" class="img-rounded"
								onmouseover="javascript:showDescription(this)"
								onmouseout="javascript:hideDescription(this)"> <b
								class="dish-name">${dish.name}</b>
							<p>
								销量：${dish.sale} 库存：${dish.stock} <br> 价格：<strong><font
									size="5">￥${dish.price}</font> </strong>
							</p>

						</div>
						<div class="panel-footer">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								onclick="javascript:addCart(${dish.id},'${dish.name}')">加入购物车</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>



	</div>
	<div class="container">
		<p>
			<c:if test="${page.hasNext}">

				<button type="button" id="more-button" data-loading-text="努力加载中……"
					autocomplete="off" class="btn btn-default btn-lg btn-block">
					<i class="glyphicon glyphicon-repeat"></i> 加载更多...
				</button>
			</c:if>
		</p>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script>
	$("#cart-menu").mouseover(function(){
		
				$("#cart-panel").show();
		});
		
	$("#cart-menu").mouseout(function(){
		$("#cart-panel").hide();
	});
	
	
	
	$(window).scroll( function() {
	
		var height=getClientHeight();
	    var theight=getScrollTop();
	    var rheight=getScrollHeight();
	    var bheight=rheight-theight-height;
	   	if(flagSroll==0 && bheight == 0 && flagLoad ==0){
	   		getMore();
	   	}
		//document.title=bheight;	
	} );

function getClientHeight(){  
    var clientHeight=0;  
    if(document.body.clientHeight&&document.documentElement.clientHeight){  
        var clientHeight=(document.body.clientHeight<document.documentElement.clientHeight)?document.body.clientHeight:document.documentElement.clientHeight;          
    }else{  
        var clientHeight=(document.body.clientHeight>document.documentElement.clientHeight)?document.body.clientHeight:document.documentElement.clientHeight;      
    }  
    return clientHeight;  
}

	//取窗口滚动条高度
	function getScrollTop(){  
	    var scrollTop=0;  
	    if(document.documentElement&&document.documentElement.scrollTop){  
	        scrollTop=document.documentElement.scrollTop;  
	    }else if(document.body){  
	        scrollTop=document.body.scrollTop;  
	    }  
	    return scrollTop;  
	}
	//取文档内容实际高度
	function getScrollHeight(){  
	    return Math.max(document.body.scrollHeight,document.documentElement.scrollHeight);  
	}
	function showDescription(myThis){
		$this = $(myThis);
		$node = $this.parent().find("div").first();
		if($node.css("display") == 'none'){
			$node.show("fast");
		}
		
	}
	function hideDescription(myThis){
		$this = $(myThis);
		$node = $this.parent().find("div").first();
		if($node.css("display") == 'block'){
			$node.hide("fast");
		}
		
	}
</script>
</html>
