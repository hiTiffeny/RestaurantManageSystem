<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


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
</head>


<body>
	<div style="width:800px;margin:20px auto 40px;">
		<script type="text/plain" id="editor" style="width:100%;height:360px;"></script>
	</div>

</body>
<script type="text/javascript">
        um = UM.getEditor('editor', {


        });


</script>
</html>
