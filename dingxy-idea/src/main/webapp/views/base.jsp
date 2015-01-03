<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1.0,minimum-scale=1,maximum-scale=1,user-scalable=no">
<meta content="yes" name="apple-mobile-web-app-capable">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="email=no">
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<link href="rs/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="rs/js/html5shiv-3.7.2.min.js"></script>
<script src="rs/js/respond-1.4.2.min.js"></script>
<![endif]-->

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?d931def62b8ff61a89cadf50cf8008eb";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

<script src="rs/bootstrap/js/jquery-1.11.1.min.js"></script>
<script src="rs/bootstrap/js/bootstrap.min.js"></script>
<script>
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
$(document).ajaxSend(function(e, xhr, options) {
	xhr.setRequestHeader(header, token);
});
</script>