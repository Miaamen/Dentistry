<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/Den/css/admin.css">
</head>
<body>
	
		<form action="/Den/allJsp/addUser" class="appoint-form" method="POST" enctype="multipart/form-data">
			<div id="htm2">
			<div class="text">				
				<span>姓名：</span><input type="text" class="in" name="appointName">
			</div>
			<div class="text">
				<span>密码：</span><input type="text" class="in" name="appointPassword">
			</div>
			<div class="isAdmin">是否为管理员
				<select name="appointIsAdimin">
					 <option value="true">true</option>
					 <option value="false">false</option>
				</select>
			</div>
			<input type="submit" class="appointBtn" value="添加用户">
			</div>
		</form>
	
</body>
</html>