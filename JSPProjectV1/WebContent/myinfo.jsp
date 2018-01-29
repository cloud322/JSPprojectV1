<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--  로그인 하지 않앗다면 세션 테이터가 없다면 login.jsp 로 페이지 이동 -->
<c:if test="${ empty myuid }">
	<c:redirect url="Login.jsp" />
</c:if>     
    
<!DOCTYPE html >
<html lang="ko">
	<head>
	<meta charset="UTF-8">
	<title>JSP PROJECT V1</title>
	<link href="./css/normalize.css" rel="stylesheet">
	<link href="./css/cloud.css" rel="stylesheet">
	<style>
		#myinfofrm{width:400px; margin:0 auto;  padding-top: 100px;}
		#myinfofrm label{ width:120px;  display:inline-block;  text-align: right; font-weight:bold;}
		#myinfofrm div {margin:7px 0}
		
		#myinfo {width:300px; margin:0 auto;  padding-top: 100px;}
		#myinfo label{ width:120px;  display:inline-block;  text-align: right; font-weight:bold; padding-right: 15px;}
		#myinfo div {margin:7px 0}
	</style>

	</head>
<body>
	<jsp:include page="layout/header.jsp" />
	<h1>회원정보</h1>
		<div id="myinfo">
			<div>
				<label>아이디</label>
				<span>${ myuid }</span>
			</div>
			<div>
				<label>이&nbsp;&nbsp;름</label>
				<span>${ myname }</span>
			</div>
			<div>
				<label>가입일</label>
				<span>${ mydate }</span>
			</div>
		</div>
		
		
		<form id="myinfofrm" action="" method="get">
			<div>
				<label for="">아이디</label>
				<input type="text" name="uid" id="uid" disabled="disabled" value ="cloud">
			</div>		
			<div>
				<label for="">이&nbsp;&nbsp;름</label>
				<input type="text" name="name" id="name" disabled="disabled" value ="cloud">
			</div>
			<div>
				<label for="">이메일</label>
				<input type="text" name="email" id="email" disabled="disabled" value ="cloud">
			</div>	
			<div>
				<label for="">가입일</label>
				<input type="text" name="date" id="date" disabled="disabled" value ="cloud">
			</div>		
			
	<div id="contents">
		<img border="1" alt="아이유" src="./images/index.jpg">
	</div>
	
	<jsp:include page="layout/footer.jsp" />
</body>
</html>