<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		color: #ccc;
		font-size: 1.2em;	
	}
	img{
		margin-top:60px;
	}
	span{
		display: inline;
	}
	
</style>
</head>
<body style="display:flex;flex-direction:column;justify-content:center;align-items:center;";>
	<img src="/Den/images/git.gif" alt="" />
	<p class="info">请稍等 <span class="num">3</span> 秒
	<script>
		var num = 3
		setInterval(function(){
			num--;
			document.querySelector('.num').innerHTML = num;
			if(num==0){
				location.href="/Den/"+"${urlpath}";
			}
		},1000)
	</script>
</body>
</html>