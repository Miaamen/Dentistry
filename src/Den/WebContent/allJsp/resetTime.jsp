<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>appointTime</title>
	<link rel="stylesheet" type="text/css" href="/Den/css/admin.css">
</head>
<body>
	<div id="htm9">
		<form action="/Den/allJsp/appointTime" method="POST" enctype="multipart/form-data">
			<div class="tool">
				<span class="search"><input type="text" name=""><button class="searchBtn"><i class="fa fa-search" aria-hidden="true"></i>搜索</button></span>	
				<button class="selectBtn">按姓名查找</button>
				<!--<button class="selectBtn">按预约时间查找</button>-->
			</div>
			<table id="table">
				<thead>
					<tr>					
						<th>医生	</th>
						<th class="timeSet">周一上午</th>
						<th class="timeSet">周一下午</th>
						<th class="timeSet">周二上午</th>
						<th class="timeSet">周二下午</th>
						<th class="timeSet">周三上午</th>
						<th class="timeSet">周三下午</th>
						<th class="timeSet">周四上午</th>
						<th class="timeSet">周四下午</th>
						<th class="timeSet">周五上午</th>
						<th class="timeSet">周五下午</th>
						<th class="timeSet">周六上午</th>
						<th class="timeSet">周六下午</th>
						<th class="timeSet">周日上午</th>
						<th class="timeSet">周日下午</th>
						<th>状态</th>
					</tr>
				</thead>
				<tbody class="tbody">
					<c:forEach items="${doctorList}" var="docList">
						<tr>
							<td>${docList.doctor}</td>
							<td>${docList.monup}</td>
							<td>${docList.mondown}</td>
							<td>${docList.tuesup}</td>
							<td>${docList.tuesdown}</td>
							<td>${docList.wedup}</td>
							<td>${docList.weddown}</td>
							<td>${docList.thurup}</td>
							<td>${docList.thurdown}</td>
							<td>${docList.friup}</td>
							<td>${docList.fridown}</td>
							<td>${docList.satup}</td>
							<td>${docList.satdown}</td>
							<td>${docList.sunup}</td>
							<td>${docList.sundown}</td>
							<td><a href="/Den/allJsp/resetTime?onb=${docList.id}">重置</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>