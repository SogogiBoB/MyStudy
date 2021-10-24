<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 화면</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
}

body {font-family: "Nanum Gothic";}

img { border: 0; }

.wrap {
	width: 960px;
	margin: 0 auto;
}

li {list-style: none;}

#wrap {
	width: 960px;
	margin: 0 auto;
}

#main_header {
	height: 120px;
	position: relative;
	border-bottom: 1px solid rgb(102, 102, 102);
	margin-bottom: 10px;
}
#main_header .logo{padding-top: 40px;}

#main_header .logo h1 a {font-family:"Oswald"; font-weight: 600;}

#main_header .logo h1 a {text-decoration: none; color: black;}

#main_header .logo p{font-size:14px; opacity: 70%;}

#main_header #login {position:absolute;right:10px;top:80px; font-family: Oswald;}

#main_header #login a {text-decoration : none; font-size: 18px; color: black;}
#main_header #login a:hover {text-decoration : none; font-size: 18px; color: brown;}

#main_header #login ul li {display: inline-block; padding-right: 20px;}

#main_img {
	background: url("/resources/images/main_img2.jpg") center top no-repeat;
	height: 400px;
	color: #fff;
	padding-top: 100px;
	box-sizing: border-box;
	text-align: center;
}
#main_img h3{
	font-size: 2em;
	padding-top: 80px;
	text-shadow: 2px 2px 2px black;
}
#main_img p {
	text-shadow: 2px 2px 2px black;
}

#content {padding: 20px 0;}

#content h3 {
	font-size: 1.5em;
	padding: 20px 0;
	text-align: center;
	font-family:Oswald;
}

#content .po-list2 {font-size: 0;}

#content .po-list2 li {
	font-size: 1em;
	display: inline-block;
	padding-left: 8px;
}

#content .po-list2 li a:hover {
	opacity: 90%;
}

#content .po-list2 a {text-decoration: none; color: black; font-size: 18px;}

#adminContent {padding: 20px 0;}

#adminContent h3 {
	font-size: 1.5em;
	padding: 20px 0;
	text-align: center;
	font-family:Oswald;
}

#adminContent .po-list1 {font-size: 0; text-align: center;}

#adminContent .po-list1 li {
	font-size: 1em;
	display: inline-block;
	padding: 0 30px;
}

#adminContent .po-list1 li a:hover {
	opacity: 90%;
}

#adminContent .po-list1 a {text-decoration: none; color: black; font-size: 18px;}

footer {
background:#333; 
text-align:center; 
padding:20px;
margin-top:30px;
}
footer p {
color:#fff;
font-size: 12px;
opacity: 0.7;
}
</style>
</head>
<body>
	<div class="container">
		<header id="main_header"class="wrap">
			<div class="logo">
				<h1><a href="/">My Study Room</a></h1>
				<p>Study hard, Live high</p>
			</div>
			<c:if test="${sessionScope.member == null}">
				<nav id="login">
					<ul>
						<li><a href="/login">LOG-IN</a></li>
						<li><a href="/signup">SIGN-UP</a></li>
					</ul>
				</nav>
			</c:if>
			<c:if test="${sessionScope.member != null}">
				<nav id="login">
					<ul>
						<li><b>${sessionScope.member.nickname}</b>님 환영합니다.</li>
						<li><a href="logout">LOGOUT</a></li>
					</ul>
				</nav>
			</c:if>
		</header>
		
		<c:if test="${sessionScope.member.mid == 'admin'}">
			<div id="main_img">
				<div class="wrap">
					<h3>관리자 페이지</h3>
				</div>
			</div>
			<section id="adminContent" class="wrap">				
				<ul class="po-list1">
					<li><a href="admin/list"><img src="/resources/images/admin1.jpg"></a></li>
				</ul>
			</section>
		</c:if>
		
		<c:if test="${sessionScope.member.mid != 'admin'}">
			<div id="main_img">
				<div class="wrap">
					<h3>POLYTECH HIGHTECH</h3>
					<p>열심히 할 수밖에 없다</p>
				</div>
			</div>
			<section id="content" class="wrap">
				<h3>MENU</h3>
				
				<ul class="po-list2">
					<li><a href="diary/list"><img src="/resources/images/con1.jpg"></a></li>
					<li><a href="quiz/list"><img src="/resources/images/con2.jpg"></a></li>
					<li><a href="quiz/launcher"><img src="/resources/images/con3.jpg"></a></li>
					<li><a href="calendar/main"><img src="/resources/images/con4.jpg"></a></li>
				</ul>
			</section>
		</c:if>

		<footer>
			<p>Copyright ⓒ JUNHYEON All Rights Reserved</p>
		</footer>
	</div>
</body>
</html>