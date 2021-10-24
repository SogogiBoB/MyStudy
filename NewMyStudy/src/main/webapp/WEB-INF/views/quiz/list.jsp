<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css?family=Oswald"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700"
	rel="stylesheet">
<title></title>
<style>
a {
	text-decoration: none;
	color: black;
	font-family: "NanumGothic";
}

a:hover {
	color: red;
}

h3 {
	font-family: Oswald;
}

th {
	font-family: "NanumGothic";
	vertical-align: middle;
}

td {
	font-family: "NanumGothic";
	text-align: center;
	vertical-align: middle;
}

.pagination {
	justify-content: center;
}

.pagination a {
	color: black;
}

.pagination a:hover {
	color: #777924
}

.active a {
	color: black !important;
	background-color: #ffffff !important;
	border: 2px solid #10b7b1 !important;
}

thead {
	text-align: center;
}

tbody {
	text-align: center;
}

.container-fluid {
	margin-top: 50px;
	width: 80%
}

#searchBox div{
	display: inline-block;
}

#addBtn {
	background-color: #10b7b1;
	border: 1px solid #10b7b1;
	color: white;
	transition: background-color .15s, border .15s, box-shadow .15s;
}

#addBtn:hover {
	background-color: #12cac3;
	border: 1px solid #12cac3;
	color: white;
}
.btn-check:focus+.btn-warning, .btn-warning:focus {
	box-shadow: 0 0 0 0.25rem rgb(59 218 191 / 50%);
}
.btn-check:active+.btn-warning:focus, .btn-check:checked+.btn-warning:focus, .btn-warning.active:focus, .btn-warning:active:focus, .show>.btn-warning.dropdown-toggle:focus {
    box-shadow: 0 0 0 0.25rem rgb(59 218 191 / 50%);}
.hide {display: none;}
#explain {
	font-family: NanumGothic;
	font-size: 12px;
	opacity: 70%;
}
</style>
<script src="/js/jquery-3.6.0.min.js"></script>
<script>
	$(function() {
		
		$(".toggle").click(function() {
			let id = $(this).parent().attr("data-item");
			
			
			$("tr[data-sel='"+ id +"']").toggleClass("hide");
		});
		
	});
</script>
</head>
<body>
	<div class="container-fluid">
		<h3>Quiz Records</h3>
		<p id="explain">문제를 클릭하면 상세내용을 볼 수 있습니다.</p>
		<div id="table">
			<form class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
				<div id="searchBox">
					<div>
						<select name="search" class="form-control form-control-sm">
							<option value="0">전체목록</option>
							<option value="1" ${pager.search == 1 ? 'selected' : ''}>문제</option>
							<option value="2" ${pager.search == 2 ? 'selected' : ''}>보기</option>
							<option value="3" ${pager.search == 3 ? 'selected' : ''}>답</option>
						</select>
					</div>
					<div>
						<input type="text" name="keyword" value="${pager.keyword}" class="form-control form-control-sm">
					</div>
					<div>
						<button class="btn btn-outline-dark btn-sm">검색</button>
					</div>
				</div>
			</form>
			<table class="table table-hover">
				<thead>
					<tr class="table-light">
						<th>번호</th>
						<th>문제</th>
						<th>답</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="4">등록된 문제가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr data-item="${item.rnum}">
							<td>${item.rnum}</td>
							<td class="toggle">${item.prob}</td>
							<td>${item.answer}</td>
							<td><a href="delete?rnum=${item.rnum}" class="btn btn-outline-danger btn-sm">삭제</a> <a href="update?rnum=${item.rnum}" class="btn btn-outline-dark btn-sm">수정</a></td>
						</tr>
						<tr data-sel="${item.rnum}" class="hide">
							<td colspan="4">
								${item.sel1}<br>
								${item.sel2}<br>
								${item.sel3}<br>
								${item.sel4}
							</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5">
							<div class="pagination pagination-sm">
								<div class="page-item">
									<a href="?page=1&${pager.query}" class="page-link">처음</a>
								</div>
								<div class="page-item">
									<a href="?page=${pager.prev}&${pager.query}" class="page-link">이전</a>
								</div>

								<c:forEach var="page" items="${pager.list}">
									<div class="page-item ${pager.page == page ? 'active' : ''}">
										<a href="?page=${page}&${pager.query}" class="page-link">${page}</a>
									</div>
								</c:forEach>

								<div class="page-item">
									<a href="?page=${pager.next}&${pager.query}" class="page-link">다음</a>
								</div>
								<div class="page-item">
									<a href="?page=${pager.last}&${pager.query}" class="page-link">마지막</a>
								</div>
							</div>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<a href="add" class="btn btn-warning" id="addBtn">퀴즈 등록</a> <a href=".." class="btn btn-outline-secondary">처음으로</a>
		</div>
	</div>
</body>
</html>