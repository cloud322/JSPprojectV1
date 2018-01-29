<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="uid" value="${param.uid }" />
<c:set var="pwd" value="${param.pwd }" />

<sql:query var="rs" dataSource="jdbc/oracle" sql="select userid, name, regdate from member where userid = ? and pwd = ?">
	<sql:param value="${uid }" />
	<sql:param value="${pwd }" />
</sql:query>

<c:forEach var="row" items="${rs.rows }">
	<c:if test="${ not empty row.userid }" >
<!-- 회원정보 존재하는 경우 -->
<!-- 사용자 세션 데이터 생성 -->
		<c:set var="myuid" scope="session" value="${row.userid}" />
		<c:set var="myname" scope="session" value="${row.name}" />
		<c:set var="mydate" scope="session" value="${row.regdate}" />
		<c:redirect url = "index.jsp" />
	</c:if>
	
	<c:out value="${row.userid }" /> 
</c:forEach>

${param.uid }/ ${param.pwd }
<c:redirect url="Join.jsp" />