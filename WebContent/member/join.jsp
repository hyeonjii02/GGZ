<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<script type="text/javascript">
	function chkaddr(ca) {
		var frm = document.frmUser;
		var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if (ca == "") {
			alert("주소를 입력해주세요!");
			frm.addr.focus();
			return true;
		} else if (false == hangulcheck.test(ca)) {
			alert("한글만 입력");
			frm.addr.focus();
			return true;
		} 

	}
	function validForm() {
		var frm = document.frmUser;
		//a.
		if (chkN(frm.name.value)) {
			frm.name.focus();
			return false;
		}

		//b.
			if (chkPW(frm.pwd.value)) {
		 frm.pwd.focus();
		 return false;
		 } 

		if (chkEmail(frm.email.value)) {
			frm.email.focus();
			return false;
		}

		//c.
		if (frm.birthday.value.trim() == "") {
			alert("생일을 입력하세요");
			frm.birthday.focus();
			return false;
		}

		if (chkaddr(frm.addr.value)) {
			frm.addr.focus();
			return false;
		}

		if (frm.phone.length) { 
			alert("핸드폰 번호를 입력하세요");
			frm.phone.focus();
			return false;
		}
		if (frm.check.value == 'y' && frm.checkp.value =='y') {
			frm.submit();
		} else {
			if (frm.check.value != 'y') {
				alert("이메일 중복체크를 하세요");
			}else if(frm.checkp.value !='y'){
				alert("번호 중복체크를 하세요");
			}
		}

	}

	function chkN(cn) {
		var frm = document.frmUser;
		var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

		if (frm.name.value == "") {
			alert("이름은 필수 입력입니다.");
			frm.name.focus();
			return true;
		} else if (false == hangulcheck.test(cn)) {
			alert("한글만 입력하세요");
			frm.name.focus();
			return true;
		} else if (cn.search(/\s/) != -1) {
			alert("공백 없이 입력해주세요.");
			frm.name.focus();
			return true;
		}
	}

	function chkEmail(ce) {
		var frm = document.frmUser;
		var reg = /[a-zA-Z0-9]/i;
		if (frm.email.value == "") {
			alert("이메일을 입력하세요");
			frm.email.focus();
			return true;
		} else if (false == reg.test(ce)) {
			alert("영문과 숫자를 조합해야 합니다");
			frm.email.focus();
			return true;
		} else if (ce.search(/\s/) != -1) {
			alert("공백 없이 입력해주세요.");
			frm.email.focus();
			return true;
		}
	}

	function chkPW(pw) {
		var frm = document.frmUser;
		var id = document.frmUser.email.value;

		var reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
		var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if (frm.pwd.value == "") {
			alert('비밀번호를 입력하세요');
			frm.pwd.focus();
			return true;
		} else if (false == reg.test(pw)) {
			alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
			frm.pwd.focus();
			return true;
		} else if (/(\w)\1\1\1/.test(pw)) {
			alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
			frm.pwd.focus();
			return true;
		} else if (pw.search(/\s/) != -1) {
			alert("비밀번호는 공백 없이 입력해주세요.");
			frm.pwd.focus();
			return true;
		} else if (hangulcheck.test(pw)) {
			alert("비밀번호에 한글을 사용 할 수 없습니다.");
			frm.pwd.focus();
			return true;
		}
	}

	function validEmail() {
		var frm = document.frmUser;
		var email = document.frmUser.email.value;
		if (email == "") {
			alert("이메일(아이디)를 입력해 주세요.!");
			document.frmUser.email.focus();
			return false;
		}
		var url = "./idCheck.GGZ?email=" + email;
		window.open(url, "아이디 중복체크", "width=300,height=150,left=650,top=300");
	}
	function validPhone() {
		var frm = document.frmUser;
		var phone = document.frmUser.phone.value;
		if (phone == "") {
			alert("번호를 입력해주세요");
			document.frmUser.email.focus();
			return false;
		}
		var url = "./phoneCheck.GGZ?phone=" + phone;
		window.open(url, "번호 중복체크", "width=300,height=150,left=650,top=300");
	}
</script>
</head>
<body>
	<%-- <c:if test="${success=='n' }">
	<script type="text/javascript">
		alert("회원가입란을 다시 확인하세요");
	</script>
</c:if> --%>
	<h3>회원 가입</h3>
	<form name="frmUser" method="post" action="./join.GGZ">
		<input type="hidden" name="insert" value="y"> <input
			type="hidden" name="check" value="n">
			<input
			type="hidden" name="checkp" value="n">
		<table style="width: 100%">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="pwd" id="password"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" id="id">@ggz.com<!-- unique 제약조건 email 컬럼 중복값 체크 -->
					<input type="button" value="중복체크" onclick="validEmail()"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="date" name="birthday"></td>

			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="addr"></td>
			</tr>
			<tr>
				<th>핸드폰 번호</th>
				<td><input type="text" pattern="[0-9]{3}[0-9]{4}[0-9]{4}"
					required placeholder="010-0000-0000" name="phone">
					<input type="button" value="중복체크" onclick="validPhone()">
					</td>
			</tr>

			<tr>
				<td colspan="2" style="text-align: center"><input type="button"
					value="가입하기" onclick="validForm()"> <input type="reset"
					value="다시쓰기"></td>
			</tr>

		</table>
	</form>

</body>
</html>