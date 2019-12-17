<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>2</title>
	<style type="text/css">
		*{
			font-family: montserrat;
			box-sizing: border-box;
			margin: 0;
			padding: 0;
			text-decoration: none;
			list-style: none;
		}

		.nav{
			width: 100vw;
			float: left;
			height: 100vh;
			background: #383e60;
			overflow: hidden;
			box-shadow: 7px 0px 7px -7px #383e60;
		}

		.item{
			overflow: hidden;
			border-top: 2px solid #848fcf;
			padding: 0 0;
			margin: 0;
		}

		.item .select{
			display: block;
			padding: 13px 20px;
			color: #fff;
			background: #6977bc;
			position: relative;
		}

		.select::before{
			content: '';
			position: absolute;
			width: 14px;
			height: 14px;
			background: #6977bc;
			left:20px;
			bottom: -7px;
			transform: rotate(45deg);
		}

		.selcet-li{
			display: none;
			background: #383e60;
			overflow: hidden;

		}

		.selcet-li a{
			cursor: pointer;
			display: block;
			padding: 13px 20px;
			color: #fff;
			font-size: 14px;
			position: relative;
			border-bottom: 1px dashed #70719a;
		}

		.selcet-li a::before{
			content: '';
			position: absolute;
			width: 4px;
			height: 100%;
			border-radius: 2px;
			background: #7a8bd2;
			left: 0;
			top: 0;
			transition: 0.5s;
			opacity: 0;
		}

		.selcet-li a:hover::before{
			opacity: 1;
		}
	</style>
</head>
<body>
	<div class="content-box">
		<div class="nav">
			<li class="item">
				<a href="#" class="select">预约管理</a>
				<div class="selcet-li">
					<a href="http://localhost:8060/Den/allJsp/NoDeal" target="main" class="select-li-a">未处理订单</a>
					<a href="http://localhost:8060/Den/allJsp/Deal" target="main" class="select-li-a">已处理订单</a>
					<a href="http://localhost:8060/Den/allJsp/appointTime" target="main" class="select-li-a">医生预约情况</a>
				</div>
			</li>	
			<li class="item">
				<a href="#" class="select">用户管理</a>
				<div class="selcet-li">
					<a href="http://localhost:8060/Den/allJsp/user" target="main" class="select-li-a">查找用户</a>
					<a href="/Den/allJsp/addUser.jsp" target="main" class="select-li-a">添加用户</a>
				</div>
			</li>
			<li class="item">
				<a href="#" class="select">医生管理</a>
				<div class="selcet-li">
					<a href="http://localhost:8060/Den/allJsp/doctor" target="main" class="select-li-a">查看医生</a>
					<a href="/Den/allJsp/addDoctor.jsp" target="main" class="select-li-a">添加医生</a>
				</div>
			</li>
		</div>
	</div>
	<script type="text/javascript">
		var select1 = document.getElementsByClassName('select')[0];
		var selectLi1 = document.getElementsByClassName('selcet-li')[0];
		var select2 = document.getElementsByClassName('select')[1];
		var selectLi2 = document.getElementsByClassName('selcet-li')[1];
		var select3 = document.getElementsByClassName('select')[2];
		var selectLi3 = document.getElementsByClassName('selcet-li')[2];
		var flag = 0;
		select1.onclick = function(){
			if(flag == 0){
				selectLi1.style.display = "block";
				flag = 1;
			}else{
				selectLi1.style.display = "none";
				flag = 0;
			}
		}
		select2.onclick = function(){
			if(flag == 0){
				selectLi2.style.display = "block";
				flag = 1;
			}else{
				selectLi2.style.display = "none";
				flag = 0;
			}
		}
		select3.onclick = function(){
			if(flag == 0){
				selectLi3.style.display = "block";
				flag = 1;
			}else{
				selectLi3.style.display = "none";
				flag = 0;
			}
		}	

		/*var selectLiA = document.getElementsByClassName("select-li-a");
		var topNavLi = document.getElementsByClassName("top-nav-li");
		for(let i = 0; i < selectLiA.length; i ++){
			selectLiA[i].onclick = function(){
				topNavLi[i].style.display = "inline";
			}
		}
		var icon = document.getElementsByClassName('fa fa-times');
		for(let i = 0; i < icon.length; i ++){
			icon[i].onclick = function(){
				topNavLi[i].style.display = "none";
				////下面的页面也要没有
			}
		}*/
    </script>
	</script>
</body>
</html>