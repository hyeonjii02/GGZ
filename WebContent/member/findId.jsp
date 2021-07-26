<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FindId</title>
<script type="text/javascript">
	function goFindPassword() {
		location.href='findPassword.GGZ?view=y';		/* 요청 url 변경 */
	}
</script>
</head>
<input type="button" value="아이디찾기" onclick="location.href='./findId.GGZ?view=y';">
<input type="button" value="비밀번호 찾기" onclick="location.href='./findPassword.GGZ?view=y';">

<body>

<form action="./findId.GGZ" method="post">
<input type="hidden" name="view" value="n">
<c:choose>
<c:when test="${view == y}">
	<table>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>핸드폰 번호</th>
			<td><input type="text" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
				required placeholder="010-0000-0000" name="phone"></td>
		</tr>
	</table>
	<input type="submit" value="아이디 확인">
	<hr>

		<li>비밀번호가 기억나지 않나요?</li> <a href="./findPassword.GGZ?view=y">비밀번호 찾기 바로가기</a>
		<li>진행에 어려움이 있으시면,안내센터로 문의주세요</li>
	</c:when>
	<c:otherwise>
		
			<h4>아이디는&nbsp;"&nbsp;${findId.email}&nbsp;"&nbsp;입니다.</h4>
	<input type="button" value="비밀번호 찾기" onclick="goFindPassword()">
	<hr>

		<li>비밀번호가 기억나지 않나요?</li> <a href="./findPassword.GGZ?view=y">비밀번호 찾기 바로가기</a>
		<li>진행에 어려움이 있으시면,안내센터로 문의주세요</li>
	</c:otherwise>
</c:choose>
</form>
	
</body>
</html>