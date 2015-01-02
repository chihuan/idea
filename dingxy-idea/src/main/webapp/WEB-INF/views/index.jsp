<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>

<!DOCTYPE html>
<html lang="zh-CN" class="lockscreen">
<head>

<jsp:include page="base.jsp" />
	
<title>丁小样软件工作室</title>

<link rel="stylesheet" href="rs/lockscreen/css/lockscreen.css">

<style type="text/css">
.center {
	width: 600px;
	height: 275px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -188px;
	margin-left: -300px;
}

@media screen and (max-width: 480px) {
	.center {
		width: 320px;
		margin-left: -160px;
	}
}
</style>
</head>
<body>
	<div class="center" >
		<div id="time" class="headline text-center">10:00:04 PM</div>

		<div class="lockscreen-name">丁小样</div>

		<div class="lockscreen-item">
			<div class="lockscreen-image">
				<img alt="user image" src="rs/lockscreen/img/avatar5.png">
			</div>

			<div class="lockscreen-credentials">
				<div class="input-group">
					<input id="passwd" type="password" placeholder="password" class="form-control">
					<div class="input-group-btn">
						<button id="login" type="submit" class="btn btn-flat">
							<i class="glyphicon glyphicon-chevron-right"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="rs/idea/js/index.js"></script>
</body>
</html>
