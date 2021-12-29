<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<!-- 공통 css -->
<link rel="stylesheet" media="all" href="../resources/css/Oramyun.css">
<link rel="stylesheet" media="all" href="../resources/oramyun/portal/cmmCss/cmm-importd5f7.css?ver=2.0"/>
<link rel="stylesheet" media="all" href="../resources/oramyun/portal/cmmCss/swiper.css"/>

<!-- 공통 js -->
<script type="text/javascript" src="../resources/oramyun/portal/cmmJs/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../resources/oramyun/portal/cmmJs/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../resources/oramyun/portal/cmmJs/swiper.min.js"></script>
<script type="text/javascript" src="../resources/oramyun/portal/cmmJs/lazyload.min.js"></script>
<script src="../resources/code.jquery.com/jquery-1.12.4.js"></script>

<!-- datepicker -->
<link rel="stylesheet" media="all" href="../resources/oramyun/portal/cmmCss/datepicker_style.css"/>
<script src="../resources/ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="../resources/code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
<br><br>
<!-- header -->
<jsp:include page="/WEB-INF/views/inc/header_o.jsp"></jsp:include>
<%-- <h2>${title}</h2> --%>
<div align="center">
<h2>상품명?</h2>
</div>
<form action="${pageContext.request.contextPath }/shop/writePro" method="post">
<table align="center">
<tr>
	<th>상품 카테고리</th>
	<td>
		<input type="text" name="GOODS_CATOGORY" id="GOODS_CATOGORY">
	</td>
</tr>
<tr>
	<th>상품명</th>
	<td>
		<input type="text" name="GOODS_NAME" id="GOODS_NAME">
	</td>
</tr>
<tr>
	<th>상품설명</th>
	<td>
		<input type="text" name="GOODS_CONTENT" id="GOODS_CONTENT">
	</td>
</tr>
<tr>
	<th>상품원가</th>
	<td>
		<input type="text" name="GOODS_ORIGIN_PRICE" id="GOODS_ORIGIN_PRICE">
	</td>
</tr>
<tr>
	<th>상품할인가</th>
	<td>
		<input type="text" name="GOODS_SALE_PRICE" id="GOODS_SALE_PRICE">
	</td>
</tr>
<tr>
	<th>상품판매가</th>
	<td>
		<input type="text" name="GOODS_SELL_PRICE" id="GOODS_SELL_PRICE">
	</td>
</tr>
<tr>
	<th>상품 등록일</th>
	<td>
		<input type="text" name="GOODS_DATE" id="GOODS_DATE">
	</td>
</tr>
<tr>
	<th>상품키워드</th>
	<td>
		<input type="text" name="GOODS_KEYWORD" id="GOODS_KEYWORD">
	</td>
</tr>
<tr>
	<th>상품판매가</th>
	<td>
		<input type="text" name="GOODS_PICK" id="GOODS_PICK">
	</td>
</tr>



</table>

				
	<div align="center">
	<input type="submit" class="btn" id="write" value="작성하기">
	<button a href="${pageContext.request.contextPath }/shop/goodList" class="btn" id="list">목록으로</button>
	</div>

</form>
</body>
</html>