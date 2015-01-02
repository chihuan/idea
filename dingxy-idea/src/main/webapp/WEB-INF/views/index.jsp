<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>

<!DOCTYPE html>
<html lang="zh-CN" class="lockscreen">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1.0,minimum-scale=1,maximum-scale=1,user-scalable=no">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no">

<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
	
<title>丁小样软件工作室</title>

<link href="rs/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="rs/js/html5shiv-3.7.2.min.js"></script>
<script src="rs/js/respond-1.4.2.min.js"></script>
<![endif]-->

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
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?d931def62b8ff61a89cadf50cf8008eb";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
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
	<script src="rs/bootstrap/js/jquery-1.11.1.min.js"></script>
	<script src="rs/bootstrap/js/bootstrap.min.js"></script>
	<script src="rs/idea/js/index.js"></script>
</body>
</html>