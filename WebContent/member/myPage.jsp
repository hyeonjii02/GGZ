<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage</title>
<script type="text/javascript">
function validEmail(){
	var email = document.frmUser.email.value;
	if(email==""){
		alert("이메일(아이디)를 입력해 주세요.!");
		document.frmUser.email.focus();
		return; 
	}
	var url = "./idCheck.GGZ?email="+email;
	window.open(url,"아이디 중복체크","width=300,height=150,left=650,top=300");
}
</script>
<link type="text/css" rel="stylesheet" href="../css/myPage.css?v=3">
<style type="text/css">
	.top{
	margin-bottom:150px
}
.container{
	width:60%;
	border:1px solid gray;
	margin:auto;
	padding:50px;
}
</style>
</head>
<div class="top">
<%@include file="../top.jsp" %>
</div>
<c:if test="${up=='y' }">
	<script>
		alert("정보수정 완료!"); 
	</script>
</c:if>


<body>
<div class="container">
<h3>내 정보</h3>
<div class="mypage-wrap">
		<!-- mypage header -->
<div class="mypage-info mypage-musinsa">
<div class="inner">
	<h1 class="tit">My Page</h1>
	<div class="my-profile">
				<div class="img" style="background-image:url(//image.musinsa.com/mfile_s01/_simbols/_basic/d.png?202106041530)"></div>
						<em class="account">딸기우유도둑</em>
		<a href="./update.GGZ" class="link-modify">회원정보변경</a>
				<div class="member">
			<em class="level">LV.3 멤버</em>
			<span>가입일 : 2019.12.22</span>
		</div>
		<p class="txt"><span>오*현님 </span>다음 등급인 브론즈까지 88,155점 남았습니다</p>
	</div>
	<div class="my-menu">
		<a href="https://my.musinsa.com/member/v1/point">
			<i class="my-ico ico-point"></i>포인트 &gt;
			<strong>4,700</strong>
		</a>
	</div>
</div>
</div>
</div>
</div>
</body>
</html> 