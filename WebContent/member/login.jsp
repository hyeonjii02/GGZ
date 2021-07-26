<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script type="text/javascript">
	function goJoin() {
		location.href='join.jsp';		/* 요청 url 변경 */
	}
</script>
</head>
<body>
<c:if test="${login=='n' }">
<script type="text/javascript">
alert("로그인정보가 틀립니다. 다시하세요");
</script>
</c:if>
<c:if test="${re=='y' }">
<script type="text/javascript">
alert("패스워드 수정완료  다시로그인하세요");
</script>
</c:if>



<h1><a href="home.GGZ">그그지</a></h1>

<div> 
	<!-- action :입력을 처리할 페이지, 
		 method : query string(GET) or form data(POST) -->
	<form action="./login.GGZ" method="post" >
		<label for="userid">아이디</label><br>
		<input type="text" name="userid" id="userid" placeholder="이메일"><br><br>
		<label for="pwd">패스워드</label><br>
		<input type="password" name="pwd" id="pwd" placeholder="패스워드"><br><br>
	
		<a href="findId.GGZ">아이디찾기</a> <a href="findPassword.GGZ">비밀번호 찾기</a>
		<br>
	
		<input type="submit" value="로그인" >
		<input type="button" value="회원가입" onclick="goJoin()">
	</form>
</div>
</body>
</html>