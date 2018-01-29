<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:if test="${ not empty myuid  }">
	<c:redirect url="myinfo.jsp" />
</c:if> 
 
    
<!DOCTYPE html >
<html lang="ko">
<head>
<meta charset="UTF-8">
	<title>JSP PROJECT V1</title>
	<link href="./css/normalize.css" rel="stylesheet">
	<link href="./css/cloud.css" rel="stylesheet">
	<style>
	
		#joinfrm{width:500px; margin:0 auto; /* border:1px solid red; */ padding-top: 100px;}
		#joinfrm label{ width:120px; /* border:1px solid blue; */ display:inline-block;  text-align: right; font-weight:bold;}
		#joinfrm div {margin:7px 0}
		/* button[type=submit] {margin-left:120px} */
	</style>
</head>
<body>
	<jsp:include page="layout/header.jsp" />
	
	
	<div id="contents">
		<h1>회원가입</h1>
		<form id="joinfrm" action="joinok.jsp" method="post">
			<div>
				<label for="">아이디</label>
				<input type="text" name="uid" id="uid" >
				<span id="umsg"></span>
			</div>		
			<div>
				<label for="">비밀번호</label>
				<input type="password" name="pwd" id="pwd" >
			</div>	
			<div><label for="">비밀번호확인</label>
				<input type="password" name="repwd" id="repwd" >
			</div>	
			<div><label for="names">이름</label>
				<input type="text" name="names" id="names" >
			</div>
			<div>
				<label></label>
				<button type="submit" id="joinbtn">입력완료</button>	
				<button type="reset">다시입력</button>	
			</div>
		</form>
	</div>
	
	<jsp:include page="layout/footer.jsp" />
	
	<script>
		var joinfrm = document.getElementById("joinfrm")
		joinfrm.onsubmit = checkjoin;	//이벤트등록
		//submit 버튼 클릭시 checkjoin 실행
		
		var uid = document.getElementById("uid")
		var pwd = document.getElementById("pwd")
		var repwd = document.getElementById("repwd")
		var names = document.getElementById("names")
		
		function checkjoin()
		{
		if (uid.value == "") 
			{
			alert("아이디 입력"); uid.focus();
			}
		else if(pwd.value == "")
			{
			alert("비밀번호 입력"); pwd.focus();
			}
		else if(repwd.value == "")
			{
			alert("비밀번호 다시 입력"); repwd.focus();
			}
		else if(repwd.value != pwd.value)
			{
			alert("비밀번호 같지안음"); pwd.focus();
			}
		else if(names.value == "")
			{
			alert("이름없다"); names.focus();
			}
		else
			{
			return true;
			}
		return false;
		}
		//function checkjoin(){alert('버튼클릭'); return false;}// submit 기능 중지
	</script>
	
	<script>
        // Ajax를 이용해서 회원정보 처리하기
        // JSON 형식으로 저장된 회원정보를 이용하는 Ajax 함수
        // Ajax으로 아이디 중복 체크 구현하기
        // 1. XMLHttpRequest 객체 생성
        // 2. Ajax 서버 응답시 처리할 내용을 코드로 작성
        // 3. Ajax 클라이언트 요청 메서드 작성
        function checkUserid() 
        {
            // 1. Ajax 관련 객체 생성
            var ajax = new XMLHttpRequest();
            // 2. 이벤트 처리 함수는 콜백 방식으로 처리
            ajax.onload = function() {
                if (ajax.status == 200) { // 정상 처리시
                	var result = ajax.responseText.replace(/(\s*)/g,"");
                	//빈칸을 공백으로 바꿈
                var isUsedID = false;
                	
               	if(result !="") isUsedID =true;
                
                    if (isUsedID) {
                        umsg.innerHTML = "사용중인 아이디";
                        umsg.style.color = 'red';
                        joinbtn.disabled = true;
                    } else {
                         umsg.innerHTML = "사용가능 아이디";
                         umsg.style.color = 'blue';
                        joinbtn.disabled = false;
                    }
                
                } else { // 비정상 처리시
                    alert('어째든 오류발생!'+ajax.status);
                }
            }; // 콜백 함수
            // 3. 작성된 주소로 get 방식으로 데이터를 가져옴
            ajax.open("get", "checkUsedID.jsp?uid="+uid.value, true);
            ajax.send(null);
        }
        
        // 회원가입 폼요소에 이벤트 추가하기
        var uid = document.getElementById("uid");
        var umsg = document.getElementById("umsg");
        var joinbtn = document.getElementById("joinbtn");
    
        uid.addEventListener('blur', checkUserid);
        
    </script>
</body>
</html>