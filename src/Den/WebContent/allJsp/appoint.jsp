<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户预约</title>
	<link rel="stylesheet" type="text/css" href="/Den/css/appoint.css">
</head>
<body>
	<div class="header">
		<h2>牙科预约管理系统</h2>
		<ul class="menu">
			<a href="#form-container">首页</a>
			<a href="#intro-title">医生介绍</a>
		</ul>
	</div>
	<div id="form-container">
		<!--<img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1573877046868&di=d06c7026b5da14d57ec4a55b9f48d3f4&imgtype=0&src=http%3A%2F%2Fwx2.sinaimg.cn%2Flarge%2F8a533d85ly1fmjmw9h6s2j20rs0fmq49.jpg">-->
		<img src="/Den/images/dental.jpg">
		<form action="/Den/allJsp/appoint" method="post" class="appoint-form">
			<div class="text">
				<input type="text" class="in" name="name">
				<span placeholder ="您的名字"></span>
			</div>
			<div class="text">
				<input type="text" class="in" name="telephone">
				<span placeholder ="您的电话"></span>
			</div>
			<div class="appoTime">预约时间
				<select name="time">
				    <option value="monup">周一上午</option>
				  	<option value="mondown">周一下午</option>
				  	<option value="tuesup">周二上午</option>
				  	<option value="tuesdown">周二下午</option>
				  	<option value="wedup">周三上午</option>
				  	<option value="weddown">周三下午</option>
				  	<option value="thurup">周四上午</option>
				  	<option value="thurdown">周四下午</option>
				 	<option value="friup">周五上午</option>
				  	<option value="fridown">周五下午</option>
				  	<option value="satup">周六上午</option>
				  	<option value="satdown">周六下午</option>
				  	<option value="sunup">周日上午</option>
				  	<option value="sundown">周日下午</option>
				</select>
			</div>
			<div class="appoDoc">预约医生
				<select name="doctor">
				  <option value="梁少欣">梁少欣医生</option>
				  <option value="朱傲雪">朱傲雪医生</option>
				  <option value="温凌媛">温凌媛医生</option>
				  <option value="何豪麟">何豪麟医生</option>
				</select>
			</div>
			<input type="submit" class="appointBtn" value="预约">
		</form>
	</div>
	<div class="doc-Introduction">
		<div id="intro-title">医生介绍</div>
		<div class="box-container">
			<div class="box">
				<img src="/Den/images/zhu.jpg" class="box-img">
				<h1>朱傲雪</h1>
				<h5>国立牙科医院大学本科毕业，2014年前往世界牙科医院大学进修硕博士，有多年的临床经验</h5>
			</div>
			<div class="box">
				<img src="/Den/images/liang.jpg" class="box-img">
				<h1>梁少欣</h1>
				<h5>国立牙科医院大学本科毕业，2014年前往世界牙科医院大学进修硕博士，有多年的临床经验</h5>
			</div>
			<div class="box">
				<img src="/Den/images/he.jpg" class="box-img">
				<h1>何豪麟</h1>
				<h5>国立牙科医院大学本科毕业，2014年前往世界牙科医院大学进修硕博士，有多年的临床经验</h5>
			</div>
			<div class="box">
				<img src="/Den/images/wen.jpg" class="box-img">
				<h1>温凌媛</h1>
				<h5>国立牙科医院大学本科毕业，2014年前往世界牙科医院大学进修硕博士，有多年的临床经验</h5>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="/Den/js/appoint.js"></script>
</body>
</html>