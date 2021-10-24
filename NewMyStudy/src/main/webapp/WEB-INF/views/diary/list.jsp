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
<script src="/js/jquery-3.6.0.min.js"></script>
<script>
	$(function() {
		
		$(".toggle").click(function() {
			let id = $(this).parent().attr("data-item");
			
			
			$("tr[data-sel='"+ id +"']").toggleClass("hide");
		});
		
	});
</script>
<style>
.hide {display:none;}
a {
	text-decoration: none;
	color: black;
	font-family: NanumGothic;
}

a:hover {
	color: red;
}

h3 {
	font-family: Oswald;
}

th {
	font-family: NanumGothic;
}

td {
	font-family: NanumGothic;
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
	border: 2px solid #ffae00 !important;
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

#table {
	margin-top: 20px;
}
#searchBox div{
	display: inline-block;
}
#explain {
	font-family: NanumGothic;
	font-size: 12px;
	opacity: 70%;
}
.btn-warning, .btn-warning:hover {
	color: white;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<h3>My Diary</h3>
		<p id="explain">제목을 누르면 수정할 수 있습니다.</p>
		<div id="table">
			<form class="mb-2 d-grid gap-2 d-md-flex justify-content-md-end">
				<div id="searchBox">
					<div>
						<select name="search" class="form-control form-control-sm">
							<option value="0">전체목록</option>
							<option value="1" ${pager.search == 1 ? 'selected' : ''}>제목</option>
							<option value="2" ${pager.search == 2 ? 'selected' : ''}>작성일</option>
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
						<th>제목</th>
						<th>작성일</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="4">등록된 카테고리가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr data-item="${item.dnum}">
							<td>${item.dnum}</td>
							<td><a href="content?dnum=${item.dnum}">${item.title}</a></td>
							<td class="toggle"><fmt:formatDate value="${item.regdate}" pattern="yyyy년 MM월 dd일" /></td>
							<td><a href="delete?dnum=${item.dnum}" class="btn btn-outline-danger btn-sm">삭제</a></td>
						</tr>
						<tr data-sel="${item.dnum}" class="hide">
							<td colspan="4">${item.content}</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
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
			<a href="add" class="btn btn-warning">새 글 작성</a> <a href=".." class="btn btn-outline-secondary">처음으로</a>
		</div>
	</div>
</body>
</html>