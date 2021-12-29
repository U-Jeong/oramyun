<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 삭제</title>
<%-- <title>#{GoodsDTO.GOODS_NAME }</title> --%>
</head>
<body>
<form action="${pageContext.request.contextPath }/shop/goodsDeletePro" method="post">
상품번호 : <input type="text" name="GOODS_NO">
상품명 : <input type="text" name="GOODS_NAME" value="">
<input type="submit" class="btn" id="delete" value="삭제">
<button a href="${pageContext.request.contextPath }/shop/goodsList" class="btn" id="list">취소</button>
</form>

</body>
</html>