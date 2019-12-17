<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>NoDeal</title>
	<link rel="stylesheet" type="text/css" href="/Den/css/admin.css">
</head>
<body>
	<div id="htm7">
		<div class="tool">
			<form action="/Den/allJsp/NoDeal" method="post" class="login-form">
				<input type="text" class="searchName" id="searchName" name="searchName">
				<button class="selectBtn" type="submit">按姓名查找</button>
			</form>
		</div>
				<table id="table" border="1">
					<thead>
						<tr>
							<th>序号	</th>
							<th>姓名	</th>
							<th>电话	</th>
							<th>预约时间</th>
							<th>预约医生</th>
							<th>状态</th>
						</tr>
					</thead>
					<tbody class="tbody">
						<c:forEach items="${appointList}" var="list">
							<c:choose>
								<c:when test="${list.isDeal==null}">
									<tr>
										<td>${list.orderNumber}</td>
										<td>${list.name}</td>
										<td>${list.telephone}</td>
										<td>${list.appointTime}</td>
										<td>${list.appointDoctor}</td>
										<td><a href="/Den/allJsp/updataAppo?ona=${list.orderNumber}">处理<i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a></td>
									</tr>
								</c:when>					
							</c:choose>
						</c:forEach>
					</tbody>				
				</table>	
			
			<!--<div class="page">
				<div>
				
				<c:if test="${page!=1}">
					<a class="prev"  href="/Dentistry/allJsp/admin?page=${page-1}">&lt;&lt;</a> 
				</c:if>
					
					<span class="current">${page}</span> 
					
					<c:if test="${(page+1)<allNum}">
						<a class="num" href="/Dentistry/allJsp/admin?page=${page+1}">${page+1}</a>
					</c:if>
					
					<c:if test="${(page+2)<allNum}">
						<a class="num" href="/Dentistry/allJsp/admin?page=${page+2}">${page+2}</a>
					</c:if>
					
					
					<a class="num"  style="background:#ccc;" disabled="disabled">...</a>
					
				
					<a class="num" href="">${allNum}</a> 
					
				<c:if test="${page!=allNum}">	
					<a class="next" href="/Dentistry/allJsp/admin?page=${page+1}">&gt;&gt;</a>
				</c:if>
				</div>
			</div>  -->
		</div>
</body>
</html>