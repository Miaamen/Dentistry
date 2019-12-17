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
	<div id="htm5">
			<form action="/Den/allJsp/addDoctor" class="appoint-form" method="POST" enctype="multipart/form-data">
				<div class="text">				
					<span>医生姓名：</span><input type="text" class="in" name="docName">
				</div>
				
				<div class="appoTime">医生性别：
					<select name="docSex">
					    <option value="male">男</option>
					  	<option value="female">女</option>
					</select>
				</div>
				<div class="text">
					<span>医生年龄：</span><input type="text" class="in" name="docAge">
				</div>
				<div class="text">
					<span>个人信息：</span><input type="text" class="in" name="docMessage">
				</div>
				<input type="submit" class="appointBtn" value="添加医生">
			</form>
		</div>
	</div>	
</body>
</html>