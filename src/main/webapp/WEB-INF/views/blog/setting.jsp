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
		
		
		var select_category = 0;
		
		$("tr td").css("background-color","black");
		
		$("tr").click(function(){
			select_category = $(this).find("input").val();
			alert(select_category);
			$("tr td").css("background-color","black");			
			$(this).children().css("background-color","red");
		})
		$("i").click(function(){
			var temp = $(this).text();
			
			if(temp == 'arrow_drop_up')
			{
				alert('위로');
			}
			else if (temp =='arrow_drop_down')
			{
				alert('아래로');				
			}
			else if (temp =='delete')
			{
				alert('삭제');				
			}
		})
	});
</script>
<style>
tr td{
	border:1px white solid;
	cursor:pointer;
}
.material-icons{
	color:white;
	cursor:pointer;
}
</style>

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
									<input type="hidden" value="${vs.count}" id="category_index">
									${category.categoryName}
								</td>
							</tr>	
							</c:forEach>
						</table>	
					</div>
					<div class="card-action" style="text-align: right;">
						  <i class="material-icons">arrow_drop_up</i>  
						  <i class="material-icons">arrow_drop_down</i>  
						  <i class="material-icons">delete</i>
					</div>
				</div>

			</div>

		</div>

	</div>

</body>
</html>