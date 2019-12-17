<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>注册Sign Up</title>
	<link rel="stylesheet" type="text/css" href="/Den/css/signUp.css">
</head>
<body>
	<form action="/Den/allJsp/signUp" method="post" class="signUp-form">
		<h2>牙科预约管理系统</h2>
		<h2 class="login2">Sign Up</h2>
		<div class="text">
			<input type="text" class="in in1" name="name">
			<span placeholder ="用户名"></span>
		</div>
		<div class="text">
			<input type="password" class="in in2" name="password">
			<span placeholder ="密码"></span>
		</div>
		<div class="check">
			<span class="check-input"><input type="radio" name="identy" value="false" checked>用户</span>
			<span class="check-input"><input type="radio" name="identy" value="true">管理员</span>
		</div>
		<input type="submit" class="signUpBtn" value="注册">
	</form>

	<script type="text/javascript" src="/Den/js/signUp.js"></script>
</body>
</html>