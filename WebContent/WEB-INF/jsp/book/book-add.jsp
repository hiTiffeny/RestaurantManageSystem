<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>

<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/WEB-INF/jsp/public/commons.jspf"%>

<link rel="stylesheet"
	href="sources/bootstrap-3.3.4/css/webuploader.css" type="text/css">
<script type="text/javascript" src="sources/webuploader/webuploader.js"></script>
<script type="text/javascript">
	$(function() {
		//显示当前导航
			$("#left-nav").find("a").eq(3).addClass("active");
	});
</script>
<link rel="stylesheet" href="sources/webuploader/upload-style.css"
	type="text/css"></link>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/public/head.jspf"%>
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<ul class="list-group">
					<%@ include file="/WEB-INF/jsp/public/left-nav.jspf"%>
				</ul>
			</div>
			<div class="col-md-10">
				<div class="panel panel-default">
					<div class="panel-heading">${ (dish.id == null)?
						'新增菜单':'修改菜单'}</div>
					<div class="panel-body">
						<form id="rform"
							action="bookServlet?method=${ (dish.id == null)? 'addDish':'itemEdit'}"
							method="post" class="form-horizontal">
							<input name="id" value="${dish.id }" type="hidden">
							<input name="pageNum" value="${param.pageNum }" type="hidden">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">名称</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="name"  required="required"
										id="inputEmail3" placeholder="name" value="${dish.name}">
								</div>
							</div>





							<div class="form-group">
								<input type="hidden" id="hidden-value-dishType"
									value="${dish.type_id}"> <label for="inputEmail3"
									class="col-sm-2 control-label">所属菜式</label>
								<div class="col-sm-10">
									<select class="form-control" name="type_id" id="dish-select">
										<option value="1">请选择</option>
										<c:forEach items="${dishType }" var="type">
											<option value="${type.id }">${type.name }</option>
										</c:forEach>

									</select>
								</div>
							</div>

							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">价格</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="price" required="required"
										id="inputEmail3" placeholder="price" value="${dish.price }">
								</div>
							</div>



							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">图片</label>
								<div class="col-sm-10">
									<input type="hidden" name="picture" id="picture"
										value="${dish.picture }">
									<!--dom结构部分-->
									<div id="uploader-demo">
										<!--用来存放item-->
										<div id="fileList" class="uploader-list">
											<c:if test="${!empty dish}">
												<div id="${dish.id}" class="file-item thumbnail">
													<img src='upload/${dish.picture }' style="height:100px">
													<div class="info">${dish.picture}</div>
												</div>
											</c:if>
										</div>
										<div id="filePicker">选择图片</div>
									</div>

								</div>

							</div>


							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">描述</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="description"
										id="inputEmail3" placeholder="description"
										value='${dish.description }'>
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


	
	<c:if test="${empty dish.picture}">
		<input type="hidden" id="uuid" value="${UUID}">
	</c:if>
	<c:if test="${!empty dish.picture}">
		<input type="hidden" id="uuid" value="${fn:substring(dish.picture,0,36)}">
	</c:if>

	

</body>
</html>
<script type="text/javascript">
	$(function() {
		var nowSelect = $("#hidden-value-dishType").val();
		var selectLenth = $("#dish-select option").length;
		var $select = $("#dish-select");
		for ( var i = 0; i < selectLenth; i++) {
			if ($select.find("option").eq(i).val() == nowSelect) {
				$select.find("option").eq(i).attr("selected", true);
				break;
			}
		}

		// 图片上传demo
		jQuery(function() {
			var $ = jQuery, $list = $('#fileList'),
			// 优化retina, 在retina下这个值是2
			ratio = window.devicePixelRatio || 1,

			// 缩略图大小
			thumbnailWidth = 100 * ratio, thumbnailHeight = 100 * ratio,

			// Web Uploader实例
			uploader;

			// 初始化Web Uploader
			uploader = WebUploader.create({

				// 自动上传。
				auto : true,

				// swf文件路径
				swf : 'sources/webuploader/Uploader.swf',

				// 文件接收服务端。
				server : 'uploadServlet',

				// 选择文件的按钮。可选。
				// 内部根据当前运行是创建，可能是input元素，也可能是flash.
				pick : '#filePicker',

				// 只允许选择文件，可选。
				accept : {
					title : 'Images',
					extensions : 'gif,jpg,jpeg,bmp,png',
					mimeTypes : 'image/*'
				}

			});

			// 当有文件添加进来的时候
			uploader
					.on(
							'fileQueued',
							function(file) {

								file.name = $('#uuid').val()
										+ file.name.substr(file.name
												.indexOf("."));
								$('#picture').val(file.name);

								var $li = $('<div id="' + file.id + '" class="file-item thumbnail">'
										+ '<img>'
										+ '<div class="info">'
										+ file.name + '</div>' + '</div>'), $img = $li
										.find('img');

								$list.append($li);

								if (($('#fileList div').length) > 2) {
									$('#fileList div').first().remove();
								}

								// 创建缩略图
								uploader.makeThumb(file, function(error, src) {
									if (error) {
										$img.replaceWith('<span>不能预览</span>');
										return;
									}

									$img.attr('src', src);
								}, thumbnailWidth, thumbnailHeight);
							});

			// 文件上传过程中创建进度条实时显示。
			uploader.on('uploadProgress', function(file, percentage) {
				var $li = $('#' + file.id), $percent = $li
						.find('.progress span');

				// 避免重复创建
				if (!$percent.length) {
					$percent = $('<p class="progress"><span></span></p>')
							.appendTo($li).find('span');
				}

				$percent.css('width', percentage * 100 + '%');
			});

			// 文件上传成功，给item添加成功class, 用样式标记上传成功。
			uploader.on('uploadSuccess', function(file) {

				//alert(file.name);//=====================================================================

				$('#' + file.id).addClass('upload-state-done');
			});

			// 文件上传失败，现实上传出错。
			uploader.on('uploadError', function(file) {
				var $li = $('#' + file.id), $error = $li.find('div.error');

				// 避免重复创建
				if (!$error.length) {
					$error = $('<div class="error"></div>').appendTo($li);
				}

				$error.text('上传失败');
			});

			// 完成上传完了，成功或者失败，先删除进度条。
			uploader.on('uploadComplete', function(file) {
				$('#' + file.id).find('.progress').remove();
			});
		});
		
		
		
		
		
		
		var form = $("#rform");
    	form.submit(function(){
    	
			if(form.find(".has-error").size()>0){
				alert(form.find(".has-error:first").find("label:first").text()+"格式不正确");
				form.find(".has-error:first").find(":input").focus();
				return false;
			}else{
				return true;
			}
			
		});
		
		
		form.find("[name='name']").on("keyup",function(){
			var the = $(this);
			if(/^.{1,7}$/.test(the.val())){
				the.parents(".form-group:first").removeClass("has-error").addClass("has-success");
			}else{
				the.parents(".form-group:first").addClass("has-error");
			}
		});
		
		form.find("[name='price']").on("keyup",function(){
			var the = $(this);
			if(/^[0-9]+\.{0,1}[0-9]{0,2}$/.test(the.val())){
				the.parents(".form-group:first").removeClass("has-error").addClass("has-success");
			}else{
				the.parents(".form-group:first").addClass("has-error");
			}
		});
		
		
		
		
		
		
		
		

	});
	
	
	
	
	
</script>
