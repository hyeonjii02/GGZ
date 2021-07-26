<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PmtSuccess</title>
<style type="text/css">
/* 	body,tr,td,th,div,table{
		border:1px solid gray;
	} */
	body{
		width:100%;
	
	}
	img{
		width:100px;
		height:100px;
		margin:auto; 
		margin-left:10px;
	}
	.container{
		width:60%;
		margin:150px auto;
	}
	.subCon1{
		width:90%;
		margin:auto;
	}
	.subCon2{
		width:90%;
		margin:auto;
		text-align:center;
		border-bottom:1px solid gray;
	}
	.subCon3{
		width:90%;
		margin:auto;
		
	}
	table{
		width:100%;
		border-collapse: collapse;
	}
	.th-set1{
		height:50px;
		border-bottom:1px solid gray;
	}
	.td-set1{
		height:100px;
		border-bottom:1px solid gray;
	}
	.button_set1 {
	width: 200px;
	height: 50px;
	font-size: 1.3em;
	border-radius: 10%;
	margin: 10px 40%;
	border: none;
	background-color: black;
	color: white;
	cursor: pointer;
}
</style>
<%@include file="../top.jsp" %> 
</head>
<body>
<c:if test="${member==null }">
	<script type="text/javascript">
		alert('로그인한 사용자만 가능한 서비스입니다 로그인을 해주십시오');
		history.back();
	</script>
</c:if>
<div class="container">
	<div class="subCon1">
		<h2>PayMent Success</h2>
		<hr style="border: 2px double gray;"><br>
		<table>
			<tr>
				<th class="th-set1" colspan ="2" style="width:70%;">주문내역</th>
				<th class="th-set1" style="width:15%;">총 주문 포인트</th>
				<th class="th-set1" style="width:15%;">잔여 포인트</th>
			</tr>
			<tr>
				<td class="td-set1" style="width:12%">
					<%-- <img src="/mallImg_path/${finCart[0].img_name }" alt="상품이미지"> --%>
					<img src="/mallImg_path/세일러문.jpg" alt="상품이미지"></td>
				<td class="td-set1" style="vertical-align:top;">
					<p>[${finCart[0].m_name } 외 ${fn:length(finCart)-1 } 건 주문완료]</p><br>
					[배송시 요청사항 : ${memo }]
				</td>
				<td class="td-set1" style="text-align:center;">${sumAll } point</td>
				<td class="td-set1" style="text-align:center;">${member.point } point</td>
		</table>
		<h3 style="text-align:right">결제가 완료 되었습니다!</h3>
	</div>
	<br>
	<div class="subCon2">
	<h2 style="text-align:left">More Contents</h2>
	<hr style="border: 2px double gray;">
		<h4><a href="quiz.GGZ">tip! 포인트가 부족하신가요? 본인의 아재력을 테스트하고 포인트를 받으세요!</a></h4>
		<h4><a href="freeboard.GGZ">tip! 본인의 각종 옛날 일이나 이야기를 풀고 싶으시다면 자유게시판으로!</a></h4>
		<h4><a href="mall.GGZ">tip! 구매 못하신 상품이 있다구요? 한번 더 보시겠어요?</a></h4>
	</div>
	<br>
	<div class="subCon3">
		<input class ="button_set1" type="button" name="home" value="홈으로"onclick="location.href='../index.jsp'">
	</div>




</div>
</body>
</html>