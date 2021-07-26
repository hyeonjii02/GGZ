<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
	margin:150px auto;
	padding:50px;
}
</style>
<meta charset="UTF-8">
<title>상품추가</title>
<script type="text/javascript">

function previewImage(f){

	var file = f.files;

	
	if(!/\.(jpg|jpeg|png)$/i.test(file[0].name)){
		alert('jpg, png 파일만 선택해 주세요.\n\n현재 파일 : ' + file[0].name);

		
		f.outerHTML = f.outerHTML;

		document.getElementById('preview').innerHTML = '';

	}
	else {

		
		var reader = new FileReader();

		
		reader.onload = function(rst){
			document.getElementById('preview').innerHTML = '<img src="' + rst.target.result + '">';
		}

		
		reader.readAsDataURL(file[0]);

	}
}

function insertProduct(){
	var insert = document.insertp;
	insert.action='mallInsertAction.GGZ';
	insert.submit();
}
</script>
</head>

<body>
<div class="top">
<%@include file="../top.jsp" %> 
</div>
<h4>--상품수정--</h4>
<hr>
<div class="container">
<form name="insertp" action="mallInsertAction.GGZ" method="post" enctype="multipart/form-data">
<table class="table">
<tr>
	<td width="20%">상품이름</td>
	<td><input type="text" name="name" class="form-control" placeholder="상품 이름을 입력하세요" size="40"></td>
</tr>
<tr>
	<td width="20%">상품가격</td>
	<td><input type="text" name="price" class="form-control" placeholder="가격을 입력하세요." size="40"></td>
</tr>
<tr>
	<td width="20%">카테고리</td>
	<td><select name="category" class="form-control">
		<option value="toy" 
			<c:if test="${vo.category=='toy' }">
				selected
			</c:if>>toy</option>
		<option value="clothing" 
			<c:if test="${vo.category=='clothing' }">
				selected
			</c:if>>clothing</option>
		<option value="acc"
				<c:if test="${vo.category=='acc' }">
					selected
				</c:if>>acc</option>
		<option value="snack"
				<c:if test="${vo.categoryr=='snack' }">
					selected
				</c:if>>snack</option>
		</select></td>
</tr>
<tr>
		<td>상세설명</td>
		<td><textarea class="form-control" cols="50" rows="10" name="content" placeholder="상세설명을 입력하세요"></textarea></td>
</tr>
<tr>
<td><input type="file" name="img_name" alt="미리보기 이미지" onchange="previewImage(this)"/></td>
</tr>
<tr><td colspan="2" align="center">
 	<button type="submit" class="btn btn-default" onclick="insertProduct()">
      <span class="glyphicon glyphicon-check"></span>등록
    </button>
    <button type="button" class="btn btn-default" onclick="history.back()">
      <span class="glyphicon glyphicon-check"></span>뒤로가기
    </button>


<!-- <input type="text" name="content" placeholder="상세 설명을 입력하세요." size="40"><br> -->

</td>
</table>
</form>
</div>
</body>
</html>