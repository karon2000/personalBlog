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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/materialize/css/materialize.min.css"
	media="screen,projection" />
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Personal Blog Project</title>

<script>
	$(document).ready(function() {
		$("tr td").css("background-color","black");
		$("tr").click(function(){
			$("tr td").css("background-color","black");			
			$(this).children().css("background-color","red");
		})

	});
</script>


</head>
<body>
	<%@include file="/WEB-INF/views/header.jsp"%>

	<br>
	<div class="container">
		<div class="row">
			<div class="col s9">
				<div class="card blue-grey darken-1">
					<div class="card-content white-text">
						<span class="card-title">카테고리</span>
						<p>
						<table>
							<c:forEach items="${categoryList}" var="category" varStatus="vs">
							<tr>
								<td>
									${category.categoryName}
								</td>
							</tr>	
							</c:forEach>
						</table>	
						</p>
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