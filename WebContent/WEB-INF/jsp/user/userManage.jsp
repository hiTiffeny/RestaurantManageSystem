<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<link rel="stylesheet" href="sources/bootstrap-3.3.4/css/scojs.css" type="text/css"></link>
<link rel="stylesheet" href="sources/myCss/style.css" type="text/css"></link>
<script type="text/javascript" src="sources/bootstrap-3.3.4/js/sco.modal.js"></script>
<script type="text/javascript" src="sources/bootstrap-3.3.4/js/sco.confirm.js"></script>

<script type="text/javascript">
	$(function() {
		//显示当前导航
		$("#left-nav").find("a").eq(2).addClass("active");
		$(".for-password-button").click(function(){
			var $tr = $(this).parent().parent();
			id =   $tr.find(":hidden").val();
			$.post("userServlet?method=forPassword",{id:id},function(data){
			if(data == '1'){
				alert('初始化密码成功（123456）');
			
			}
			});
		});
		
	});
	
	function confirmDel(str) {
		return confirm(str);
	}
</script>

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
					<div class="panel-heading">账户管理</div>
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
									</button>--> <a href="userServlet?method=userAddUI"
									class="btn btn-primary btn-block"><i
										class="glyphicon glyphicon-plus"></i>添加帐号</a>
								</td>
							</tr>
							<tr>

								<th>帐号</th>
								<th>姓名</th>
								<th>密码</th>
								<th>职位</th>
								<th>联系方式</th>
								<th>操作</th>
							</tr>
							<c:forEach items="${page.list }" var="user">
								<tr>
									<input type="hidden" value='${ user.id}'>
									<td>${user.id }</td>
									<td>${user.name }</td>
									<td><button class="btn btn-warning btn-xs for-password-button"> 初始化密码</button></td>
									<td>${user.role.name }</td>
									<td>${user.tell }</td>
									<td>
										
										<a data-trigger="confirm" data-content="确定要删除用户：  ${user.name } 吗？" href="userServlet?method=delUser&id=${user.id}&pageNum=${page.pageNo}"   class="btn btn-danger btn-sm">删除</a>
										 
										 <a
										href="userServlet?method=toModifyUI&id=${user.id}&pageNum=${page.pageNo}"
										class="btn btn-info btn-sm">修改</a>
									</td>
								</tr>
							</c:forEach>

						</table>

						<nav class="text-center">
							<ul class="pagination">
								<li class=" ${page.hasPrev == true?"":"disabled"}"><a
									href="userServlet?method=toUserManageUI&pageNum=1"> <span
										aria-hidden="true">首页</span> </a>
								</li>

								<li class=" ${page.hasPrev == true?"":"disabled"}"><a
									href="userServlet?method=toUserManageUI&pageNum=${page.prevPage }"
									aria-label="Previous"> <span aria-hidden="true">&laquo;上一页</span>
								</a>
								</li>

								<li class="disabled"><a>第 ${page.pageNo } 页 共
										${page.totalPageNumber } 页</a>
								</li>
								<li class=" ${page.hasNext == true?"":"disabled"}"><a
									href="userServlet?method=toUserManageUI&pageNum=${page.nextPage}"
									aria-label="Next"> <span aria-hidden="true">下一页&raquo;</span>
								</a>
								</li>
								<li class=" ${page.hasNext == true?"":"disabled"}"><a
									href="userServlet?method=toUserManageUI&pageNum=${page.totalPageNumber}">
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

