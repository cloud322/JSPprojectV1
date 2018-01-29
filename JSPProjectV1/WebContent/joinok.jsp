<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jm.jspv1.userinfo" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<jsp:useBean id="mi" scope="page" class="jm.jspv1.userinfo"/>
<jsp:setProperty  name="mi" property="*"/>  

<sql:update dataSource="jdbc/oracle"
sql="insert into member (userid, pwd, name) values(?, ?, ?)">
	<sql:param value="${ mi.uid }" />
	<sql:param value="${ mi.pwd }" />
	<sql:param value="${ mi.names }" />
</sql:update>

    
    
<!DOCTYPE html >
<html lang="ko">
	<head>
	<meta charset="UTF-8">
	<title>JSP PROJECT V1</title>
	<link href="./css/normalize.css" rel="stylesheet">
	<link href="./css/cloud.css" rel="stylesheet">

	</head>
<body>
	<jsp:include page="layout/header.jsp" />	
	
	<div id="contents">
		<h2>회원가입 처리결과</h2>
		<div><b>아이디:</b><jsp:getProperty property="uid" name="mi"/> </div>
		<div><b>이름:</b><jsp:getProperty property="names" name="mi"/></div>
		<hr>
		<div><button type="button">로그인하러가기</button></div>
	</div>
	
	<jsp:include page="layout/footer.jsp" />
</body>
</html>