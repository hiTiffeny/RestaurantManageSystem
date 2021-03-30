<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<script type="text/javascript">
	$(function() {
		//显示当前导航
		$("#left-nav").find("a").eq(1).addClass("active");
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
					<div class="panel-heading">密码修改</div>
					<div class="panel-body">
						<c:if test="${!empty message}">
							<div class="alert alert-warning" role="alert">
								<i class="glyphicon glyphicon-info-sign"></i>${message }
							</div>
						</c:if>

						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10">
								<form id='myform' class="form-horizontal"
									action="userServlet?method=editPassword" method="post">
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label"
											required="required">原来的密码</label>
										<div class="col-sm-10">
											<input type="password" name="oldPassword"
												class="form-control" id="inputPassword3" required="required"
												placeholder="Password">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">新的密码</label>
										<div class="col-sm-10">
											<input type="password" name="password" class="form-control"
												required="required" id="inputPassword3"
												placeholder="Password">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">确认新密码</label>
										<div class="col-sm-10">
											<input type="password" name='repassword' class="form-control"
												required="required" id="inputPassword3"
												placeholder="Password">
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-primary">提交</button>
										</div>
									</div>
								</form>

							</div>
							<div class="col-md-2"></div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script type="text/javascript">
	var form = $('#myform');

	form.submit(function() {

		if (form.find(".has-error").size() > 0) {
			alert(form.find(".has-error:first").find("label:first").text()
					+ "输入不正确");
			form.find(".has-error:first").find(":input").focus();
			return false;
		} else {
			return true;
		}

	});
	form.find("[name='oldPassword']").on("keyup",function() {
		var the = $(this);
		if (/^\w{3,10}$/.test(the.val())) {
			the.parents(".form-group:first").removeClass("has-error")
					.addClass("has-success");
		} else {
			the.parents(".form-group:first").addClass("has-error");
		}
	});
	form.find("[name='password']").on(
			"keyup",
			function() {
				var the = $(this);
				if (/^\w{3,10}$/.test(the.val())) {
					the.parents(".form-group:first").removeClass("has-error")
							.addClass("has-success");
				} else {
					the.parents(".form-group:first").addClass("has-error");
				}
			});

	form.find("[name='password']").on(
			"keyup",
			function() {
				var the = $(this);
				if (/^\w{3,10}$/.test(the.val())) {
					the.parents(".form-group:first").removeClass("has-error")
							.addClass("has-success");
				} else {
					the.parents(".form-group:first").addClass("has-error");
				}
			});

	form.find("[name='repassword'],[name='password']").on(
			"keyup",
			function() {
				var the = form.find("[name='repassword']");
				if (the.val() == form.find("[name='password']").val()) {
					the.parents(".form-group:first").removeClass("has-error")
							.addClass("has-success");
				} else {
					the.parents(".form-group:first").addClass("has-error");
				}
			});
</script>
</html>

