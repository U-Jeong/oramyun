<%-- <%@page import="com.oramyun.goods.GoodsDTO"%> --%>
<%-- <%@page import="com.oramyun.goods.GoodsDAO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodsModifyForm</title>
</head>
<body>
<div align="center">
<form action="${pageContext.request.contextPath}/shop/goodsModifyPro" method="post">
<c:forEach var="goods" items="${goods }">
상품번호 : <input type="text" name="name"><c:out value="${goods.getGOODS_NO()}"/><br>
상품명 : <input type="text" name="id" ><c:out value="${goods.getGOODS_NAME()}"/><br>
<input type="submit" value="상품수정">
</c:forEach>
<button a href="${pageContext.request.contextPath }/shop/goodsDelete" class="btn" id="delete">상품삭제</button>
<button a href="${pageContext.request.contextPath }/shop/goodsList" class="btn" id="list">상품목록</button>
</form>	
</div>
</html>
</body>
</html>