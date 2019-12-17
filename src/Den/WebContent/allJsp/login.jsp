<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="/Den/css/login.css">
</head>
<body>
	<form action="/Den/allJsp/login" method="post" class="login-form">
		<h2>牙科预约管理系统</h2>
		<h2 class="login2">Login</h2>
		<div class="text">
			<input type="text" class="in" name="name">
			<span placeholder ="用户名"></span>
		</div>
		<div class="text">
			<input type="password" class="in" name="password">
			<span placeholder ="密码"></span>
		</div>
		<div class="check">
			<span class="check-input"><input type="radio" name="identy" value="false" checked>用户</span>
			<span class="check-input"><input type="radio" name="identy" value="true">管理员</span>
		</div>
		<input type="submit" class="loginBtn" value="登陆">

		<div class="signUp">
			没有注册过账号？<a href="/Den/allJsp/signUp.jsp">立即注册</a>
		</div>
	</form>
	<script type="text/javascript" src="/Den/js/login.js"></script>
</body>
</html>