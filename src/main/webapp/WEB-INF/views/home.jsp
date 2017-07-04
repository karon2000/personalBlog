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

<style>
table tr td{
border:4px white solid;
}
table tr td{
	text-align: center;
}
</style>
</head>
<body>

	<%@include file="/WEB-INF/views/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col s12 m12">
				<div class="card blue-grey darken-1">
					<div class="card-content white-text">
						<span class="card-title">공지사항</span>
						이 Personal Blog Project (PBP)는 개인이 진행하는 프로젝트입니다.<br>
						따라서 회원가입은 가능하나 해당 회원 정보는 가입 후 3시간 후에 삭제가 됩니다.<br>
						또한 이미지 업로드, 파일 업로드 등이 제한됩니다.<br><br><br><hr>
						<br>
<span class="card-title">개발 환경</span>
						<table>
							<tr>
								<td rowspan="3">Language</td>
								<td>Front-End</td>
								<td>HTML5,CSS3,JavaScript,jQuery</td>
							</tr>
							<tr>
								<td>Back-End</td>
								<td>Java, Servlet&Jsp</td>
							</tr>
							<tr>
								<td>FrameWord</td>
								<td>Spring 4.2.2, Mybatis 3.2.8</td>
							</tr>
							<tr>
								<td>DataBase</td>
								<td colspan="2">Oracle 11g</td>
							</tr>
							<tr>
								<td>WebServer</td>
								<td colspan="2">Apache tomcat 8.5</td>
							</tr>
							<tr>
								<td>UI</td>
								<td colspan="2">bootstrap, materializecss</td>
							</tr>
							<tr>
								<td>Tool</td>
								<td colspan="2">Eclipse, Git&GitHub</td>
							</tr>
														
						</table>
					</div>
					<div class="card-action" style="text-align: center">
						<a href="${pageContext.request.contextPath}/blog/">Main Page로 이동</a> <a href="${pageContext.request.contextPath}/blog/freeanz01">개발자의 Page로 이동</a> 
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jquery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/materialize/js/materialize.min.js"></script>
</body>
</html>
