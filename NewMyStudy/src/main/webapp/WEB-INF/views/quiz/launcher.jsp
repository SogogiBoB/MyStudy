<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<script src="/js/jquery-3.6.0.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">

<style>
.hide {display: none;}
.check, .checkbox2 {display: inline-block;}
.container {width: 720px; margin: 0 auto;}
.logo {margin: 40px 0 10px 0; font-family: "Oswald"; font-weight: 600;}
.logo p {opacity : 50%; font-size: 12px;}
.card {
	width: 700px; 
	background: #fff; 
	margin: 15px auto;
	padding: 20px 0;
	font-family: "NanumGothic";
	border: 1px solid #11874b;
}
.content-box {
	padding: 0 0 0 15px;
}

.checkbox2 {
	padding: 0 0 0 5px;
}
.checkbox2 h5 {
	font-size: 16px;
	margin-top: 4px;
}
.quizBox{
	margin: 0 auto;
}
.btn-secondary {
	vertical-align: middle;
	margin-bottom: 40px;
}
#goindex {
	height: 50px;
	line-height: 38px;
}
.btn-primary {
	margin-top: 10px;
	background-color: #16c96e;
	border: 1px solid #16c96e;
	color: white;
	transition: background-color .15s, border .15s;
	text-shadow: 1px 1px 1px #ccc;
}

.btn-primary:hover {
	background-color: #22de7f;
	border: 1px solid #22de7f;
	color: white;
	text-shadow: 1px 1px 1px #ccc;
}
.btn-check:focus+.btn-primary, .btn-primary:focus {
	background-color: #22de7f;
    border-color: #22de7f;
	box-shadow: 0 0 0 0.25rem rgb(126 226 175 / 50%);
}
.btn-check:active+.btn-primary:focus, .btn-check:checked+.btn-primary:focus, .btn-primary.active:focus, .btn-primary:active:focus, .show>.btn-primary.dropdown-toggle:focus {
    box-shadow: 0 0 0 0.25rem rgb(126 226 175 / 50%);
    background-color: #22de7f;
    border-color: #22de7f;
}
.btn-check:active+.btn-primary, .btn-check:checked+.btn-primary, .btn-primary.active, .btn-primary:active, .show>.btn-primary.dropdown-toggle {
    color: #fff;
    background-color: #22de7f;
    border-color: #22de7f;
}
.noProb {
	margin-bottom: 40px;
}

</style>
<script>
$(function() {
	$(".check").click(function(){
		let answer = $(this).data("answer");
		let asd = $(this).parent().attr("data-item");
		
		$("label[data-sel"+answer+"='"+asd+"']").css("color", "red");
	});
});
</script>
</head>
<body>
	<div class="container">
		<div class="quizBox">
			<div class="logo">
				<h2>Study Hard!</h2>
				<p>4지선다용 퀴즈 페이지 입니다.</p>
			</div>
			<c:if test="${launcherList.size() > 0}">
			<c:forEach var="item" items="${launcherList}">			
			<div class="card">
				<div class="content-box" data-item="${item.prob}">
					<div>
						<div class="checkbox1">
							<h5>${item.prob}</h5>
						</div>
					</div>
					<div>
						<div>
							<label data-sel1="${item.prob}">① ${item.sel1}</label>
						</div>
						<div>
							<label data-sel2="${item.prob}">② ${item.sel2}</label>
						</div>
						<div>
							<label data-sel3="${item.prob}">③ ${item.sel3}</label>
						</div>
						<div>
							<label data-sel4="${item.prob}">④ ${item.sel4}</label>
						</div>
					</div>
					<button class="check btn btn-primary" data-answer="${item.answer}">정답확인</button>
				</div>
			</div>			
			</c:forEach>
			</c:if>
			
			<c:if test="${launcherList.size() < 1}">
				<div class="noProb">
					<h5>등록된 문제가 없습니다.</h5>
				</div>
			</c:if>
			<a href=".." class="btn btn-secondary btn-sm" id="goindex">처음으로</a>
		</div>
	</div>
</body>
</html>