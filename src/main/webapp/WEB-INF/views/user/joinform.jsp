<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />

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
	$(document)
			.ready(
					function() {
						var token = $("meta[name='_csrf']").attr("content");
						var header = $("meta[name='_csrf_header']").attr(
								"content");

						$("#id")
								.keyup(
										function() {
											var temp = $(this).val();
											var templen = temp.length;
											if (templen < 6) {
												$("#idCheck")
														.text(
																"아이디는 최소 6자 이상이어야 합니다.");
												$("#idCheck").css("color",
														"red");
											} else {
												$
														.ajax({
															url : "${pageContext.request.contextPath}/user/userSearchById",
															type : "post",
															dataType : "text",
															data : "id="
																	+ $(this)
																			.val(),
															beforeSend : function(
																	xhr) { /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
																xhr
																		.setRequestHeader(
																				header,
																				token)
															},
															success : function(
																	result) {

																if (result == 0) {
																	$(
																			"#idCheck")
																			.text(
																					"사용이 가능합니다.");
																	$(
																			"#idCheck")
																			.css(
																					"color",
																					"blue");
																} else {
																	$(
																			"#idCheck")
																			.text(
																					"중복된 아이디 입니다.");
																	$(
																			"#idCheck")
																			.css(
																					"color",
																					"red");
																}
															},
															error : function(
																	err) {
																alert("오류 발생 : "
																		+ err);
															}
														})
											}
										});

						$("#password").keyup(function() {
							var temp = $(this).val();
							var templen = temp.length;

							if (templen < 6) {
								$("#pwCheck").text("비밀번호는 6자 이상이어야 합니다");
								$("#pwCheck").css("color", "red");
							} else {
								$("#pwCheck").text("");
							}
						});

						$("#password2").keyup(function() {
							var temp = $(this).val();
							var pw = $(password).val();

							if (temp != pw) {
								$("#pwCheck2").text("비밀번호가 일치하지 않습니다.");
								$("#pwCheck2").css("color", "red");
							} else {
								$("#pwCheck2").text("비밀번호가 일치합니다.");
								$("#pwCheck2").css("color", "blue");

							}
						});

					})
	function checkValid() {
		var f = window.document.writeForm;

		if (f.id.value == "") {
			alert("아이디를 입력해 주세요.");
			f.id.focus();
			return false;
		}
		if (f.id.value.length < 6) {
			alert("아이디는 6자 이상이어야 합니다.");
			f.id.value = "";
			f.id.focus();
			return false;
		}
		if (f.password.value == "") {
			alert("비밀번호를 입력해 주세요..");
			f.password.focus();
			return false;
		}
		if (f.password.value.length < 6) {
			alert("비밀번호는 6자 이상이어야 합니다.");
			f.password.value = "";
			f.password.focus();
			return false;
		}
		if (f.password2.value == "") {
			alert("비밀번호를 입력해주세요");
			f.password2.focus();
			return false;
		}
		if (f.password.value != f.password2.value) {
			alert("비밀번호가 일치하지 않습니다.");
			f.password2.value = "";
			f.password2.focus();
			return false;
		}

		return true;
	}
</script>



</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<div class="row">
		<div class="col s12 m4 offset-m4">
			<div class="card teal lighten-5">
				<form class="form-horizontal"
					action="${pageContext.request.contextPath}/user/join" method="post"
					onSubmit="return checkValid()" name="writeForm">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}">
					<div class="card-content black-text">
						<span class="card-title">Sign up</span>
						<div class="row">
							<div class="input-field col s12">
								<input id="id" type="text" class="validate" name="id"> <label
									for="id">ID</label> <span id="idCheck">&nbsp;</span>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s12">
								<input id="password" type="password" class="validate"
									name="password"> <label for="password">Password</label>
								<span id="pwCheck">&nbsp;</span>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s12">
								<input id="password2" type="password" class="validate">
								<label for="password2">비밀번호 확인</label> <span id="pwCheck2">&nbsp;</span>
							</div>
						</div>
					</div>
					<div class="card-action">
						<div class="row">
							<button class="btn waves-effect waves-light" type="submit"
								name="action">Sign up</button>
							<button class="btn waves-effect waves-light" type="reset"
								name="action">Reset</button>
							<a class="waves-effect waves-light btn"
								href="${pageContext.request.contextPath}/blog">메인으로</a>
						</div>
						<div class="row">
							<a href="${pageContext.request.contextPath}/user/joinform">아이디를
								만들고 싶어요</a>
						</div>
					</div>
				</form>
			</div>

		</div>

	</div>
</body>
</html>