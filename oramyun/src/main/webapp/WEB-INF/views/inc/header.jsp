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
    <title>Karl - Fashion Ecommerce Template | Shop</title>

    <!-- Favicon  -->
    <link rel="icon" href="./resources/page/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="./resources/page/css/core-style.css">
    <link rel="stylesheet" href="./WEB-INF/views/main/style.css">

    <!-- Responsive CSS -->
    <link href="./resources/page/css/responsive.css" rel="stylesheet">
<title>Insert title here</title>
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
                <h6>Categories</h6>
                <ul id="menu-content" class="menu-content collapse out">
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#women" class="collapsed active">
                        <a href="#">Woman wear <span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="women">
                            <li><a href="#">Midi Dresses</a></li>
                            <li><a href="#">Maxi Dresses</a></li>
                            <li><a href="#">Prom Dresses</a></li>
                            <li><a href="#">Little Black Dresses</a></li>
                            <li><a href="#">Mini Dresses</a></li>
                        </ul>
                    </li>
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#man" class="collapsed">
                        <a href="#">Man Wear <span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="man">
                            <li><a href="#">Man Dresses</a></li>
                            <li><a href="#">Man Black Dresses</a></li>
                            <li><a href="#">Man Mini Dresses</a></li>
                        </ul>
                    </li>
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#kids" class="collapsed">
                        <a href="#">Children <span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="kids">
                            <li><a href="#">Children Dresses</a></li>
                            <li><a href="#">Mini Dresses</a></li>
                        </ul>
                    </li>
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#bags" class="collapsed">
                        <a href="#">Bags &amp; Purses <span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="bags">
                            <li><a href="#">Bags</a></li>
                            <li><a href="#">Purses</a></li>
                        </ul>
                    </li>
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#eyewear" class="collapsed">
                        <a href="#">Eyewear <span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="eyewear">
                            <li><a href="#">Eyewear Style 1</a></li>
                            <li><a href="#">Eyewear Style 2</a></li>
                            <li><a href="#">Eyewear Style 3</a></li>
                        </ul>
                    </li>
                    <!-- Single Item -->
                    <li data-toggle="collapse" data-target="#footwear" class="collapsed">
                        <a href="#">Footwear <span class="arrow"></span></a>
                        <ul class="sub-menu collapse" id="footwear">
                            <li><a href="#">Footwear 1</a></li>
                            <li><a href="#">Footwear 2</a></li>
                            <li><a href="#">Footwear 3</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>