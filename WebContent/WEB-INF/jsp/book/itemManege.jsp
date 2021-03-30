
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<link rel="stylesheet" href="sources/bootstrap-3.3.4/css/scojs.css" type="text/css"></link>
<link rel="stylesheet" href="sources/myCss/style.css" type="text/css"></link>
<script type="text/javascript" src="sources/bootstrap-3.3.4/js/sco.modal.js"></script>
<script type="text/javascript" src="sources/bootstrap-3.3.4/js/sco.confirm.js"></script>
<link rel="stylesheet"
	href="sources/bootstrap-3.3.4/css/webuploader.css" type="text/css">
<script type="text/javascript" src="sources/webuploader/webuploader.js"></script>

<script type="text/javascript">
	$(function() {
		$("#left-nav").find("a").eq(3).addClass("active");
		var oldStock = "100";
		$(".stock-input").focus(function() {
			oldStock = $(this).val();
		});
		$(".stock-input").change(function() {
			var $nowInput = $(this);
			var stock = $(this).val();

			var $parent = $(this).parent().parent();
			var id = $parent.find(":input").first().val();
			$.post("bookServlet?method=stockChange", {
				id : id,
				stock : stock
			}, function(data) {
				if (data == '1') {
				} else {
					alert('修改库存失败');
					$nowInput.val(oldStock);
				}

			});
		});

	});
	function confirmDel(str) {
		return confirm(str);
	}
</script>
<link rel="stylesheet" href="sources/webuploader/upload-style.css"
	type="text/css"></link>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/public/head.jspf"%>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<%@ include file="/WEB-INF/jsp/public/left-nav.jspf"%>
			</div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading">菜单管理</div>
					<div class="panel-body">
						<table
							class="table table-hover table-bordered table-condensed book-manage">
							<tr>
								<td colspan="9">
									<!-- Button trigger modal 
									<button type="button" class="btn btn-primary btn-block"
										data-toggle="modal" data-target="#myModal">
										<i class="glyphicon glyphicon-plus" data-toggle="modal"
											data-target="#myModal"></i> 增加菜单
									</button>--> <a href="bookServlet?method=itemAddUI"
									class="btn btn-primary btn-block"><i
										class="glyphicon glyphicon-plus"></i>增加菜单</a>
								</td>
							</tr>
							<tr>
								<th>编号</th>
								<th>名称</th>
								<th>菜式</th>
								<th>价格(RMB)</th>
								<th>图片</th>
								<th>销量</th>
								<th>库存</th>
								<th>描述</th>
								<th>操作</th>
							</tr>
							<c:forEach items="${page.list }" var="dish">

								<tr>
									<input type="hidden" value='${ dish.id}'>
									<td>${dish.id }</td>
									<td>${dish.name }</td>
									<td>${dish.dishType.name }</td>
									<td>${dish.price }</td>
									<td><img src="upload/${dish.picture }" alt="${dish.name}"
										class="img-rounded"></td>
									<td>${dish.sale }</td>
									<td><input class="stock-input" size="1"
										value="${dish.stock }" style="text-align: center;"></td>
									<td style="width:200px;">${dish.description }</td>
									<td>
										<a data-trigger="confirm" data-content="确定要删除菜单：  ${dish.name} 吗？" href="bookServlet?method=itemDelete&id=${dish.id }&pageNum=${page.pageNo}"   class="btn btn-danger btn-sm">删除</a>
											
										<a
										href="bookServlet?method=itemEditUI&id=${dish.id }&pageNum=${page.pageNo}"
										class="btn btn-info btn-sm">修改</a>
									</td>
								</tr>
							</c:forEach>

						</table>

						<nav class="text-center">
							<ul class="pagination">
								<li class=" ${page.hasPrev == true?"":"disabled"}"><a
									href="bookServlet?method=itemManageUI&pageNum=1"> <span
										aria-hidden="true">首页</span> </a>
								</li>

								<li class=" ${page.hasPrev == true?"":"disabled"}"><a
									href="bookServlet?method=itemManageUI&pageNum=${page.prevPage }"
									aria-label="Previous"> <span aria-hidden="true">&laquo;上一页</span>
								</a>
								</li>

								<li class="disabled"><a>第 ${page.pageNo } 页 共
										${page.totalPageNumber } 页</a>
								</li>
								<li class=" ${page.hasNext == true?"":"disabled"}"><a
									href="bookServlet?method=itemManageUI&pageNum=${page.nextPage}"
									aria-label="Next"> <span aria-hidden="true">下一页&raquo;</span>
								</a>
								</li>
								<li class=" ${page.hasNext == true?"":"disabled"}"><a
									href="bookServlet?method=itemManageUI&pageNum=${page.totalPageNumber}">
										<span aria-hidden="true">末页</span> </a>
								</li>
							</ul>
						</nav>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script type="text/javascript">
	
</script>
</html>
