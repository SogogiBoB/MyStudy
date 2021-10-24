<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<style>
.form-control {font-family: "NanumGothic";}
h3 {font-family: "Oswald";}
.container-fluid {margin-top: 50px;}
#content {margin-top: 20px;}
</style>
<title>Member Update</title>
</head>
<body>
	<div class="container-fluid">
		<div class="d-grid gap-2 col-9 mx-auto">
			<h3>회원 정보 수정</h3>
		</div>
		<form method="post" id="content">
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>아이디</label>
				<input type="text" class="form-control mb-2" value="${item.mid}" readonly>
			</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>이름</label>
				<input type="text" name="name" class="form-control mb-2" value="${item.name}" placeholder="이름을 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>비밀번호</label>
				<input type="text" name="pw" class="form-control mb-2" value="${item.pw}" placeholder="비밀번호를 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>닉네임</label>
				<input type="text" name="nickname" class="form-control mb-2" value="${item.nickname}" placeholder="닉네임을 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto">
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-warning">수정</button>
					<a href="list" class="btn btn-outline-secondary">목록으로</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>