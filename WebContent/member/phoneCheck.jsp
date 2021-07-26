<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 중복체크</title>
<script type="text/javascript">
	function usePhone() {
		opener.frmUser.checkp.value='y';
		self.close();
	}
</script>
</head>

<body bgcolor="#FFFFCC">
	<div align="center">
	<br>${phone }<br>
	${msg }<br><br>
	<c:if test="${msg=='사용가능' }">
	<input type="button" value="사용하기" onclick="usePhone()">
	</c:if>
	<input type="button" value="닫기" onclick="self.close()">
	</div>
</body>
</html>