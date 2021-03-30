<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
<head>

<style type="text/css">
.index-middle div {
	line-height: 30px;
	marging: 0;
	margin-top: 12px;
	color: #330000;
}

.index-middle-padding {
	height: 110px;
}
</style>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>

<script type="text/javascript"
	src="sources/bootstrap-3.3.4/js/unslider.min.js"></script>
<link rel="stylesheet" href="sources/grumble.js-master/css/grumble.min.css" type="text/css"></link>

<script type="text/javascript" src="sources/grumble.js-master/js/jquery.grumble.min.js"></script></head>

<body>
	<div class="panel panel-default inner-form"
		style="position: absolute;float:right;z-index: 3000;width:300px;height:300px;left:999px;top:20px; border:1px solid black; background-color: #333333;color:white;">
		<div class="panel-body">
			<form action="mianServlet?method=login"
				onsubmit="return loginCheck()" method="post" id="myform">
				<div class="form-group">
					<label for="exampleInputEmail1">帐号</label> <input type="text"
						class="form-control" name="id" id="input-id" required="required"
						placeholder="Account">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">密码</label> <input
						type="password" name="password" id="password" class="form-control"
						required="required" id="exampleInputPassword1"
						placeholder="Password">
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">验证码</label>
					<div class='row'>
						<div class="col-md-6">
							<input type="text" class="form-control col-md-6"
								name="validation" id='validation' id="exampleInputEmail1"
								value="" required="required" placeholder="Validation">
						</div>
						<div class="col-md-6">
							<a href="javascript:change()"><img class="img-thumbnail"
								id="validateImg" src="mianServlet?method=getRadomPic"> </a>
						</div>
					</div>
				</div>
				<button type="button" id="login-button" data-loading-text="登录中..."
					class="btn btn-primary btn-block" autocomplete="off">登录</button>
				<div class="form-group">
					<a href="register.jsp">注册</a> 
				</div>
			</form>
		</div>
	</div>
	<div class="banner">

		<ul>

			<li style="background-image: url('sources/images/banner1.jpg');">
				<!-- <div class="inner">
					<h1>
						<b>智能餐饮管理系统</b>
					</h1>
				</div> -->
			</li>
			<li style="background-image: url('sources/images/banner2.jpg');"></li>
			<li style="background-image: url('sources/images/banner3.jpg');"></li>
			<li style="background-image: url('sources/images/banner4.jpg');"></li>
		</ul>
	</div>
	<div class="container">
		<div class="row index-middle">
			<div class="col-md-3">
				<div class="panel panel-dafult">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class='glyphicon glyphicon-book'></i> 方便的点餐功能
						</h3>
					</div>
					<div class="panel-body index-middle-padding">
						<p>客户可以根据自己的要求去选择菜品，厨师部会收到你点的菜单。你可以看到菜单的时时状况。</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-waring">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class='glyphicon glyphicon-comment'></i> 便捷的通讯功能
						</h3>
					</div>
					<div class="panel-body index-middle-padding">
						<p>工作人员之间可以互相进行内部通讯，及时得到最新信息。经理可以群发通知、消息给每位员工。</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-waring">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class='glyphicon glyphicon-alert'></i> 安全的预警功能
						</h3>
					</div>
					<div class="panel-body index-middle-padding">
						<p>系统会对所有菜品进行监视，当有菜品库存缺乏时，系统会自动提醒管理员。</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="panel panel-waring">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class='glyphicon glyphicon-apple'></i> 智能的分析功能
						</h3>
					</div>
					<div class="panel-body index-middle-padding">
						<p>管理员可以查看到餐厅的近期运营状况。包括最近的营业额，各个菜品的销售情况等。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>

</body>
<script type="text/javascript">
	function change() {
		$("#validateImg").attr("src",
				"mianServlet?method=getRadomPic&date=" + new Date().getTime());
	}
	$(function() {
		var wid = $(window).width();
		$('.inner-form').css("opacity", 0.9).offset({
			top : 20,
			left : wid - 350
		});

		$('.banner').unslider({
			speed : 500, //  The speed to animate each slide (in milliseconds)
			delay : 8000, //  The delay between slide animations (in milliseconds)
			complete : function() {
			}, //  A function that gets called after every slide animation
			keys : true, //  Enable keyboard (left, right) arrow shortcuts
			dots : true, //  Display dot navigation
			fluid : false
		//  Support responsive design. May break non-responsive designs
		});

		
		
		
		//登录
		var form = $("#myform");
	 $('#login-button').click(function(){
	 		if(form.find("[name='id']").val()=="" || form.find("[name='password']").val()=="" || form.find("[name='validation']").val()==""){
	 			$('#login-button').grumble(
				{
					text: "请输入帐号、密码和验证码", 
					angle: 0, 
					distance: 130, 
					showAfter: 100,
					hideAfter: 2000
				});
	 		}else if(form.find(".has-error").size()>0){
				var text = form.find(".has-error:first").find("label:first").text()+"格式不正确";
				form.find(".has-error:first").find(":input").grumble(
						{
							text: text, 
							angle: 130, 
							distance: 10, 
							showAfter: 100,
							hideAfter: 2000
						}
					);
				form.find(".has-error:first").find(":input").focus();
			}else{
				var btn = $(this).button('loading');
			var id=$('#input-id').val();
			var password=$('#password').val();
			var validation=$('#validation').val();
			$.post("mianServlet?method=loginCheck", {
				id : id,
				password : password,
				validation : validation,
				date:new Date()
			}, function(data) {
				
				if (data == '2') {
					window.location.href="mianServlet?method=login";
				}else if(data == '1'){
					$('#validation').grumble(
						{
							text: '验证码错误', 
							angle: 130, 
							distance: 0, 
							showAfter: 1000,
							hideAfter: 2000
						}
					);
				}else{
					$('#input-id').grumble(
						{
							text: '帐号或密码不正确', 
							angle: 130, 
							distance: 20, 
							showAfter: 1000,
							hideAfter: 2000
						}
					);
				}
				btn.button('reset');
			});
			}
	 
	 		
	 		
			
			
			});
			
			//js验证
			
			
			form.find("[name='password']").on("keyup",function(){
			var the = $(this);
			if(/^.{6,16}$/.test(the.val())){
				the.parents(".form-group:first").removeClass("has-error").addClass("has-success");
			}else{
				the.parents(".form-group:first").addClass("has-error");
			}
			});
			
			form.find("[name='id']").on("keyup",function(){
			var the = $(this);
			if(/^\d{8,12}$/.test(the.val())){
				the.parents(".form-group:first").removeClass("has-error").addClass("has-success");
			}else{
				the.parents(".form-group:first").addClass("has-error");
			}
			});
			
			
			form.find("[name='validation']").on("keyup",function(){
			var the = $(this);
			if(/^.{4}$/.test(the.val())){
				the.parents(".form-group:first").removeClass("has-error").addClass("has-success");
			}else{
				the.parents(".form-group:first").addClass("has-error");
			}
			});
			
			
			
		
		
				

	});
	
	
	
				
	
		
</script>
</html>
