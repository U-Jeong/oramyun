<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- sticky-bar -->
<div id="sticky-bar" style="display:none;">
	<div id="sticky-inwrap" class="inwrap">
			
				<!-- 문구형 -->
				<a href="./resources/oramyun/share/viewab3a.html?pgMode=&amp;pageIndex=1&amp;nowUrl=%2Fview.do%3Fno%3D42&amp;no=42&amp;idx=100&amp;view=view&amp;" class="sticky-bar">
					<div class="pc"><span style="color: #ffffff;">신규회원 5,000원 웰컴 할인! ></span></div>
				</a>
				<button class="event-close-btn" type="button" onclick="closeWin('bandBanner_4');"><span>닫기</span></button>
				<script type="text/javascript">
					if(getCookie("bandBanner_4") != "done"){
						var stickyBar = document.getElementById("sticky-bar");
						stickyBar.style.display = 'block';
						stickyBar.style.backgroundColor = '#f44502';
						
						var inwrap = document.getElementById("sticky-inwrap");
						inwrap.classList.add("txt-type");
						inwrap.classList.remove("img-type");					
	
						$("#sticky-menu").removeClass("over");
					}				
				</script>
	</div>
</div>
<div id="gnb-box">
	<div class="inwrap">
		<a href="https://www.oramyun.com/" class="logo">오늘의라면</a>
		<nav id="main-navi" class="gnb_wrap">				
			<div id="gnb">	
				<ul class="topmenu">
							<li class="dpth01_list">
								<a href="${pageContext.request.contextPath }/shop/goodsList" class="dpth01_item" title="구독하기"><span>구독하기</span></a>		
							</li>
							<li class="dpth01_list">
								<a href="https://www.oramyun.com/view.do?no=40" class="dpth01_item" title="선물하기"><span>선물하기</span></a>		
							</li>
							<li class="dpth01_list">
								<a href="https://www.oramyun.com/view.do?no=41" class="dpth01_item" title="이달의 라시피"><span>이달의 라시피</span></a>		
							</li>
							<li class="dpth01_list">
								<a href="https://www.oramyun.com/view.do?no=42" class="dpth01_item" title="이벤트"><span>이벤트</span></a>		
							</li>
				</ul>
			</div>
		</nav>
		<div class="rnb">
			<div class="rnb-left">
				<ul>
					<li><a href="https://www.oramyun.com/view.do?no=72" class="c-point01" title="뜨끈한 리뷰">뜨끈한 리뷰</a></li>
					<li><a href="https://www.oramyun.com/view.do?no=49" title="라면을 맞혀라!">라면을 맞혀라!</a></li>
					<li><a href="https://www.oramyun.com/view.do?no=63" title="라니툰">라니툰</a></li>
					<li><a href="https://www.oramyun.com/view.do?no=43" title="공지사항">공지사항</a></li>
					<li><a href="https://www.oramyun.com/view.do?no=48" title="FAQ">FAQ</a></li>
				</ul>
			</div>
			<div class="rnb-right">
						<a href="${pageContext.request.contextPath }/member/join" class="join" title="회원가입">회원가입<div class="bubble">￦5,000 COUPON</div></a>
						<a href="${pageContext.request.contextPath }/member/login" class="login" title="로그인">로그인</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>