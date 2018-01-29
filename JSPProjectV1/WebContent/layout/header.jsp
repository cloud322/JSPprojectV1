<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>	
		<h1>JSP PROJECT V1</h1>
		<ul>
			<li><a href="index.jsp">home</a></li>
			<li><a href="Join.jsp">회원가입</a></li>
			
		<c:if test="${ empty myuid }">
			<li><a href="Login.jsp">로그인</a></li>
		</c:if>	
		<c:if test="${ not empty myuid }">
			<li><a href="logout.jsp">로그아웃</a></li>
		</c:if>	
			<li><a href="List.jsp">게시판</a></li>
			<li><a href="myinfo.jsp">회원정보</a></li>	
		</ul>
		<hr>
</header>