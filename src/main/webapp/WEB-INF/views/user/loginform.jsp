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
	<form class="form-horizontal" action="${pageContext.request.contextPath}/user/login" method="post">
		<div class="col s12 m4 offset-m4">
			<div class="card teal lighten-5">
				<div class="card-content black-text">
					<span class="card-title">Sign in</span>
					<div class="row">
						<div class="input-field col s12">
							<input id="id" type="text" class="validate" name = "id"> 
							<label
								for="id">ID</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="password" type="password" class="validate" name="password"> <label
								for="password">Password</label>
						</div>
					</div>

				</div>
				<div class="card-action">
					<button class="btn waves-effect waves-light" type="submit" name="action">Sign in</button>
					<a class="waves-effect waves-light btn" href="${pageContext.request.contextPath}/">처음으로</a>
					<a class="waves-effect waves-light btn" href="${pageContext.request.contextPath}/user/joinform">Sign up</a>
				</div>
			</div>
		</div>
									<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}"> <input type="hidden"
								name="loginRedirect" value="${loginRedirect}" />
		</form>
	</div>
</body>
</html>