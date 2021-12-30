<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%-- <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>GoodsList</title>
<link rel="stylesheet"	href="${pageContext.request.contextPath }/resources/css/list.css">
<link rel="stylesheet"	href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">
</head>
<body>
<div class="nav">
        <div class="logo">
            <img src="" alt="">
        </div>
        <div class="nav_but">
        	<c:if test="${sessionScope.member_email == 'admin@oramyun.com'}">
			<a href="${pageContext.request.contextPath }/shop/write.do" id="write">상품등록</a>
			<a href="${pageContext.request.contextPath }/shop/goodsModify" id="update">상품수정</a>
			<a href="${pageContext.request.contextPath }/shop/goodsDelete" id="delete">상품삭제</a>
			</c:if>	
			<a href="${pageContext.request.contextPath }/" id="main">메인화면</a>
        </div>
    </div>

    <section class="header">
        <div class="title">
            <img src="" alt="">
            <h1>Oramyun</h1>
            <p>다양한 라면을 즐겨보세요!</p>
            <button>Enjoy your ramen!</button>
        </div>
    </section>

    <section class="list_intro">
        <div class="container">
            <div class="list_intro_left">
                <h2>국내 상품뿐만 아니라 해외 라면도 저렴한 가격으로!</h2>
                <h1>오오오라면라면라면냠냠</h1>
                <p>라면 얼마나 맛있게요 일단 제 취향은 삼양라면에 계란 풀고 밥 말아먹는거 좋아하고, 안성탕면은 생라면으로 조지는 걸 좋아하고, 짜왕은 좀 잘 끓이고, 비빔면은 가끔 땡기긴하네요. </p>
            </div>
            <div class="list_intro_right">
                <button>더 알아보기</button>
            </div>
        </div>
    </section>

    <section class="serv_list">
        <div class="container">
            <div class="title">
                <h1>ORAMYUN LIST</h1>
                <ul>
                    <li><a href="">국내</a></li>
                    <li><a href="">해외</a></li>
                    <li><a href="">국물</a></li>
                    <li><a href="">비빔</a></li>
                </ul>
            </div>
            <div class="item_list">
            	<c:forEach var="goods" items="${goodslist }">
                <div class="card">
                    <div class="img">
                        <img src="" alt="">
                    </div>
                    <div class="text">
                        <h2>${goods.GOODS_NAME}</h2>
                        <p>${goods.GOODS_CONTENT}</p>
                        <button onclick="location.href='${pageContext.request.contextPath}/product_details?GOODS_NAME=${goods.GOODS_NAME}'"><i class="fas fa-check"></i> 사러가기</button>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="left">
                <h1>오오오라면라면</h1>
                <p>http://우리 사이트 어케쓰노?</p>
                <div class="sns">
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-facebook-square"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-github"></i>
                </div>
            </div>
            <div class="right">
                <div class="list">
                    <h2>CONTECT</h2>
                    <ul>
                        <li>contect #1</li>
                        <li>contect #2</li>
                        <li>contect #3</li>
                        <li>contect #4</li>
                    </ul>
                </div>
                <div class="list">
                    <h2>ABOUT</h2>
                    <ul>
                        <li>about #1</li>
                        <li>about #2</li>
                        <li>about #3</li>
                        <li>about #4</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="copy_right">
            <p>저작권 : 우리집 기장집</p>
        </div>
    </footer>
</body>
</html>
