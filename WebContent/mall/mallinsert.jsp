<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가 페이지</title>
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
	var insert = document.insert;
	insert.action='mallInsertAction.GGZ';
	insert.submit();
}
</script>

<style type="text/css">
/* body, img, div, tr, td, th, table {
	border: 1px solid black;
} */

body {
	width: 100%;
	height: 100%;
	padding: 0px;
	margin: 0px;
}

img {
	width: 400px;
	height: 490px;
}

#preview {
	padding-top: 48px;
	margin-left: 23%;
	margin-right: 2%;
	float: left;
	width: 400px;
	height: 490px;
	overflow:hidden;
}

.tableContainer {
	padding-top: 48px;
	width: 400px;
	float: left;
	height: 490px;
}

table {
	width: 400px;
	height: 490px;
	border-collapse: collapse;
}

th, td {
	
}

th {
	text-align: right;
	font-size: 1.4em;
}

td {
	text-align: center;
	font-size: 1.3em;
}

.cttContainer {
	width: 54.8%;
	margin-left: 23%;
	font-size: 1.1em;
	padding-top: 20px;
}

.buttonContainer {
	width: 54.8%;
	margin-left: 23%;
	padding-top: 40px;
	
}

.button_set {
	width: 200px;
	height: 50px;
	font-size: 1.3em;
	border-radius: 10%;
	margin: 10px 35px;
	border: none;
	background-color: black;
	color: white;
	cursor: pointer;
}
.form-control{
	font-size:large;
}
select {
width: 200px; /* 원하는 너비설정 */
padding: .8em .5em; /* 여백으로 높이 설정 */ 
font-family: inherit; /* 폰트 상속 */ 
background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
border: 1px solid #999; border-radius: 0px; /* iOS 둥근모서리 제거 */
-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
-moz-appearance: none;
appearance: none;

}

select::-ms-expand {
    display: none;
}

</style>

</head>
<body>
	<form action="mallInsertAction.GGZ" name="insertPage" method="post" enctype="multipart/form-data">
		
		<div id="preview">
			
		</div>
		<div class="tableContainer">
			<table>
				<tr>
					<th colspan="3"
						style="text-align: left; font-size: 2em; height: 100px">
						<input type="file" name="img_name" onchange="previewImage(this)"/><br>
						<input type="text" name="name" class="form-control" size="60" placeholder="상품 이름을 입력하세요.(최대 15자)"></th>

				</tr>
				<tr height="25px">
					<th colspan="3"><hr style="border: 2px double gray;"></th>
				</tr>
				<tr>
					<th>제품번호</th>
					<td colspan="2">N/A</td>
				</tr>
				<tr>
					<th>카테고리</th>
					<td colspan="2"><select name="category" class="form-control">
					<%-- <c:if test="${vo.category=='toy' }">
					</c:if>>장난감</option> --%>
					<%-- <option value="clothing" 
						<c:if test="${vo.category=='clothing' }"></c:if>> 의류</option>
					<option value="acc"
							<c:if test="${vo.category=='acc' }"></c:if>> 악세사리</option>
					<option value="snack"
							<c:if test="${vo.categoryr=='snack' }"></c:if>> 과자</option>
					</select> --%>
					<option value="toy">장난감</option>
					<option value="clothing">의류</option>
					<option value="acc">악세사리</option>
					<option value="snack">과자</option>
					</select>
					</td>
				</tr>
				<tr>
					<th>판매일자</th>
					<td colspan="2">N/A</td>
				</tr>
				<tr>
					<th>판매가격</th>
					<td><input type="text" name="price" class="form-control" placeholder="가격을 입력하세요.(최대 6자리)" size="40"></td>
					
				</tr>

				<tr>
					<th>구매수량</th>
					<td>N/A</td>
				</tr>
			</table>
		</div>
		<div class="cttContainer" style="clear: both;">
			<h3>상품설명</h3>
			<textarea class="form-control"  cols="130" rows="10" name="content" placeholder="상세설명을 입력하세요 (최대 100자)"></textarea>
		</div>

		<div class="buttonContainer">
			
			<button type="submit" class="button_set" onclick="history.back()">뒤로가기</button>
			<button type="submit" class="button_set" onclick="insertProduct()">등록</button>
    		
    	</div>
		
	</form>
</body>
</html>