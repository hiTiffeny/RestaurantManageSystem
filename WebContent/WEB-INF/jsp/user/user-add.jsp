<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<script type="text/javascript">
	$(function() {
		//显示当前导航
		$("#left-nav").find("a").eq(2).addClass("active");

		var nowSelect = $("#select-value").val();
		var selectLenth = $("#dish-select option").length;
		var $select = $("#dish-select");
		for ( var i = 0; i < selectLenth; i++) {

			if ($select.find("option").eq(i).val() == nowSelect) {
				$select.find("option").eq(i).attr("selected", true);
				break;
			}
		}

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
					<div class="panel-heading">增加账户</div>
					<div class="panel-body">
						<form id='rform' class="form-horizontal" action="userServlet?method=${(account == null)?'addUser':'editUser' }"
							method="post">
							<input type="hidden" name="id" value="${account.id }">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
								<div class="col-sm-10">
									<input type="text" name="name" id="name" required="required"
										value="${account.name}" class="form-control" id="inputEmail3"
										placeholder="name">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">类型</label>
								<div class="col-sm-10">
									<input type="hidden" id="select-value" value="${account.type }">
									<input type="hidden" name="pageNum" value="${param.pageNum }">
									
									<select name="type" class="form-control" id="dish-select">
										<c:if test="${empty account }">
											<option value="2">请选择岗位</option>
										</c:if>

										<c:forEach items="${roles }" var="role">
											<option value="${role.id }">${role.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">联系方式</label>
								<div class="col-sm-10">
									<input type="text" id="tell" name="tell" required="required"
										value="${account.tell }" class="form-control" id="inputEmail3"
										placeholder="tell">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-primary">提交</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script type="text/javascript">

	var form = $("#rform");
    	form.submit(function(){
    	
			if(form.find(".has-error").size()>0){
				alert(form.find(".has-error:first").find("label:first").text()+" 格式不正确");
				form.find(".has-error:first").find(":input").focus();
				return false;
			}else{
				return true;
			}
			
		});
		
	form.find("[name='name']").on("keyup",function(){
			var the = $(this);
			if(/^[\u4e00-\u9fa5]{2,3}$/.test(the.val())){
				the.parents(".form-group:first").removeClass("has-error").addClass("has-success");
			}else{
				the.parents(".form-group:first").addClass("has-error");
			}
		});
	form.find("[name='tell']").on("keyup",function(){
			var the = $(this);
			if(/^\d{11}$/.test(the.val())){
				the.parents(".form-group:first").removeClass("has-error").addClass("has-success");
			}else{
				the.parents(".form-group:first").addClass("has-error");
			}
		});
</script>
</html>

