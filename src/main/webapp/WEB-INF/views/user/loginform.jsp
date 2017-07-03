<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>Personal Blog Project</title>

</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<div class="row">
	<form action="${pageContext.request.contextPath}/user/login">
		<div class="col s12 m4 offset-m4">
			<div class="card teal lighten-5">
				<div class="card-content black-text">
					<span class="card-title">Login</span>
					<div class="row">
						<div class="input-field col s12">
							<input id="id" type="text" class="validate"> 
							<label
								class="active" for="id">ID</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="password" type="password" class="validate"> <label
								for="password">Password</label>
						</div>
					</div>

				</div>
				<div class="card-action">
					<button class="btn waves-effect waves-light" type="submit" name="action">로그인 </button>
					<a class="waves-effect waves-light btn">회원가입</a>
				</div>
			</div>
		</div>
		</form>
	</div>
</body>
</html>