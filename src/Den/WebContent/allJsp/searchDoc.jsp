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
	<div id="htm4">
		<div class="tool">
			<form action="/Den/allJsp/doctor" method="post" class="login-form">
				<input type="text" class="searchName" id="searchName" name="searchName">
				<button class="selectBtn" type="submit">按姓名查找</button>
			</form>
		</div>
		<form action="/Den/allJsp/doctor" method="POST" enctype="multipart/form-data">
		<table id="doc-table">
			<thead>
				<tr>
					<th>序号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>年龄</th>
					<th>个人信息</th>
					<th>删除</th>
				</tr>
			</thead>				
			<tbody class="tbody">
				<c:forEach items="${DoctorList}" var="DocList">
					<tr>
						<td>${DocList.id}</td>
						<td>${DocList.name}</td>
						<td>${DocList.sex}</td>
						<td>${DocList.age}</td>
						<td>${DocList.message}</td>
						<td><a href="/Den/allJsp/deleteDoc?ond=${DocList.id}">删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</form>
	</div>
</body>
</html>