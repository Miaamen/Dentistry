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
		<form action="/Den/allJsp/doctor" method="POST" enctype="multipart/form-data">
		<div class="tool">
			<span class="search"><input type="text" name="">
			<button class="searchBtn"><i class="fa fa-search" aria-hidden="true"></i>搜索</button></span>	
			<button class="selectBtn">按姓名查找</button>
		</div>
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