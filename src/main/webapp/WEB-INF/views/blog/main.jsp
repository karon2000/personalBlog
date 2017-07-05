<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--Import Google Icon Font-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/materialize/css/materialize.min.css"
	media="screen,projection" />
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/materialize/js/materialize.min.js"></script>



<title>Personal Blog Project</title>

<script>
	$(document).ready(function() {
		$('select').material_select();
	});
</script>
</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<br>
	<div class="container">
		<div class="row">
			<div class="input-field col s2">
				<select id="keyfield" name="keyfield">
					<option value="1" selected>전체</option>
					<option value="2">아이디</option>
					<option value="3">제목</option>
					<option value="4">제목+내용</option>
				</select>
			</div>
			<div class="input-field col s8">
				<input type="text" id="keyword" name="keyword">
			</div>
			<div class="input-field col s2">
				<button type="button" class="btn waves-effect waves-light">검색</button>
			</div>
		</div>
		<div class="row">
			<div class="col s3">
			 <sec:authorize access="!isAuthenticated()">
				<div class="card blue-grey darken-1">
					<div class="card-content white-text">
						<span class="card-title">로그인이 필요합니다.</span>
					</div>
					<div class="card-action" style="text-align: center;">
						<a href="${pageContext.request.contextPath}/user/loginform"><button class="btn waves-effect waves-light">Sign in</button></a>
					</div>
				</div>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<div class="card blue-grey darken-1">
					<div class="card-content white-text">
						<span class="card-title"><sec:authentication
								property='principal.id' /></span>
						<p>개인 정보 영역</p>
					</div>
					<div class="card-action">
						<a href="#">관리</a>
					</div>
				</div>
			</sec:authorize>
			</div>
			<div class="col s9">
				<div class="card blue-grey darken-1">
					<div class="card-content white-text">
						<span class="card-title">최신</span>
						<p>5개 혹은 10개. UI따라 결정할것</p>
					</div>
					<div class="card-action" style="text-align: right;">
						<a href="#">더보기</a>
					</div>
				</div>

			</div>

		</div>
		<div class="row">
			<div class="col s3">
				<div class="card blue-grey darken-1">
					<div class="card-content white-text">
						<span class="card-title">블로그 랭킹</span>
						<p>개인 정보 영역</p>
					</div>
					<div class="card-action" style="text-align: right;">
						<a href="#">더보기</a>
					</div>
				</div>

			</div>
			<div class="col s9">
				<div class="card blue-grey darken-1">
					<div class="card-content white-text">
						<span class="card-title">인기</span>
						<p>5개 혹은 10개. UI따라 결정할것</p>
					</div>
					<div class="card-action" style="text-align: right;">
						<a href="#">더보기</a>
					</div>
				</div>

			</div>

		</div>

	</div>
</body>
</html>