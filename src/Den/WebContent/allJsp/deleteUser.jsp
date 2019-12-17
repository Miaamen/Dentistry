<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/Den/css/admin.css">
</head>
<body>
	<div id="htm1">
		<div class="tool">
			<form action="/Den/allJsp/searchUser" method="POST" enctype="multipart/form-data">
				<input type="text" class="search" name="searchName">
				<button class="selectBtn" type="submit">按姓名查找</button>
			</form>
		</div>
		<form action="/Den/allJsp/appointTime" method="POST" enctype="multipart/form-data">
			<table id="table">
				<thead>
					<tr>
						<th>姓名</th>
						<th>密码</th>
						<th>是否为管理员</th>
						<th>注销</th>
					</tr>
				</thead>
				<tbody class="tbody">
					<c:forEach items="${signUpList}" var="signList">
						<tr>
							<td>${signList.name}</td>
							<td>${signList.password}</td>
							<td>${signList.isAdmin}</td>
							<td><a href="/Den/allJsp/deleteUser?onc=${signList.id}">删除</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>  
	</div>	
</body>
</html>