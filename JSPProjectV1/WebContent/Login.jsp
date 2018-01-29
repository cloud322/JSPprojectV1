<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
	<title>JSP PROJECT V1</title>
	<link href="./css/normalize.css" rel="stylesheet">
	<link href="./css/cloud.css" rel="stylesheet">
	<style>
		#loginfrm{width:400px; margin:0 auto;  padding-top: 100px;}
		#loginfrm label{ width:120px;  display:inline-block;  text-align: right; font-weight:bold;}
		#loginfrm div {margin:7px 0}
	</style>
</head>
<body>
	<jsp:include page="layout/header.jsp" />
	<h1>로그인</h1>
		<form id="loginfrm" action="loginok.jsp" method="post">
			<div>
				<label for="uid">아이디</label>
				<input type="text" name="uid" id="uid" required="required">
			</div>		
			<div>
				<label for="pwd">비밀번호</label>
				<input type="text" name="pwd" id="pwd" required="required">
			</div>	
			<div>
				<label></label>
				<button type="submit">로그인</button>	
			</div>
	<div id="contents">
		<img border="1" alt="아이유" src="./images/index.jpg">
	</div>
</form>
	
	<jsp:include page="layout/footer.jsp" />
</body>
</html>