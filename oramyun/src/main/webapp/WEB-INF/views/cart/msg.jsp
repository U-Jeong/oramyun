<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/views/cart/msg.jsp</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty sessionScope.member_email }">
			<script type="text/javascript">
				alert("로그인 먼저하셈");
				location.href="${pageContext.request.contextPath}/join";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("장바구니 등록완료");
				history.back();
			</script>
		</c:otherwise>
	</c:choose>


</body>
</html>