<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>
<link rel="stylesheet"
	href="sources/umeditor1_2_2-utf8-jsp/themes/default/css/umeditor.css"
	type="text/css"></link>
<script type="text/javascript"
	src="sources/umeditor1_2_2-utf8-jsp/umeditor.config.js"></script>
<script type="text/javascript"
	src="sources/umeditor1_2_2-utf8-jsp/umeditor.min.js"></script>
<script type="text/javascript"
	src="sources/umeditor1_2_2-utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
	$(function() {
		um = UM.getEditor('editor', {});

	});
</script>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/public/head.jspf"%>
	<div class="container ">
		<div class="row">

			<div class="col-md-10">
				<div class="panel panel-primary" id="chat-window"
					style="display: none;width:777px;">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-3">
								<div class="btn-group" role="group">
									<input value="0" type="hidden" id="user-id"> <b
										id="user-name">null</b>

								</div>
							</div>
							<div class="col-md-7"></div>
							<div class="col-md-2">
								<button class="btn btn-default btn-block"
									id="close-chart-window">
									<i class="glyphicon glyphicon-remove"></i>
								</button>
							</div>

						</div>

					</div>
					<div class="panel-body" style="height: auto;padding:0">
						<div style="height: 350px; overflow: scroll;padding-left:20px;">
							<div id="chart-content"></div>
						</div>
						<div style="height: auto;">
							<div style="width:100%;">
								<script type="text/plain" id="editor"
									style="width:773px;height:100px;"></script>
							</div>
							<div class="row" style="padding-top: 3px;">
								<div class="col-md-10"></div>
								<div class="col-md-2">
									<button class="btn btn-primary btn-block" id='send-button'>发送</button>
								</div>
							</div>
						</div>

					</div>
				</div>

				<div class="panel panel-default" id="message-list-window">
					<div class="panel-heading">
						<h3 class="panel-title">消息记录</h3>
					</div>
					<div class="panel-body" style="height: 600px;">
						<iframe id="messageIframe"
							src="messageServlet?method=getMessageFrame" frameborder="0"
							height="100%" width="100%"></iframe>
					</div>
				</div>

			</div>

			<div class="col-md-2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">好友</h3>
					</div>
					<div class="panel-body" style="overflow: scroll;height: 500px;">
						<ul class="list-group">
							<button type="button"
								class="btn btn-default btn-xs btn-block list-group-item user-list"
								userid="all">所有人</button>
							<c:forEach items="${userList}" var="user">
								<button type="button"
									class="list-group-item btn btn-default btn-xs btn-block user-list"
									userid="${user.id }">
									<i class="glyphicon glyphicon-user"></i> ${user.name}
								</button>

							</c:forEach>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/jsp/public/foot.jspf"%>
</body>
<script type="text/javascript">
	var timer = null;

	function ajaxStart() {
		var id = $('#user-id').val();
		if (id == 0) {
			clearInterval(timer);
		}
		$.post('messageServlet?method=getChatMessage', {
			id : id
		}, function(data) {
			if (data != "" && data != null) {
				var name = data.userFrom.name;
				var time = data.dateStr;
				var returnContent = data.context;
				var sendStr = "<p>" + time + " [ " + name + " ]</p>" + "<pre>"
						+ returnContent + "</pre>";
				$("#chart-content").append(sendStr);

				var height = $("#chart-content").height();
				$("#chart-content").parent().scrollTop(height + 100);
			}

		}, "json");
	}

	$(".user-list").click(function() {
		$("#editor").html("");
		$this = $(this);
		var name = $this.html();
		var id = $this.attr('userid');
		clearInterval(timer);
		$('#chat-window').hide(function() {
			$('#user-name').html(name);
			$('#user-id').val(id);
			$("#chart-content").html("");
			timer = setInterval(ajaxStart, 2000);

		});

		$('#chat-window').show("normal", "linear", function() {
			$('#message-list-window').hide("normal", "linear");
		});

	});

	$('#close-chart-window').click(
			function() {
				$('#chat-window').hide(
						"normal",
						function() {
							$('#messageIframe').attr("src",
									"messageServlet?method=getMessageFrame");
							$('#message-list-window').show("normal", "linear");
						});

				clearInterval(timer);
			});

	$("#send-button").click(sendMessage);

	$(window).keydown(function(event) {
		if (event.keyCode == 13) {
			sendMessage();
		}
	});

	function sendMessage() {
		var content = um.getContent().trim();
		var id = $('#user-id').val().trim();
		var args = {
			id : id,
			context : content
		};
		var url = "messageServlet?method=sendMessage";
		$.post(url, args, function(data) {
			var name = data.userFrom.name;
			var time = data.dateStr;
			var returnContent = data.context;
			
			var sendStr = "<p>" + time + " [ " + name + " ]</p>" + "<pre>"
					+ returnContent + "</pre>";
			$("#chart-content").append(sendStr);
			$("#editor").html("");
			var height = $("#chart-content").height();
			$("#chart-content").parent().scrollTop(height);
		}, "json");
	}
</script>

</html>

