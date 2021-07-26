<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FindPassword</title>
</head>
<input type="submit" value="아이디찾기"
	onclick="location.href='./findId.GGZ?view=y';">
<input type="submit" value="비밀번호 찾기"
	onclick="location.href='./findPassword.GGZ?view=y';">

<body>
	<form action="./findPassword.GGZ" method="post">
<input type="hidden" name="view" value="n">
<c:choose>
<c:when test="${view == y}">
	<table>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="email">@ggz</td>
		</tr>
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
	<input type="submit" value="비밀번호 확인">
	<hr>

	</c:when>
	<c:otherwise>
		
			<h4>비밀번호는&nbsp;"&nbsp;${findPassword.password}&nbsp;"&nbsp;입니다.</h4>
	<input type="button" value="홈" onclick="location.href='./index.GGZ';">
	<hr>

	</c:otherwise>
</c:choose>
</form>

</body>
</html>