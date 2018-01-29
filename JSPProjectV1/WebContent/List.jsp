<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP PROJECT V1</title>	
	<link href="./css/normalize.css" rel="stylesheet">
	<link href="./css/cloud.css" rel="stylesheet">
	<style>
		table{width: 75%; margin: 0 auto; table-layout: fixed; border-collapse: collapse;}
		th, td{ border:1px solid black; padding:10px; text-align:center;}
		.bdtitle{white-space:nowrap; overflow: hidden; text-overflow: ellipsis; }
	</style>

</head>
<body>
	
	<jsp:include page="layout/header.jsp" />	<!-- 머릿글 -->
	
	<div id="contents">
		<h1>게시판</h1>
		<table>	<!-- 표작성시작 -->
			<colgroup>
				<col style ="width: 10% "></col>
				<col>
				<col style ="width: 15%"></col>
				<col style ="width: 15%"></col>
				<col style ="width: 10%"></col>
				
			</colgroup>
			<tr>
				<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회</th>
			</tr>
			<%Random r = new Random(); %>
			<%for(int i=1; i<25; i++) { %>
			<tr>
				<td><%=i %></td>
				<td class="bdtitle"><a href="view.jsp?bno=<%=i %>">시간은 금이라구 금금이라구 금금금금금 진짜라구</a> </td>
				<td>나</td>
				<td>2014-05-05</td>
				<td><%=r.nextInt(1000) %></td>
			</tr>
			<% } %>
		</table> 
		
			
	</div>	<!-- 본문 -->
	
	
	
	<jsp:include page="layout/footer.jsp" />

</body>
</html>