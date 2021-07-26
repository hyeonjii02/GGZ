<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품목록</title>
<!-- <link rel="stylesheet" href="../css/freeboard.css"> -->

<script type="text/javascript">
function boldButton(btn){ //1번 버튼 함수

	var target1 = document.getElementById(btn);
	target1.style.fontWeight="bold";

	}


</script>


<style>
 
	a:hover{
	font-weight:bold;
	font-size:large;
	color:black;
	}

	.btn{
	margin:20px;
	text-decoration:none;
	color:black;
	;
	}
	
	#wrap{
	width:100%;
	height:100%;
	}
	#menu{
	width:100vw;
	height:10vh;
	text-align:center;
	}
	#itembox{
	width:100vw;
	height:80vh;
	}
	.item{
	width:375px;
	height:375px;
	float:left;
	margin:20px;
	}
	.item_img{
	width:375px;
	height:325px;
	}
	.item_name{
	width:375px;
	height:55px;
	text-align:center;
	}
	#page{
	width:100vw;
	height:10vh;
	text-align:center;
	overflow:hidden;
	}

</style>
</head>
<body onload="boldButton('${btn}')">


  	<div id="wrap">
  		<div id="menu">
  		<a class="btn" id="btn5" href="./listSelect.GGZ?btn=btn5">전체보기</a>
 		<a class="btn" id="btn1" href="./toySelect.GGZ?category=toy&btn=btn1">장난감</a>
 		<a class="btn" id="btn2" href="./clothingSelect.GGZ?category=clothing&btn=btn2" >의류</a>
 		<a class="btn" id="btn3" href="./accSelect.GGZ?category=acc&btn=btn3" >악세서리 </a>
 		<a class="btn" id="btn4" href="./snackSelect.GGZ?category=snack&btn=btn4" >과자</a>
 		<a class="btn" href="./mallInsert.GGZ">상품 추가</a><br>
 		상품 총 개수 : ${blists.totalCount} 	
 		</div>
 		<div id="itembox">
 				<c:forEach var="vo" items="${blists.m_list}">
 				<div class="item">
 					<div class="item_img">
		 			<a href="mallDetailSelect.GGZ?pno=${pno }&mallIdx=${vo.idx}"><img src="/mallImg_path/${vo.img_name }" width="100%" height="100%" ></a><br>
 					</div>
 					<div class="item_name">
 					${vo.name }
 					</div>
 				</div>
 				</c:forEach>
 			
 		</div>
 		<div id="page">
 		 <!-- 페이지 이동 -->
 		 	
 		 	<a class="pagenum" href="?pno=1&category=${category}">&lt;&lt;</a>   <!-- 요청url은 동일하고 파라미터만 변경됩니다. -->
			<a class="pagenum" href="?pno=${blists.startPage-1 }&category=${category}">&lt;</a>  
			<!-- 현재페이지값을 변경 : blists.getStartPage() -1 -->
			
			  <!-- 페이지목록의 범위  -->
			  <c:forEach var="i" begin="${blists.startPage }" end="${blists.endPage }">
				<a class="pagenum" href="?pno=${i}&category=${category}">${i}</a>     <!-- 현재페이지 i값으로 변경  -->
			  </c:forEach>
			
			<!-- 현재페이지값을 변경 : blists.getEndPage() +1 -->
			<a class="pagenum" href="?pno=${blists.endPage+1 }&category=${category}">&gt;</a> 
			<a class="pagenum" href="?pno=${blists.totalPage }&category=${category}">&gt;&gt;</a>
			
		</div>
	</div>
</body>
</html>








