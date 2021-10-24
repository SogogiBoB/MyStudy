<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<style>
.form-control {font-family: "NanumGothic";}
h3 {font-family: "Oswald";}
.container-fluid {margin-top: 50px;}
#content {margin-top: 20px;}

.btn-warning {
	color: white;
}
.btn-warning:hover {
	color: white;
}
.note-editing-area {height: 400px;}
</style>

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
<title>New Diary</title>
</head>
<body>
	<div class="container">
		<div class="d-grid gap-2 col-9 mx-auto">
			<h3>New Diary</h3>
		</div>
		<form method="post" id="content">
			<div class="d-grid gap-2 col-9 mx-auto" class="form-label">
				<input type="text" name="title" class="form-control mb-2" placeholder="제목을 입력해주세요">
			</div>
			<div class="d-grid gap-2 col-9 mb-2 mx-auto" class="form-label">
				<textarea id="" class="form-control mb-2" name="content" rows="15" cols="80" placeholder="내용을 입력해주세요"></textarea>
			</div>
			<div class="d-grid gap-2 col-9 mx-auto">
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-warning">등록</button>
					<a class="btn btn-outline-secondary" href="list">목록으로</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>