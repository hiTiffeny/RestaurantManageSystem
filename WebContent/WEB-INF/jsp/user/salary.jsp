<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<link rel="stylesheet"
	href="sources/bootstrap-3.3.4/css/bootstrap-datetimepicker.min.css"
	type="text/css"></link>
<script type="text/javascript"
	src="sources/bootstrap-3.3.4/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
	src="sources/bootstrap-3.3.4/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(function() {
		//显示当前导航
		$("#left-nav").find("a").eq(4).addClass("active");

		$('.form_date').datetimepicker({
			language : 'zh-CN',
			weekStart : 0,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 3,
			minView : 3,
			maxView : 3,
			forceParse : 0
		});
		$('#datetimepicker').datetimepicker('setStartDate', '2015-01-01');
		$('#date-m')
				.change(
						function() {
							var date = $('#dtp_input2').val();
							window.location.href = "userServlet?method=toSalaryUI&date="
									+ date;

						});
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
					<div class="panel-heading">
						<div class="row">

							<div class="col-md-4">

								<div class="input-group date form_date col-md-10"
									id="datetimepicker" data-date="${salary_date }"
									data-date-format="yyyy年MM" data-link-field="dtp_input2"
									data-link-format="yyyy-mm-dd">
									<input class="form-control" id="date-m" type="text"
										value="${(salary_date == null)?'请选择日期':salary_date_f }"
										readonly> <span class="input-group-addon"><span
										class="glyphicon glyphicon-remove"></span>
									</span> <span class="input-group-addon"><span
										class="glyphicon glyphicon-calendar"></span>
									</span>
								</div>
								<input type="hidden" id="dtp_input2" value="" />

							</div>
						</div>
					</div>
					<div class="panel-body">
						<table class="table table-striped book-manage table-hover">
								<tr>
									<th>账户</th>
									<th>姓名</th>
									<th>当月业绩</th>
								</tr>	
							<c:forEach items="${salaryOpe.userSalaryList }" var="userSalary">
								<tr>
									<td>${userSalary.id}</td>
									<td>${userSalary.name}</td>
									<td>${userSalary.monthGet}</td>
								</tr>
								
							</c:forEach>
						</table>
						
						<nav class="text-center">
							<ul class="pagination">
								<li class=" ${salaryOpe.userPage.hasPrev == true?"":"disabled"}"><a
									href="userServlet?method=toSalaryUI&pageNo=1"> <span
										aria-hidden="true">首页</span> </a>
								</li>

								<li class=" ${salaryOpe.userPage.hasPrev == true?"":"disabled"}"><a
									href="userServlet?method=toSalaryUI&pageNo=${salaryOpe.userPage.prevPage }"
									aria-label="Previous"> <span aria-hidden="true">&laquo;上一页</span>
								</a>
								</li>

								<li class="disabled"><a>第 ${salaryOpe.userPage.pageNo } 页 共
										${salaryOpe.userPage.totalPageNumber } 页</a>
								</li>
								<li class=" ${salaryOpe.userPage.hasNext == true?"":"disabled"}"><a
									href="userServlet?method=toSalaryUI&pageNo=${salaryOpe.userPage.nextPage}"
									aria-label="Next"> <span aria-hidden="true">下一页&raquo;</span>
								</a>
								</li>
								<li class=" ${salaryOpe.userPage.hasNext == true?"":"disabled"}"><a
									href="userServlet?method=toSalaryUI&pageNo=${salaryOpe.userPage.totalPageNumber}">
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
</html>

