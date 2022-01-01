<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>오라면 - 국내 최고 라면전문 쇼핑몰|</title>

    <!-- Favicon  -->
    <link rel="icon" href="./resources/img/oramylogo.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="./resources/page/css/core-style.css">
    <link rel="stylesheet" href="./WEB-INF/views/main/style.css">

    <!-- Responsive CSS -->
    <link href="./resources/page/css/responsive.css" rel="stylesheet">
    
    
<title>Index</title>
</head>
<body>
<div class="catagories-side-menu">
        <!-- Close Icon -->
        <div id="sideMenuClose">
            <i class="ti-close"></i>
        </div>
        <!--  Side Nav  -->
        <div class="nav-side-menu">
            <div class="menu-list">
                <h6>카테고리</h6>
                <ul id="menu-content" class="menu-content collapse out">
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#women" class="collapsed active">
                        <a href="#">국내 <span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="women">
                            <li><a href="#">매운국물</a></li>
                            <li><a href="#">순한국물</a></li>
                            <li><a href="#">매운비빔</a></li>
                            <li><a href="#">순한비빔</a></li>
<!--                             <li><a href="#">Mini Dresses</a></li> -->
                        </ul>
                    </li>
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#man" class="collapsed">
                        <a href="#">해외 <span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="man">
                            <li><a href="#">매운국물</a></li>
                            <li><a href="#">순한국물</a></li>
                            <li><a href="#">매운비빔</a></li>
                            <li><a href="#">순한비빔</a></li>
                        </ul>
                    </li>
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#kids" class="collapsed">
                        <a href="#">국물<span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="kids">
                            <li><a href="#">매운</a></li>
                            <li><a href="#">순한</a></li>
                        </ul>
                    </li>
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#bags" class="collapsed">
                        <a href="#">비빔<span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="bags">
                            <li><a href="#">매운</a></li>
                            <li><a href="#">순한</a></li>
                        </ul>
                    </li>
                    <!-- Single Item -->
<!--                     <li data-toggle="collapse" data-target="#eyewear" class="collapsed"> -->
<!--                         <a href="#">Eyewear&amp; <span class="arrow"></span></a> -->
<!--                         <ul class="sub-menu collapse" id="eyewear"> -->
<!--                             <li><a href="#">Eyewear Style 1</a></li> -->
<!--                             <li><a href="#">Eyewear Style 2</a></li> -->
<!--                             <li><a href="#">Eyewear Style 3</a></li> -->
<!--                         </ul> -->
<!--                     </li> -->
                    <!-- Single Item -->
<!--                     <li data-toggle="collapse" data-target="#footwear" class="collapsed"> -->
<!--                         <a href="#">Footwear <span class="arrow"></span></a> -->
<!--                         <ul class="sub-menu collapse" id="footwear"> -->
<!--                             <li><a href="#">Footwear 1</a></li> -->
<!--                             <li><a href="#">Footwear 2</a></li> -->
<!--                             <li><a href="#">Footwear 3</a></li> -->
<!--                         </ul> -->
<!--                     </li> -->
                </ul>
            </div>
        </div>
    </div>

    <div id="wrapper">

        <!-- ****** Header Area Start ****** -->
        <header class="header_area">
            <!-- Top Header Area Start -->
            <div class="top_header_area">
                <div class="container h-100">
                    <div class="row h-100 align-items-center justify-content-end">

                        <div class="col-12 col-lg-7">
                            <div class="top_single_area d-flex align-items-center">
                                <!-- Logo Area -->
                                <div class="top_logo">
                                    <a href="#"><img src="./resources/img/characteroram.png" alt=""></a>
                                </div>
                                <!-- Cart & Menu Area -->
                                <div class="header-cart-menu d-flex align-items-center ml-auto">
                                    <!-- Cart Area -->
                                    <div class="cart">
                                        <a href="#" id="header-cart-btn" target="_blank"><span class="cart_quantity">2</span> <i class="ti-bag"></i> 장바구니 ${cart.totalPrice }</a>
                                        <!-- Cart List Area Start -->
                                        <ul class="cart-list">
                                            <li>
                                                <c:forEach var="cart" items="${cartlist }">
                                                <a href="#" class="image"><img src="./resources/page/img/product-img/product-10.jpg" class="cart-thumb" alt=""></a>
                                                <div class="cart-item-desc">
                                                    <h6><a href="#">Women's Fashion ${cart.GOODS_NAME }</a></h6>
                                                    <p>1x - ${cart.GOODS_AMOUNT }<span class="price">$10 ${cart.totalPrice }</span></p>
                                                </div>
                                                <span class="dropdown-product-remove"><i class="icon-cross"></i></span>
                                                </c:forEach>
                                            </li>
                                            <li>
                                                <a href="#" class="image"><img src="./resources/page/img/product-img/product-11.jpg" class="cart-thumb" alt=""></a>
                                                <div class="cart-item-desc">
                                                    <h6><a href="#">Women's Fashion ${cart.GOODS_NAME }</a></h6>
                                                    <p>1x - ${cart.GOODS_AMOUNT }<span class="price">$10 ${cart.GOODS_SELL_PRICE - cart.GOODS_SALE_PRICE }</span></p>
                                                </div>
                                                <span class="dropdown-product-remove"><i class="icon-cross"></i></span>
                                            </li>
                                            <li class="total">
                                                <span class="pull-right">Total: $20.00 ${cart.totalPrice }</span>
                                                <a href="${pageContext.request.contextPath }/getCartList?member_email=${sessionScope.member_email}" class="btn btn-sm btn-cart">Cart</a>
                                                <a href="${pageContext.request.contextPath }/order" class="btn btn-sm btn-checkout">Order</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="header-right-side-menu ml-15">
                                        <a href="#" id="sideMenuBtn"><i class="ti-menu" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Top Header Area End -->
            <div class="main_header_area">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 d-md-flex justify-content-between">
                            <!-- Header Social Area -->
<!--                             <div class="header-social-area"> -->
<!--                                 <a href="#"><span class="karl-level">Share</span> <i class="fa fa-pinterest" aria-hidden="true"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> -->
<!--                                 <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> -->
<!--                             </div> -->
                            <!-- Menu Area -->
                            <div class="main-menu-area">
                                <nav class="navbar navbar-expand-lg align-items-start">

                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#karl-navbar" aria-controls="karl-navbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"><i class="ti-menu"></i></span></button>

                                    <div class="collapse navbar-collapse align-items-start collapse" id="karl-navbar">
                                        <ul class="navbar-nav animated" id="nav">
                                            <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath }/">홈으로</a></li>
                                            <li class="nav-item dropdown">
                                                <a class="nav-link dropdown-toggle" href="#" id="karlDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">페이지</a>
                                                <div class="dropdown-menu" aria-labelledby="karlDropdown">
                                                		<a class="dropdown-item" href="${pageContext.request.contextPath }/shop">제품 보러가기</a>
                                                        <a class="dropdown-item" href="${pageContext.request.contextPath }/product-details">상품 세부 정보</a>
                                                        <a class="dropdown-item" href="${pageContext.request.contextPath }/event">이벤트</a>
                                                        <a class="dropdown-item" href="${pageContext.request.contextPath }/racipe">우수 라시피</a>
                                                    	<a class="dropdown-item" href="${pageContext.request.contextPath }/notice">공지사항</a>
	                                                    <a class="dropdown-item" href="${pageContext.request.contextPath }/FAQ">FAQ</a>
                                                </div>
                                            </li>
                                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/review"><span class="karl-level">핫한</span> 리뷰</a></li>
											<c:choose>
												<c:when test="${empty sessionScope.member_email }">
											<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/login">로그인</a></li>
                                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/join">회원가입</a></li>
												</c:when>
												<c:otherwise>
											<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
                                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/join">회원가입</a></li>
												</c:otherwise>
											</c:choose>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                            <!-- Help Line -->
                            <div class="help-line">
                                <a href="tel:+346573556778"><i class="ti-headphone-alt"></i> +34 657 3556 778</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ****** Header Area End ****** -->

        <!-- ****** Top Discount Area Start ****** -->
        <section class="top-discount-area d-md-flex align-items-center">
            <!-- 정기구독혜택 Area -->
            <div class="single-discount-area">
                <h5>정기구독 &amp; 매 5번째 주문 시 무료배송!</h5>
                <h6><a href="#">라면 정기구독하기</a></h6>
            </div>
            <!-- 첫 회원혜택 Area -->
            <div class="single-discount-area">
                <h5>회원가입 후 첫 주문은 최대 20% 할인!</h5>
                <h6>가입축하 코드: 라면JOA</h6>
            </div>
            <!-- 추천인 혜택 Area -->
            <div class="single-discount-area">
                <h5>추천인 등록되면 친구와 20% 동반할인!</h5>
                <h6>날 추천해준 친구가 5명 이상이면 추가 혜택이!</h6>
            </div>
        </section>
        <!-- ****** Top Discount Area End ****** -->

        <!-- ****** Welcome Slides Area Start ****** -->
        <section class="welcome_area">
            <div class="welcome_slides owl-carousel">
                <!-- Single Slide Start -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(./resources/img/quiz_ramyun.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="bounceInDown" data-delay="0" data-duration="500ms">* 정답 시 포인트 3000점 적립!</h6>
                                    <h2 data-animation="fadeInUp" data-delay="500ms" data-duration="500ms">라면을 맞춰라!</h2>
                                    <a href="#" class="btn karl-btn" data-animation="fadeInUp" data-delay="1s" data-duration="500ms">맞추러 가기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Slide Start -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(./resources/img/ramyun_vs.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="fadeInDown" data-delay="0" data-duration="500ms">*투표한 라면 우승 시 10개 무료 증정</h6>
                                    <h2 data-animation="fadeInUp" data-delay="500ms" data-duration="500ms">통통라면 대결</h2>
                                    <a href="#" class="btn karl-btn" data-animation="fadeInLeftBig" data-delay="1s" data-duration="500ms">투표하러 가기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Slide Start -->
                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url(./resources/img/rani_toon.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="fadeInDown" data-delay="0" data-duration="500ms">* 양은냄비로 만들면 3배 맛있다!</h6>
                                    <h2 data-animation="bounceInDown" data-delay="500ms" data-duration="500ms">양은냄비 특화 라시피 공개!</h2>
                                    <a href="#" class="btn karl-btn" data-animation="fadeInRightBig" data-delay="1s" data-duration="500ms">라시피 보러 가기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ****** Welcome Slides Area End ****** -->

        <!-- ****** Top Catagory Area Start ****** -->
        <section class="top_catagory_area d-md-flex clearfix">
            <!-- Single Catagory -->
            <div class="single_catagory_area d-flex align-items-center bg-img" style="background-image: url(./resources/img/best_racipes1.jpg);">
                <div class="catagory-content">
                    <h6>나의 라시피는</h6>
                    <h2>나만의 라시피 자랑대회</h2>
                    <a href="#" class="btn karl-btn">라시피 뽐내러 가기</a>
                </div>
            </div>
            <!-- Single Catagory -->
            <div class="single_catagory_area d-flex align-items-center bg-img" style="background-image: url(./resources/img/ramyun_labo.jpg);">
                <div class="catagory-content">
                    <h6>라면은 무조건 건강에 나쁘다?</h6>
                    <h2>오라면의 라면분석 보고서</h2>
                    <a href="#" class="btn karl-btn">라면 심층분석 들여다보기</a>
                </div>
            </div>
        </section>
        <!-- ****** Top Catagory Area End ****** -->

        <!-- ****** Quick View Modal Area Start ****** -->
        <div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-labelledby="quickview" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>

                    <div class="modal-body">
                        <div class="quickview_body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-12 col-lg-5">
                                        <div class="quickview_pro_img">
                                            <img src="./resources/page/img/product-img/product-1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-7">
                                        <div class="quickview_pro_des">
                                            <h4 class="title">Boutique Silk Dress</h4>
                                            <div class="top_seller_product_rating mb-15">
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                            </div>
                                            <h5 class="price">$120.99 <span>$130</span></h5>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia expedita quibusdam aspernatur, sapiente consectetur accusantium perspiciatis praesentium eligendi, in fugiat?</p>
                                            <a href="#">View Full Product Details</a>
                                        </div>
                                        <!-- 장바구니에 담기 Form -->
                                        <form class="cart" method="post">
                                            <div class="quantity">
                                                <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>

                                                <input type="number" class="qty-text" id="qty" step="1" min="1" max="12" name="quantity" value="1">

                                                <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                            </div>
                                            <button type="submit" name="addtocart" value="5" class="cart-submit">장바구니에 담기</button>
                                            <!-- Wishlist -->
                                            <div class="modal_pro_wishlist">
                                                <a href="wishlist.html" target="_blank"><i class="ti-heart"></i></a>
                                            </div>
                                            <!-- Compare -->
                                            <div class="modal_pro_compare">
                                                <a href="compare.html" target="_blank"><i class="ti-stats-up"></i></a>
                                            </div>
                                        </form>

                                        <div class="share_wf mt-30">
                                            <p>Share With Friend</p>
                                            <div class="_icon">
                                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                                <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ****** Quick View Modal Area End ****** -->

        <!-- ****** New Arrivals Area Start ****** -->
        <section class="new_arrivals_area section_padding_100_0 clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_heading text-center">
                            <h2>상품 목록</h2>
                        </div>
                    </div>
                </div>
            </div>

            <div class="karl-projects-menu mb-100">
                <div class="text-center portfolio-menu">
                    <button class="btn active" data-filter="*">전체</button>
                    <button class="btn" data-filter=".women">국내</button>
                    <button class="btn" data-filter=".man">해외</button>
                    <button class="btn" data-filter=".access">궁물</button>
                    <button class="btn" data-filter=".shoes">비빔</button>
<!--                     <button class="btn" data-filter=".kids"></button> -->
                </div>
            </div>

            <div class="container">
                <div class="row karl-new-arrivals">

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.2s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/1.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90 ${goods.GOODS_SELL_PRICE }</h4>
                            <p>평범한 수준을 한참 뛰어넘은 맵디 매운 라면 ${goods.GOODS_NAME }</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.3s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/2.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item access wow fadeInUpBig" data-wow-delay="0.4s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/3.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item shoes wow fadeInUpBig" data-wow-delay="0.5s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/4.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>

                    <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/5.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/6.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/7.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/8.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/9.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/10.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/11.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/12.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/13.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/14.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/15.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/16.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/17.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/18.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/19.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                    
                      <!-- Single gallery Item Start -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig" data-wow-delay="0.6s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/20.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>

                    <!-- Single gallery Item -->
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item kids man wow fadeInUpBig" data-wow-delay="0.7s">
                        <!-- Product Image -->
                        <div class="product-img">
                            <img src="./resources/img/21.png" alt="">
                            <div class="product-quicview">
                                <a href="#" data-toggle="modal" data-target="#quickview"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <!-- Product Description -->
                        <div class="product-description">
                            <h4 class="product-price">$39.90</h4>
                            <p>Jeans midi cocktail dress</p>
                            <!-- 장바구니에 담기 -->
                            <a href="#" class="add-to-cart-btn">장바구니에 담기</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ****** 상품 목록 End ****** -->

        <!-- ****** Offer Area Start ****** -->
        <section class="offer_area height-500 section_padding_100 bg-img" style="background-image: url(./resources/img/todays_ram.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-end justify-content-end">
                    <div class="col-12 col-md-8 col-lg-6">
                        <div class="offer-content-area wow fadeInUp" data-wow-delay="1s">
                            <h2>로제 rose<br> <span class="karl-level">오늘의 라면!</span>
                            불닭볶음면</h2>
                            <p>* 출시 기념 할인 판매</p>
                            <div class="offer-product-price">
                                
                                <h4>1Box</h4><h3><span class="regular-price">30,000원</span> 15,000원</h3>
                            </div>
                            <a href="#" class="btn karl-btn mt-30">바로 주문하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ****** Offer Area End ****** -->

        <!-- ****** Popular Brands Area Start ****** -->
        <section class="karl-testimonials-area section_padding_100">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_heading text-center">
                            <h2>먹어본 라면 리뷰</h2>
                        </div>
                    </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col-12 col-md-8">
                        <div class="karl-testimonials-slides owl-carousel">

                            <!-- Single Testimonial Area -->
                            <div class="single-testimonial-area text-center">
                                <span class="quote">"</span>
                                <h6>원래 매운맛만 먹던 불닭매니아였지만, 요새는 파릇파릇한 야채라면이 땡겨서 이번엔
		                            야채라면만 3박스 시켰습니다~! 친정이랑 언니네랑 같이 나눠먹으니 일주일만에 또 시켰네요~! </h6>
                                <div class="testimonial-info d-flex align-items-center justify-content-center">
                                    <div class="tes-thumbnail">
                                        <img src="./resources/img/review1.jpeg" alt="">
                                    </div>
                                    <div class="testi-data">
                                        <p>맵찔이_kky2101</p>
                                        <span>경기 파주시 개마고원동</span>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Testimonial Area -->
                            <div class="single-testimonial-area text-center">
                                <span class="quote">"</span>
                                <h6> 매달마다 10박스씩 주문했는데 이번엔 이벤트로 5박스가 더 와서 행복합니다!
                                늘 먹던 라면이 날 추워지니 더 맛있어져서 큰일이에요. 우리 삥또가 저보다 라면을 더 반기네요. </h6>
                                <div class="testimonial-info d-flex align-items-center justify-content-center">
                                    <div class="tes-thumbnail">
                                        <img src="./resources/img/review2.jpeg" alt="">
                                    </div>
                                    <div class="testi-data">
                                        <p>라면없인못살아_b13bbls</p>
                                        <span>경주시 왕릉면 왕자동</span>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Testimonial Area -->
                            <div class="single-testimonial-area text-center">
                                <span class="quote">"</span>
                                <h6> 다음달부터 다이어트한다고 와이프랑 약속해서 이번 주문으로 원없이 라면 먹어보렵니다
                                회사에서 주3일씩 야근하면서 하루에 6봉씩 먹습니다. 사랑합니다 오라면 </h6>
                                <div class="testimonial-info d-flex align-items-center justify-content-center">
                                    <div class="tes-thumbnail">
                                        <img src="./resources/img/review3.jpeg" alt="">
                                    </div>
                                    <div class="testi-data">
                                        <p>면발김과장_kimtongtong3306</p>
                                        <span>판교 밀레니얼 비즈니스센터 3층</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- ****** Popular Brands Area End ****** -->

        <!-- ****** Footer Area Start ****** -->
        <footer class="footer_area">
            <div class="container">
                <div class="row">
                    <!-- Single Footer Area Start -->
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="single_footer_area">
                            <div class="footer-logo">
<!--                                 <img src="./resources/img/characteroram.png" alt=""> -->
                            </div>
                            <div class="copywrite_text d-flex align-items-center">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">오라면조</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">오라면팀</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Area Start -->
                    <div class="col-12 col-sm-6 col-md-3 col-lg-2">
                        <div class="single_footer_area">
                            <ul class="footer_widget_menu">
                                <li><a href="#">오라면은?</a></li>
                                <li><a href="#">오라면 블로그</a></li>
                                <li><a href="#">자주 묻는 질문</a></li>
                                <li><a href="#">환불문의</a></li>
                                <li><a href="#">상담하기</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Area Start -->
                    <div class="col-12 col-sm-6 col-md-3 col-lg-2">
                        <div class="single_footer_area">
                            <ul class="footer_widget_menu">
                                <li><a href="#">나의 계정</a></li>
                                <li><a href="#">배송현황조회</a></li>
                                <li><a href="#">정책</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Single Footer Area Start -->
                    <div class="col-12 col-lg-5">
                        <div class="single_footer_area">
                            <div class="footer_heading mb-30">
                                <h6>오라면의 할인/이벤트 혜택 소식 받아보기</h6>
                            </div>
                            <div class="subscribtion_form">
                                <form action="#" method="post">
                                    <input type="email" name="mail" class="mail" placeholder="Your email here">
                                    <button type="submit" class="submit">소식지 구독</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="line"></div>

                <!-- Footer Bottom Area Start -->
                <div class="footer_bottom_area">
                    <div class="row">
                        <div class="col-12">
                            <div class="footer_social_area text-center">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- ****** Footer Area End ****** -->
    </div>
    <!-- /.wrapper end -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="./resources/page/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="./resources/page/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="./resources/page/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="./resources/page/js/plugins.js"></script>
    <!-- Active js -->
    <script src="./resources/page/js/active.js"></script>
</body>
</html>