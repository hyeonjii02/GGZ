<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<script type="text/javascript">
 	function quanMin(pno,num){
		var frm = document.cartfrm;
		if(frm.quan.value==1){
			alert('1개 이상으로만 변경 가능합니다');
			return false;
		}else{
			alert('수량이 변경되었습니다.!!');
			frm.action='./cartUpdate.GGZ?pno='+pno+'&num='+num+'&flag=2';
			frm.submit();
			return true;
		}
			
	}
	function quanPlus(pno,num){
		var frm = document.cartfrm;
		alert('수량이 변경되었습니다.!!');
			frm.action='./cartUpdate.GGZ?pno='+pno+'&num='+num+'&flag=1';
			frm.submit();
	}
	
	function pDelete(pno,num){
		var frm = document.cartfrm;
		var c= confirm('정말로 삭제하시겠습니까?');
		if(c){
			alert('상품이 삭제 되었습니다.!!');
			location.href='./cartDelete.GGZ?pno='+pno+'&num='+num;
		}else{
			alert('취소하셨습니다');
		}
		
		
	}
	function goPayment() {
		var frm = document.cartfrm;
		frm.submit();
	}
</script>
<style type="text/css">
	img{
		width:80px;
		height:100px;
	}
/*  body,table,tr,td,th,div,a{
	border: 1px solid gray;
}  */
body{
	width:100%;
}
.cartBox{
	width:60%;
	margin:150px auto;
	padding:50px;
}
table{
	width:100%;
	border-collapse: collapse;
}
.th-set1{
	padding:15px 10px;
	vertical-align: middle;
}
.td-set1{
	text-align:center;
	border-bottom:1px solid gray;
	vertical-align: middle;
}
input[type=submit] {
	width: 200px;
	height: 50px;
	font-size: 1.3em;
	border-radius: 10%;
	margin-left: 40%;
	border: none;
	background-color: black;
	color: white;
	cursor: pointer;
}
a{
	float:left;
	display:block;
	vertical-align: top;
	color:black;
	font-style:none;
}
.button_set1{
	width: 33px;
	height: 33px;
	border: none;
	background-color:  #ededed;
	color: black;
	cursor: pointer;
	margin:none;
	font-size:1.2em;
	text-align:center;
}
input[type=text]{
	width: 30px;
	height: 30px;
	border: 1px solid gray;
	background-color: white;
	color: black;
	cursor: pointer;
	margin:0px 0px;
	font-size:1.1em;
	text-align:center;
}
.button_set2{
	width: 70px;
	height: 30px;
	border: 1px solid gray;
	background-color: white;
	color: black;
	cursor: pointer;
}
</style>
<%@include file="../top.jsp" %> 
</head>
<body>
<c:if test="${blceLow == 'y'}">
	<script>
		alert("포인트가 부족합니다! 포인트를 확인해 주세요"); 
	</script>
</c:if>
<div class="cartBox">
<h2>CartList</h2>
<hr style="border: 2px double gray;">

<form name="cartfrm" method="post" action="payMent.GGZ"><!-- 주문서로 이동 -->
<input type="hidden" name="pno" value="${pno }">
<table>
	<tr>
		<th class="th-set1" width="6%">번호</th>
		<th class="th-set1" width="38%">상품명</th>
		<th class="th-set1" width="14%">판매가</th>
		<th class="th-set1" width="14%">수량</th>
		<th class="th-set1" width="14%">주문금액</th>
		<th class="th-set1" width="14%">주문관리</th>
	</tr>
	<c:choose>
		<c:when test="${fn:length(cart)==0 }">
			<tr>
				<th>길이  : ${fn:length(cart) }</th>
			</tr>
		</c:when>
		<c:otherwise>
	<c:forEach var="cart1" items="${cart}">
	<input type="hidden" name="mallIdx" value="${cart1.mallIdx }">
	<c:set var="num" value="${cart1.num }"/>
			<tr>
				<th><h4>장바구니에 상품이 없습니다</h4></th>
			</tr>
	<tr>
		<td class="td-set1">${cart1.num}</td><!-- 번호 -->
		<td class="td-set1">
		
			<a href="mallDetailSelect.GGZ?pno=${pno}&mallIdx=${cart1.mallIdx }">
				<img src="/mallImg_path/${cart1.img_name }" alt="상품사진">
			</a>
		
			<a href="mallDetailSelect.GGZ?mallIdx=${cart1.mallIdx }&pno=${pno}" style="margin:5px 5px">
				${cart1.m_name}
			</a>
		</td>
		<td class="td-set1">${cart1.m_price}</td>
		<td class="td-set1">
		<input class="button_set1" type="button" name="min" value="-" onclick="return quanMin('${pno}','${num }')">
		<input type="text"  value="${cart1.quan}" name="quan" readonly="readonly" size="1">
		<input class="button_set1" type="button" name="plus" value="+" onclick="quanPlus('${pno}','${num }')">
		</td>
		<td class="td-set1"> ${cart1.totalPrice}</td>
		<td class="td-set1"><input class="button_set2" type="button" value="삭제하기" onclick="pDelete('${pno}','${num }')"></td>
	</tr>
</c:forEach>
	</c:otherwise>
	</c:choose>
</table>

<hr>
<input type="submit" class="button" value="주문하기" onclick="goPayment()"> 
<input type="button" class="button_set2" value="홈으로" onclick="location.href='./home.GGZ'">
</form>
</div>

</body>
</html>