<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
		<style>
		#htm1,#htm2,#htm3,#htm4,#htm5,#htm6,#htm7,#htm8,#htm9{
			width: 100%;
			height: 100%;
		}

		.tool{
			margin: 10px auto;
			padding: 20px;
		}

		.tool input{
			font-size: 15px;		
			width: 30%;
			height: 30px;
			outline: none;
		}

		.search{
			padding: 0 5px;
			color: #7a8bd2;
		}

		.selectBtn,.searchBtn,.addBtn{
			display: inline-block;
			width: 20%;
			height: 30px;
			border: none;
			background: #7a8bd2;
			font-size: 16px;
			font-weight: 500;
			color: #fff;
			border-radius: 5px;
			outline: none;
			cursor: pointer;
			transition: 0.5s;
		}

		.searchBtn{
			width: 8%;
			margin-left: 10px;
		}

		.addBtn{
			display: block;
			width: 25%;
			margin-top: 30px;
		}
	
		.selectBtn:hover{
			background: #5e64b3;
		}

		#table,#doc-table,.tbody{
			border-collapse:collapse;
			border-spacing:0;
			margin: 20px auto;
			width: 90%;
			line-height: 2em;
			text-align: center;		
			padding: 0;
		}

		#table th,#doc-table th,.tbody td{
			border: 1px solid #7a8bd2;
            color: #7a8bd2;
            height: 30px;
		}
		
	
	</style>
</head>
<body>
	<div id="htm1">
		<div class="tool">
			<form action="/Den/allJsp/user" method="post" class="login-form">
				<input type="text" class="searchName" id="searchName" name="searchName">
				<button class="selectBtn" type="submit">按姓名查找</button>
			</form>
		</div>
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
	</div>	
</body>
</html>