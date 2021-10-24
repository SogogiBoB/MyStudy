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

#addBtn {
	background-color: #10b7b1;
	border: 1px solid #10b7b1;
	color: white;
	transition: background-color .15s, border .15s;
	text-shadow: 1px 1px 1px #ccc;
}
#addBtn:hover {
	background-color: #12cac3;
	border: 1px solid #12cac3;
	color: white;
	text-shadow: 1px 1px 1px #ccc;
}
.btn-check:focus+.btn-warning, .btn-warning:focus {
	box-shadow: 0 0 0 0.25rem rgb(59 218 191 / 50%);
}
.btn-check:active+.btn-warning:focus, .btn-check:checked+.btn-warning:focus, .btn-warning.active:focus, .btn-warning:active:focus, .show>.btn-warning.dropdown-toggle:focus {
    box-shadow: 0 0 0 0.25rem rgb(59 218 191 / 50%);
}
</style>
<title>Study Records</title>
</head>
<body>
	<div class="container-fluid">
		<div class="d-grid gap-2 col-9 mx-auto">
			<h3>문제 등록</h3>
		</div>
		<form method="post" id="content">
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>문제</label>
				<input type="text" name="prob" class="form-control mb-2" placeholder="문제를 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>선택지 1</label>
				<input type="text" name="sel1" class="form-control mb-2" placeholder="내용을 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>선택지 2</label>
				<input type="text" name="sel2" class="form-control mb-2" placeholder="내용을 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>선택지 3</label>
				<input type="text" name="sel3" class="form-control mb-2" placeholder="내용을 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>선택지 4</label>
				<input type="text" name="sel4" class="form-control mb-2" placeholder="내용을 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>정답</label>
				<input type="text" name="answer" class="form-control mb-2" placeholder="내용을 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mx-auto">
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-warning" id="addBtn">등록</button>
					<a href="list" class="btn btn-outline-secondary">목록으로</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>