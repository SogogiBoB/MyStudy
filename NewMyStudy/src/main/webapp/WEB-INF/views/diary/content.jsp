<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<title>My Diary</title>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script>
$(function() {
	$("textarea").summernote();
});
</script>

<style>
.form-control {font-family: "NanumGothic";}
p {font-family: "NanumGothic"; opacity: 40%; font-size: 14px; margin-top:10px;}

.btn-outline-secondary:hover {
    color: #fff;
    background-color: #6c757d;
    border-color: #6c757d;
}
</style>
</head>
<body>
	<form method="post">
		<div class="container">
		<div class="d-grid gap-2 col-9 mx-auto">
			<p>이곳에서 바로 수정할 수 있습니다.</p>
		</div>
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<label>제목</label>
				<input type="text" name="title" value="${item.title}" class="form-control mb-2">
			</div>
			<div class="d-grid gap-2 col-9 mb-2 mx-auto" class="form-label">
				<div>내용</div>
				<textarea name="content" cols="70" rows="15" class="form-control mb-2">${item.content}</textarea>
			</div>
			<div>
				<input type="hidden" name="mid" value="${item.mid}"> 
				<input type="hidden" name="dnum" value="${item.dnum}"> 
			</div>
			<div class="d-grid gap-2 col-9 mx-auto">
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-warning">수정</button>
					<a href="list" class="btn btn-outline-secondary">목록으로</a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
