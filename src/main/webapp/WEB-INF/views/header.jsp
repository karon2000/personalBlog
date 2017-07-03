<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	
</head>
<header>
<nav class="teal darken-4" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="#"style="height: 100%;"><img src="${pageContext.request.contextPath}/resources/images/MainIcon-reverse.png" style="height:100%"></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="#">Login</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Login</a></li>
      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>
	<!-- jquery -->
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/materialize/js/materialize.min.js"></script>
</header>
</html>