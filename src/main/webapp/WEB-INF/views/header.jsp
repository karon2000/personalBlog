<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/materialize/css/materialize.min.css"  media="screen,projection"/>
     <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<title>Personal Blog Project</title>

<script>
function logout() {
	document.getElementById("logoutForm").submit();
}
</script>
	
</head>
<header>
<nav class="teal darken-4" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="${pageContext.request.contextPath}/blog" style="height: 100%;"><img src="${pageContext.request.contextPath}/resources/images/MainIcon-reverse.png" style="height:100%"></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="${pageContext.request.contextPath}/blog">Main</a></li>
      	<sec:authorize access="!isAuthenticated()">
        <li><a href="${pageContext.request.contextPath}/user/loginform">Sign in</a></li>
        </sec:authorize>        
        <sec:authorize access="isAuthenticated()">
        <li><a href="${pageContext.request.contextPath}/blog/<sec:authentication property='principal.id' />">My Blog</a></li>
        <li><a href="javascript:logout();">로그아웃</a></li>
        </sec:authorize>
      </ul>
      <ul id="nav-mobile" class="side-nav">
        <li><a href="${pageContext.request.contextPath}/blog">Main</a></li>         
      	<sec:authorize access="!isAuthenticated()">
        <li><a href="${pageContext.request.contextPath}/user/loginform">Sign in</a></li>
        </sec:authorize>
         <sec:authorize access="isAuthenticated()">
        <li><a href="${pageContext.request.contextPath}/blog/<sec:authentication property='principal.id' />">My Blog</a></li>
        <li><a onclick="logout();">로그아웃</a></li>
        </sec:authorize>               
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
  
  	<!-- 로그아웃 폼 생성 -->
  	<form id="logoutForm" action="${pageContext.request.contextPath}/user/logout"
		method="post" style="display: none">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>
	<!-- jquery -->
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/materialize/js/materialize.min.js"></script>
</header>
</html>