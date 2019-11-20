<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<title>这个.. 页面没有找到！！！</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	background: #efefef;
	font-family: Georgia, Times, Verdana, Geneva, Arial, Helvetica,
		sans-serif;
}

div#mother {
	margin: 0 auto;
	width: 943px;
	height: 572px;
	position: relative;
}

div#errorBox {
	background: url(404_bg.png) no-repeat top left;
	width: 943px;
	height: 572px;
	margin: auto;
}

div#errorText {
	color: #39351e;
	padding: 146px 0 0 446px
}

div#errorText p {
	width: 303px;
	font-size: 14px;
	line-height: 26px;
}

div.link { 
	height: 50px;
	width: 145px;
	float: left;
}

div#home {
	margin: 20px 0 0 444px;
}

div#contact {
	margin: 20px 0 0 25px;
}

h1 {
	font-size: 40px;
	margin-bottom: 35px;
}
</style>
<script type="text/javascript">
	var i = 9;
	function bload() {
		setInterval("index()", 1000);
	}

	function index() {
		document.getElementById("indexdiv").innerHTML = i;
		if (i <= 1) {
			window.location = "${path}/";
		}
		i--;

	}
</script>


</head>
<body>
<h1>登录成功</h1>
</body>
</html>