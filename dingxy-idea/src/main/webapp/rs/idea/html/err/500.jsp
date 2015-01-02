<%@page import="org.slf4j.LoggerFactory"%>
<%@page import="org.slf4j.Logger"%>
<%@page import="com.dingxy.idea.domain.IdeaExcepton"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>丁小样软件工作室</title>
<%
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ request.getContextPath();

	Logger logger = LoggerFactory.getLogger("com.dingxy.idea.ctrl");
%>
<link href="<%=basePath%>/rs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="bootstrap/js/html5shiv-3.7.2.min.js"></script>
<script src="bootstrap/js/respond-1.4.2.min.js"></script>
<![endif]-->
<style type="text/css">
.main {
	margin: 0 auto;
	float: none;
}

.error_ex {
	text-align: center;
}

.error_ex h1 {
	color: #28B779;
	font-size: 140px;
	font-weight: bold;
	padding: 50px 0;
}
</style>
</head>
<%
	String message = "Oops! Something went wrong.";

	try {
		if(exception.getCause() instanceof IdeaExcepton) {
	IdeaExcepton err = (IdeaExcepton)exception.getCause();
	
	message = err.getResponseMsg() + "[" + err.getResponseCode() + "]";
		} else {
	message = exception.getMessage();
		}
	} catch (Exception e) {
		logger.error(e.getMessage(), e);
	
		message = "Oops! Something went wrong.";
	}
%>
<body>
	<div class="row">
		<div class="col-md-11 main">
			<div class="page-header">
				<h1>Error 500</h1>
			</div>
			<div class="error_ex">
				<h1>500</h1>
				<h3><%= message%></h3>
			</div>
		</div>
	</div>
</body>
</html>