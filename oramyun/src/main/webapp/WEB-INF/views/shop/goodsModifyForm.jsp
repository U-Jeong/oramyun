<%-- <%@page import="com.oramyun.goods.GoodsDTO"%> --%>
<%-- <%@page import="com.oramyun.goods.GoodsDAO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품수정</title>
<style type="text/css">


</style>
</head>
<body>
<div align="center">
<form action="${pageContext.request.contextPath}/shop/goodsModifyPro" method="post">
상품번호 : <input type="text" name="GOODS_NO" id="GOODS_NO" class="GOODS_NO">
상품카테고리 : <input type="text" name="GOODS_CATEGORY" id="GOODS_CATEGORY" class="GOODS_CATEGORY">
상품명 : <input type="text" name="GOODS_NAME" id="GOODS_NAME" class="GOODS_NAME" >
상품설명 : <input type="text" name="GOODS_CONTENT" id="GOODS_CONTENT" class="GOODS_CONTENT">
상품판매가 : <input type="text" name="GOODS_SELL_PRICE" id="GOODS_SELL_PRICE" class="GOODS_SELL_PRICE">
상품할인가 : <input type="text" name="GOODS_SALE_PRICE" id="GOODS_SALE_PRICE" class="GOODS_SALE_PRICE">
상품수량 : <input type="text" name="GOODS_ATT_AMOUNT" id="GOODS_ATT_AMOUNT" class="GOODS_ATT_AMOUNT">
<input type="submit" value="상품수정">
<%-- </c:forEach> --%>
<button a href="${pageContext.request.contextPath }/shop/goodsDelete" class="btn" id="delete">상품삭제</button>
<button a href="${pageContext.request.contextPath }/goodsList" class="btn" id="list">상품목록</button>
</form>	
</div>
</html>
</body>
</html>