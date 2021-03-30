<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<script type="text/javascript">
	$(function() {
		//显示当前导航
	$("#left-nav").find("a").eq(0).addClass("active");
	});
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
					<div class="panel-heading">个人信息</div>
					<div class="panel-body">
						<table class="table table-striped">
						 <tr>
							 <th>帐号</th>
							 <td>${user.id }</td>
						 </tr>
						 <tr>
							 <th>姓名</th>
							 <td>${user.name }</td>
						 </tr>
						 <tr>
							 <th>类型</th>
							 <td>${user.role.name }</td>
						 </tr>
						  <tr>
							 <th>联系方式</th>
							 <td>${user.tell }</td>
						 </tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
</html>

