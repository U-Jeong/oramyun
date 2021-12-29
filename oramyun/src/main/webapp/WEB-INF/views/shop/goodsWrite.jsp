<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<style type="text/css">
* {
	margin: auto;
}
a {
  text-decoration: none;
  color: #666;
}

h1 {
    text-align: center;
    padding: 50px 0;
    font-weight: normal;
    font-size: 2em;
    letter-spacing: 10px;
}  

.pad_5 {padding: 5px;}
.wdp_90 {width:90%}
.btn {border-radius:3px;padding:5px 11px;color:#fff !important; display:inline-block; 
	  background-color:#6b9ab8; border:1px solid #56819d;vertical-align:middle}
</style>
</head>
<body>
<br><br>
<h2 align="center">상품등록하자요</h2>
<div align="center">
</div>
<form name="frm" id="frm" action="${pageContext.request.contextPath }/shop/writePro" method="post">
<table align="center">
<tr>
	<th>상품명</th>
	<td>
		<input type="text" name="GOODS_NAME" id="GOODS_NAME" placeholder="상품이름입력" size="40" 
						style="padding:10px;">
	</td>
</tr>
<!-- <div class="form_section" align="center"> -->
<!-- 	<div class="form_section_title"> -->
<!--         <label>상품 이미지</label> -->
<!-- 	</div> -->
<!--     <div class="form_section_content"> -->
<!--     	<input type="file" id ="fileItem" name='uploadFile' style="height: 30px;"> -->
<!-- 	</div> -->
<!-- </div>   -->
<!-- <tr> -->
<!-- 	<th>상품 이미지</th> -->
<!-- 	<td> -->
<!-- 		<input type="file" id ="fileItem" name='uploadFile' style="height: 30px; padding-top:5px;"> -->
<!--     	파일 여러개 -->
<!-- 		<!-- <input type="file" multiple> --> -->
<!-- 	</td> -->
<!-- </tr> -->
<tr>
	<th>상품설명</th>
	<td>
		<textarea rows="30" cols="100" id="GOODS_CONTENT" name="GOODS_CONTENT"></textarea>
	</td>
</tr>
<!-- <tr> -->
<!-- 	<th>카테고리 </th> -->
<!-- 		<td> -->
<!-- 			<select name="GOODS_CATEGORY"> -->
<!-- 				<option value="outer">outer</option> -->
<!-- 				<option value="top">top</option> -->
<!-- 				<option value="one-piece">one-piece</option> -->
<!-- 				<option value="bottom">bottom</option> -->
<!-- 				<option value="acc">acc</option> -->
<!-- 			</select> -->
<!-- 		</td> -->
<!-- </tr> -->
<tr>
	<th>상품할인가</th>
	<td>
		<input type="text" name="GOODS_SALE_PRICE" id="GOODS_SALE_PRICE" placeholder="상품할인가" size="40" 
						style="padding:10px;">
	</td>
</tr>
<tr>
	<th>상품판매가</th>
	<td>
		<input type="text" name="GOODS_SELL_PRICE" id="GOODS_SELL_PRICE" placeholder="상품판매가" size="40" 
						style="padding:10px;">
	</td>
</tr>
<!-- 			<tr> -->
<!-- 				<th>PICK</th> -->
<!-- 				<td><input type="checkbox" name="PICK" id="PICK" value=" " -->
<!-- 					style="padding: 10px;"> 공백 <input type="checkbox" -->
<!-- 					name="PICK" id="PICK" value="BEST" style="padding: 10px;"> -->
<!-- 					BEST <input type="checkbox" name="PICK" id="PICK" value="MD PICK" -->
<!-- 					style="padding: 10px;"> MD PICK <input type="checkbox" -->
<!-- 					name="PICK" id="PICK" value="MUSTHAVE" style="padding: 10px;"> -->
<!-- 					MUSTHAVE <input type="hidden" name="GOODS_PICK" id="GOODS_PICK" -->
<!-- 					value=""></td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<th>상품사이즈</th> -->
<!-- 				<td><input type="checkbox" name="SIZE" value="FREE" -->
<!-- 					style="padding: 10px;"> FREE <input type="checkbox" -->
<!-- 					name="SIZE" value="S" style="padding: 10px;"> S <input -->
<!-- 					type="checkbox" name="SIZE" value="M" style="padding: 10px;"> -->
<!-- 					M <input type="checkbox" name="SIZE" value="L" -->
<!-- 					style="padding: 10px;"> L <input type="checkbox" -->
<!-- 					name="SIZE" value="XL" style="padding: 10px;"> XL <input -->
<!-- 					type="hidden" name="GOODS_ATT_SIZE" id="GOODS_ATT_SIZE" value=""> -->
<!-- 				</td> -->
<!-- 			</tr> -->

<!-- 			<tr> -->
<!-- 				<th>상품색상</th> -->
<!-- 				<td><input type="text" name="GOODS_ATT_COLOR" -->
<!-- 					id="GOODS_ATT_COLOR" placeholder="컬러" size="40" -->
<!-- 					style="padding: 10px;"> -->
<!-- 			</tr> -->

			<tr>
				<th>상품수량</th>
				<td><input type="text" name="GOODS_ATT_AMOUNT"
					id="GOODS_ATT_AMOUNT" placeholder="상품수량" size="40"
					style="padding: 10px;">
				</td>
			</tr>
</table>
		<div align="center">
			<input type="submit" class="btn" id="write" value="작성하기">
			<button a href="${pageContext.request.contextPath }/goodsList"
				class="btn" id="list">목록으로</button>
		</div>
</form>
<script type="text/javascript">
function fn_insertBoard() { // 유효성체크

	var comSubmit = new ComSubmit("frm"); // 객체생성
	comSubmit.setUrl("<c:url value='/shop/goodsWrite.do' />"); // url설정

    // 게시글 제목 필요
    if(!$("#GOODS_NAME").val()){
        alert("제목를 입력해주세요.");
        $("#GOODS_NAME").focus();
        return false;
    }
	 	// 게시글 내용 필요
    if(CKEDITOR.instances.GOODS_CONTENT.getData() =='' 
            || CKEDITOR.instances.GOODS_CONTENT.getData().length ==0){
        alert("내용을 입력해주세요.");
        $("#GOODS_CONTENT").focus();
        return false;
    }
	 	
 	// 상품원가 
    if(!$("#GOODS_ORIGIN_PRICE").val()){
        alert("상품원가를 입력해주세요.");
        $("#GOODS_ORIGIN_PRICE").focus();
        return false;
    }
 	// 할인가
    if(!$("#GOODS_SALE_PRICE").val()){
        alert("상품할인가를 입력해주세요.");
        $("#GOODS_SALE_PRICE").focus();
        return false;
    }
 	// 판매가
    if(!$("#GOODS_SELL_PRICE").val()){
        alert("판매가를 입력해주세요.");
        $("#GOODS_SELL_PRICE").focus();
        return false;
    }
	 // 컬러
    if(!$("#GOODS_ATT_COLOR").val()){
        alert("상품컬러를 입력해주세요.");
        $("#GOODS_ATT_COLOR").focus();
        return false;
    }
	 // 상품 수량
    if(!$("#GOODS_ATT_AMOUNT").val()){
        alert("상품수량을 입력해주세요.");
        $("#GOODS_ATT_AMOUNT").focus();
        return false;
    }
	comSubmit.submit();
}

/* 이미지 업로드 */
$("input[type='file']").on("change", function(e){
// 	alert("동작");

	let formData = new FormData();
	let fileInput = $('input[name="uploadFile"]');
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
	console.log("fileList : " + fileList);
	console.log("fileObj : " + fileObj);
	
	console.log("fileName : " + fileObj.name);
	console.log("fileSize : " + fileObj.size);
	console.log("fileType(MimeType) : " + fileObj.type);
	
	if(!fileCheck(fileObj.name, fileObj.size)){
		return false;
	}
// 	alert("통과");
	
	formData.append("uploadFile", fileObj);
	
	$.ajax({
		url: '/admin/uploadAjaxAction',
    	processData : false,
    	contentType : false,
    	data : formData,
    	type : 'POST',
    	dataType : 'json'
	});
});

/* var, method related with attachFile */
let regex = new RegExp("(.*?)\.(jpg|png)$");
let maxSize = 1048576; //1MB	

function fileCheck(fileName, fileSize){

	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
		  
	if(!regex.test(fileName)){
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	
	return true;		
	
}
</script>
</body>
</html>