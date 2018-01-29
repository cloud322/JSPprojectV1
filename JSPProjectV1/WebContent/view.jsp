<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html lang="ko">
	<head>
	<meta charset="UTF-8">
	<title>JSP PROJECT V1</title>
	<link href="./css/normalize.css" rel="stylesheet">
	<link href="./css/cloud.css" rel="stylesheet">
	<style>
		table{width: 50%; margin: 0 auto; table-layout: fixed; border-collapse: collapse;}
		th{ border: padding:10px; text-align:left;}
		td{ border: padding:10px; text-align:left;}
		
		#view {width: 75%; margin: 0 auto; padding-top:80x;}
		#view label{ width:120px;  display:inline-block; font-weight:bold;}
		#view div {margin:10px 0}
		
		#content {display: inline-block; border: 1px solid black; width: 530px}
		.dragup{vertical-align: top; }
	</style>

	</head>
<body>
	<jsp:include page="layout/header.jsp" />
	
	
	<h1>게시판 본문글</h1>
	<div id="view">
		<div>
			<label>제&nbsp;&nbsp;목</label>
			<span>시간은 금이라구 금금이라구 금금금금금 진짜라구</span>
		</div>
		<div>
			<label>작성자</label>
			<span>cloud</span>
		</div>
		<div>
			<label>작성일</label>
			<span>오늘</span>
		</div>
		<div>
			<label class="dragup">본&nbsp;&nbsp;문</label>
			<span id="content">시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구</span>
		</div>
		
	</div>
	
	
	
	
	<table>
		<colgroup>
				<col style ="width: 10% ">
				<col style ="width: 65% ">
		</colgroup>
		<tr>
			<th>제&nbsp;&nbsp;목</th><td>시간은 금이라구 금금이라구 금금금금금 진짜라구</td>
		</tr>
		<tr>
			<th>작성자</th><td>나</td>
		</tr>
		<tr>
			<th>작성일</th><td>2014-05-05</td>
		</tr>
		<tr>
			<th>본&nbsp;&nbsp;문</th><td>시간은 금이라구 금금이라구 금금금금금 진짜라구 
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구
			시간은 금이라구 금금이라구 금금금금금 진짜라구</td>
		</tr>
	
		
	
	</table>
		
	<jsp:include page="layout/footer.jsp" />
</body>
</html>