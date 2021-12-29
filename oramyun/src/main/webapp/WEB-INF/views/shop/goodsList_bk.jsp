<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%-- <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>상품리스트</title>
<!-- jquery script 추가 -->
<script type="text/javascript">
function gett() {
	var GOODS_NO = document.getElementById("GOODS_NO").value;
	alert(GOODS_NO);
	location.href='${pageContext.request.contextPath }/shop/goodsModify;
}
</script>
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

<style>

.font1 {
	font-size: 14px;
    color: #666;
    letter-spacing: -0.5px;
    line-height: 24px;
    white-space: normal;
    line-height: 27px;
}

.font2 {
	display: block;
    font-size: 16px;
    font-weight: 400;
    color: #333;
    font-family: unset;
    line-height: 27px;
}

/* css 초기화  */

html, body, div, span, applet, object, iframes, h1, h2, h3, h4, h5, h6,
   p, blockquote, pre, a, abbr, acronym, address, big, quotes, code, del,
   dfn, em, img, ins, kbd, q, s, samp, small, strike, sub, sup, tt, var, u,
   i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table,
   caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
   details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
   output, ruby, section, summary, time, mark, audio, video {
   margin: 0;
   padding: 0;
   border: 0;
   
   do: inherit;
   vertical-align: baseline;
}
article, aside, details, figcaption, figure, footer, header, hgroup,
   menu, nav, section {
   display: block;
}
blockquote, q {
   quotes: none;
}
blockquote : before, blockquote : after, q : before, q : after {
   content: '';
   content: none;
}
table {
   border-collapse: collapse;
   border-spacing: 0;
}
/*css 초기화*/
.card {
   float:left;
   height: 500px;
   width: 20%;
   border-radius: 15px;
   display: inline-block;
   margin-top: 30px;
   margin-left: 50px;
   margin-bottom: 30px;
   position: relative;
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
   overflow: hidden;
}
.card-header {
   -webkit-transition: 0.5s; /*사파리 & 크롬*/
    -moz-transition: 0.5s;  /*파이어폭스*/
    -ms-transition: 0.5s;   /*인터넷 익스플로러*/
    -o-transition: 0.5s;  /*오페라*/
    transition: 0.5s;
   width: 100%;
   height: 270px;
   border-radius: 15px 15px 0 0;
   background-image: url("resources/images/no_image.png");
   background-size: 100% 280px;
   background-repeat: no-repeat;   
}
.card:hover .card-header  {
   opacity: 0.8;
   height: 100px;
}
.card-header-is_closed{
    background-color: #EF5A31 ;
    color: #FFF ;
    font-weight: bold ;
    text-align: center ;
    float: right;
    margin: 15px 15px 0 0;
    border-radius: 50%;
    font-weight: bold;
    padding: 10px 10px;
    line-height: 20px;
}
.card-header-is_closed2{
    background-color: #3fb50e ;
    color: #FFF ;
    font-weight: bold ;
    text-align: center ;
    float: right;
    margin: 15px 15px 0 0;
    border-radius: 50%;
    font-weight: bold;
    padding: 10px 10px;
    line-height: 20px;
}
h1 {
    text-align: center;
  padding: 50px 0;
  font-weight: normal;
  font-size: 2em;
  letter-spacing: 10px;
}
.card-body {
}
.card-body-header{
   line-height: 25px;
   margin: 10px 20px 0px 20px;
}
.card-body-description  {
    opacity: 0;
    color: #757B82;
    line-height: 25px;
    -webkit-transition: .2s ease-in-out; /*사파리&크롬*/
    -moz-transition: .2s ease-in-out; /*파이어폭스*/
    -ms-transition: .2s ease-in-out; /*익스플로러*/
    -o-transition: .2s ease-in-out; /*오페라*/
    transition : .2s ease-in-out;
    overflow: hidden;
   height: 180px;
   margin: 5px 20px;
}
.card:hover .card-body-description {
    opacity: 1;
    -webkit-transition: .5s ease-in-out;
    -moz-transition: .5s ease-in-out;
    -ms-transition: .5s ease-in-out;
    -o-transition: .5s ease-in-out;
    transition : .5s ease-in-out;
    overflow: scroll;
}
.card-body-hashtag {
   color: #2478FF;
   font-style: italic;
}
.card-body-footer {
     position: absolute; 
     margin-top: 15px;
     margin-bottom: 6px;
    bottom: 0; 
    width: 314px;
    font-size: 10px;
    color: #9FA5A8;
    padding: 0 10px;
}
.icon {
    display: inline-block;
    vertical-align: middle;
    margin-right: 2px;
}
.icon-view_count {
    width: 25px;
    height: 17px;
   background: url("images/eye.jpg") no-repeat;
}
.icon-comments_count {
   margin-left: 5px;
   width: 25px;
    height: 17px;
   background: url("images/comment.jpg") no-repeat;   
}
.reg_date {
	margin-left: 15px;
   float: ;
}

.imgswap img:last-child{display:none} 
.imgswap:hover img:first-child{display:none} 
.imgswap:hover img:last-child{display:inline-block}
</style>

</head>
<body>
<!-- header -->
<jsp:include page="/WEB-INF/views/inc/header_o.jsp"></jsp:include>

<div id="main-container">

<div align="center" style=" cursor: pointer;" onclick="location.href='${pageContext.request.contextPath }/shop/goodsModify';">
<div align="center">
<h2>${title}</h2>
${sessionScope.id }
<h2>상품리스트</h2>
<table border="1">
<tr><td>상품번호</td><td>상품명</td><td>상품설명</td><td>상품등록일</td></tr>
<c:forEach var="goods" items="${goodslist }" varStatus="status">
<tr><td><button id="GOODS_NO" name="GOODS_NO" value="${goods.GOODS_NO}" onclick="gett();">${status.count }</button></td><td>${goods.GOODS_NAME }</td>
    <td>${goods.GOODS_CONTENT }</td><td>${goods.GOODS_DATE }</td>
</tr>
</c:forEach>
</table>
<c:if test="${sessionScope.id == 'admin'}">
	<a href="${pageContext.request.contextPath }/shop/goodsModify" class="btn" id="update">수정하기</a>
	
</c:if>
<a href="${pageContext.request.contextPath }/shop/write.do" class="btn" id="write">상품등록</a>
<a href="${pageContext.request.contextPath }/" class="btn" id="main">메인화면</a>
</div>



<!-- footer -->
<jsp:include page="/WEB-INF/views/inc/footer_o.jsp"></jsp:include>
</body>
</html>
