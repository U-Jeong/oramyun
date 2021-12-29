<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<!-- seo -->
<meta name="title" content="먹고 싶은 라면만 골라요! 오늘의라면">
<meta name="keywords" content="오늘의라면, 오늘의 라면, 오라면, oramyun, 라면, 구독서비스, 봉지라면, 라면구독, 정기구독, 구독, 누들, 한국라면">
<meta name="description" content="간편한 한 끼, 이젠 라면도 무료로 정기배송 받으세요! 스테디셀러 패키지부터 비건을 위한 프레시 패키지까지!">
<meta property="og:url" content="./resources/oramyun/index.html">
<meta property="og:type" content="website">
<meta property="og:title" content="먹고 싶은 라면만 골라요! 오늘의라면">
<meta property="og:description" content="간편한 한 끼, 이젠 라면도 무료로 정기배송 받으세요! 스테디셀러 패키지부터 비건을 위한 프레시 패키지까지!">
<meta property="og:image" content="./resources/oramyun/portal/img/og-img.png">
<!-- <link rel="canonical" href="index.html"> -->
<!-- google site verification -->
<meta name="google-site-verification" content="Ps6Bw_nGxbdmvNb-Bfzd45KeRjmnBfM8J6kxWMraGdo" />
<!-- naver site verification -->
<meta name="naver-site-verification" content="7a1bdc9713f718f74860e0bc66dcfee3ad2dfe95" />
<!-- title -->
<title>오늘의 라면 | Oramyun</title>
<!-- favicon , color -->
<link rel="icon" type="image/png" sizes="16x16" href="./resources/oramyun/portal/img/layout/ico_favicon_16.png">
<link rel="icon" type="image/png" sizes="32x32" href="./resources/oramyun/portal/img/layout/ico_favicon_32.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- 공통 css -->
<link rel="stylesheet" media="all" href="./resources/css/Oramyun.css">
<link rel="stylesheet" media="all" href="./resources/oramyun/portal/cmmCss/cmm-importd5f7.css?ver=2.0"/>
<link rel="stylesheet" media="all" href="./resources/oramyun/portal/cmmCss/swiper.css"/>

<!-- 공통 js -->
<script type="text/javascript" src="./resources/oramyun/portal/cmmJs/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="./resources/oramyun/portal/cmmJs/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="./resources/oramyun/portal/cmmJs/swiper.min.js"></script>
<script type="text/javascript" src="./resources/oramyun/portal/cmmJs/lazyload.min.js"></script>
<script src="./resources/code.jquery.com/jquery-1.12.4.js"></script>

<!-- 홈페이지 전용 css -->
<link rel="stylesheet" media="all" href="./resources/oramyun/portal/css/importd5f7.css?ver=2.0"/>

<!-- datepicker -->
<link rel="stylesheet" media="all" href="./resources/oramyun/portal/cmmCss/datepicker_style.css"/>
<script src="./resources/ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="./resources/code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!-- CDN -->
<link href="./resources/unpkg.com/aos%402.3.1/dist/aos.css" rel="stylesheet">

<!-- 카카오 -->
<script src="./resources/developers.kakao.com/sdk/js/kakao.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-5Z5JCW91BK"></script>
<script>
	// Google Analytics
 	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());

// 	gtag('config', 'G-5Z5JCW91BK');	// 구글 애널리틱스만
	gtag('config', 'AW-797402448'); // 구글 애널리틱스 + 구글 애즈
  
	// 카카오
	Kakao.init('f5738744c375284af132c6e74392dfa4');
	
	//숫자만 입력	
	function onlyNum(obj){
		obj.value = obj.value.replace(/[^0-9]/g,"");
	}
	
	function setComma(value) {
	    return String(value).replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	}
	
	function unsetComma(value) {
	    return String(value).replace(/[^\d]+/g, '');
	}
</script>

</head>
<body>
<!-- skipNavigation:S -->

<div id="skipNavi">
	<h1 class="blind">스킵네비게이션</h1>
	<ul>
		<li><a href="#container" class="skipLink">본문바로가기</a></li>
		<li><a href="#gnb" class="skipLink">주메뉴바로가기</a></li>
	</ul>
</div>
<!-- skipNavigation:E -->
<div id="wrap">
<!-- header:S -->



<script type="text/javascript">
//쿠키가져오기
function getCookie(cName){
	cName = cName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cName);
	var cValue = '';
	if(start != -1){
		start += cName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cValue = cookieData.substring(start, end);
	}
	return unescape(cValue);
}

function setCookie( name, value, expiredays ) {
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

function closeWin(pid) { 	
	setCookie(pid, "done" , 1); //1은 하루동안 쿠키보관, 테스트시 팝업을 새로 열려면 -5로 설정	
}

</script>


	<!-- event-popzone -->
	<div id="event-popzone"  style="display:none;">
		
			
			<a href="view00cd.html?no=49" class="event-popzone">
				<div class="pc" style="background-image:url(./resources/oramyun/portal/img/eventpop/img_eventpop_quiz.png)"><span>무슨 라면의 봉지일까요??</span></div>
			</a>
			<button class="event-popclose-btn" type="button" onclick="closeWin('quiz_18');"><span>닫기</span></button>
			<script type="text/javascript">
				if(getCookie("quiz_18") != "done"){
					var eventPopzone = document.getElementById("event-popzone");
					eventPopzone.style.display = 'block';
				}				
			</script>
		
	</div>

<!-- header -->
<jsp:include page="/WEB-INF/views/inc/header_o.jsp"></jsp:include>

	<!-- kakao-floating -->
	<div id="kakao-floating">
		<a href="#n" class="floating-btn" title="1:1 문의" onclick="javascript:chatChannel();">
			<span>1:1 문의</span>
		</a>
	</div>

<script type="text/javascript">
	function chatChannel() {
		Kakao.Channel.chat({
			channelPublicId: '_vFxiFs',
		})
	}

	function addChannel() {
		Kakao.Channel.addChannel({
			channelPublicId: '_vFxiFs',
		})
	}
</script>


<script>
//로딩화면 보이기
function maskShow(){
	var height = $(document).scrollTop();
	$('#menuLoading-mask').css('height', document.body.scrollHeight);
	$('#menuLoading-mask').show();
}
//로딩화면 숨기기
function maskHide(){
	$('#menuLoading-mask').hide();
}
</script>
<div id="menuLoading-mask"><div id="menuLoading-img"></div></div>
    
<!--// page start -->

<script type="text/javascript" charset="UTF-8" src="./resources/js/kp.js"></script>
<script type="text/javascript">
if (typeof kakaoPixel !== 'undefined') {
	kakaoPixel('4123461163804412660').pageView();
}

gtag('event', 'conversion', {'send_to': 'AW-797402448/GDLxCMWhrP4CENDKnfwC'});

//상세화면 이동
function show(orderNum, userSeq){
	maskShow();
	var frm = document.move_form;
	frm.orderNum.value = orderNum;
	frm.userSeq.value = userSeq;
	frm.pgMode.value = 'show';
	frm.submit();
}
</script>

<!-- container:S -->
<div id="container-wrap">
	<div id="m-container">
	
		<!-- mainvisual -->
		<section class="main_visual">
			<div class="main-cont-box">
				<div class="inwrap">
					<h4 class="main-cont-stit"><span class="c-point01">오늘의 라면</span>에서 내가 먹고 싶은 라면만 골라보세요</h4>
					<h2 class="main-cont-btit">오늘은<br> 어떤 <span class="c-point01">라면</span>이 끌리나요?</h2>
					<a href="./resources/oramyun/share/main75e1.html?pgMode=show_pkg" class="main-cont-btn" title="자세히보기">자세히보기</a>
				</div>
			</div>
			<div class="noodle-slide">
				<div class="row">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							
						</div>
					</div>					 
				</div>				
				<div class="row">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							
						</div>
					</div>					 
				</div>				
			</div>				
		</section>
		
		<!-- about -->
		<section id="section01" class="section sec01">
			<div class="inwrap">
				<div class="head-title-box">
					<h5 class="stit">이젠, 라면도 편하게 구독하세요!</h5>
					<h3 class="btit">먹고 싶은 라면만 고르면,<br> 다 먹어갈 때 쯤 알아서 배송!</h3>
				</div>			
				<div class="about-list">
					<div class="point-img" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
						<img src="./resources/oramyun/portal/img/main/renew/img_sec01_character.png" alt="아뜨">
					</div>
					<div class="about-item about01 left" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
						<div class="title-box">
							<h5 class="about-stit">무료 · 정기배송 서비스</h5>
							<h3 class="about-btit">오늘의 라면은<br>언제나 무료 배송!</h3>
						</div>
					</div>
					
					<!-- <div class="about-item about02 right" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
						<div class="title-box">
							<h5 class="about-stit">포인트 적립</h5>
							<h3 class="about-btit">라면 구독 시<br>포인트 적립은 기본!</h3>
						</div>
					</div> -->
					
					<div class="about-item about02 right" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
						<div class="title-box">
							<h5 class="about-stit">배송 주기 · 수량 선택</h5>
							<h3 class="about-btit">배송 주기도 원하는 수량도<br>내가 정할 수 있어요!</h3>
						</div>
					</div>
					
					<div class="about-item about03 left" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
						<div class="title-box">
							<h5 class="about-stit">라면 선택 · 구성 변경</h5>
							<h3 class="about-btit">라면 구성, 패키지도<br>자유롭게 바꿀 수 있어요!</h3>
						</div>
					</div>
					
					<div class="about-item about04 right" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
						<div class="title-box">
							<h5 class="about-stit">간편한 알림톡</h5>
							<h3 class="about-btit">정기결제일 미리 챙기고<br>구독 변경도 카톡으로 끝!</h3>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- welcome-coupon -->
		<section id="section02" class="section sec02">
			<div class="inwrap">
				<div class="title-box">
					<h5 class="stit">오늘의 라면 신규회원이라면</h5>
					<h3 class="btit">5,000원 웰컴 쿠폰을 쏩니다!</h3>
					<a href="./resources/oramyun/share/view7ae0.html?no=50" class="stxt">회원가입 즉시 자동 발급!</a>
				</div>
			</div>
		</section>
		
		<!-- alert-talk -->
		<!-- <section id="section03" class="section sec03">
			<div class="inwrap">
				<div class="left">
					<div class="title-box">
						<h5 class="stit">알림톡 서비스</h5>
						<h3 class="btit">오늘의 라면 알림톡으로<br>카톡 한 통이면 끝!</h3>
					</div>
				</div>
				<div class="right">
					<div class="talk-slide swiper-container">
						<div class="swiper-wrapper">
							<div class="talk-item talk01 swiper-slide"></div>
							<div class="talk-item talk02 swiper-slide"></div>
							<div class="talk-item talk03 swiper-slide"></div>
						</div>	
					</div>
				</div>
			</div>
		</section> -->
		
		
		<!-- review -->
		<section id="section04" class="section sec04">
			<div class="inwrap">
				<div class="title-box" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
					<h5 class="stit">고민하지 마세요</h5>
					<h3 class="btit">이미 많은 분들이<br>오늘의 라면을 시작했어요!</h3>
				</div>
				<div class="review-slide swiper-container" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
					<div class="swiper-wrapper">
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211115-01-9KE2F','250')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202111201251195072.jpg" alt="후기 사진" 
											onERROR="this.src=./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
											</ul>
											<div class="review-name">
												<p class="name"><span>박**</span>님</p>
											</div>
											<div class="review-txt">
												<p>선택할 수 있는 라면 종류가 다양해서 좋았어요 편의점마다 파는 라면이 다르기도 해서 매번 뺑뺑이를 돌았는데 그럴 필요 없이 한자리에서 주문하면 배송오는게 편합니다 ㅎㅎ 포장도 깔끔하고 라면들도 부서짐 없이 잘 도착했습니다!  1인 가구라 라면 배송 괜찮을까 싶었는데 어차피 늘 먹는 라면이고  다음 배송 전에 조합을 바꿀 수도 있는게 좋아요 bb  자주 먹는 라면 반, 가끔 땡기는 라면 반 해서 주문하면 적당해요!</p>
											</div>
											<dl class="pkg-info">
											
												
												<dt class="pkg-tit"><span>자유구성 (Single)</span></dt>											
												<dd class="pkg-comp"><span>로제불닭볶음면</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-11-20</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211115-01-06Z9W','85')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202111180936537180.jpg" alt="후기 사진" o
											nERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
											</ul>
											<div class="review-name">
												<p class="name"><span>최**</span>님</p>
											</div>
											<div class="review-txt">
												<p>봉지라면을 잘 안 먹어서 컵라면 패키지도 있었으면 좋겠다하고 학수고대하고 있었는데
진짜 나왔길래 바로 질렀습니다!!
안 먹어본 라면 종류가 많아서 설레네요~~ 젓가락까지 다 챙겨주는 센스ㅜㅜㅜ 아주 반했어요 🥰🥰🥰</p>
											</div>
											<dl class="pkg-info">
												<dt class="pkg-tit"><span>컵라면 패키지 (Double)</span></dt>											
												<dd class="pkg-comp"><span>짜파게티 범벅</span> 외 <span>11</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-11-18</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211007-01-1C02V','91')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202111150249041150.png" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
											</ul>
											<div class="review-name">
												<p class="name"><span>한**</span>님</p>
											</div>
											<div class="review-txt">
												<p>오라니는 대체 언제까지 귀여울 예정인가욥?
라면 더 맛있게 해주는 치트키가 증정품으로 온 것 같은데, 한 번도 넣어 본 적 없어서 두근두근,,!
이번 배송도 빠르고 라면도 멀쩡하게 왔어요. 키키 감사합니다 ♥</p>
											</div>
											<dl class="pkg-info">
											
												
												<dt class="pkg-tit"><span>자유구성 (Single)</span></dt>											
												<dd class="pkg-comp"><span>4가지치즈불닭볶음면</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-11-15</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211006-01-C8603','87')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202111130742120362.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
											</ul>
											<div class="review-name">
												<p class="name"><span>김**</span>님</p>
											</div>
											<div class="review-txt">
												<p>이번에도 역시나 시켰어요^^♡
상자도 귀엽고
선물까지~~~~~~~~^^ ㅋ
너무 기대되요^^♡
잘 먹겠습니당</p>
											</div>
											<dl class="pkg-info">
												
										
												<dt class="pkg-tit"><span>자유구성 (Double)</span></dt>											
												<dd class="pkg-comp"><span>자연은 맛있다 백비빔면</span> 외 <span>19</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-11-13</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211108-01-L0GE3','239')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202111120322285970.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
											</ul>
											<div class="review-name">
												<p class="name"><span>이**</span>님</p>
											</div>
											<div class="review-txt">
												<p>평소 라면 즐겨먹진 않는데 비건 라면도 있어서 시켜봤어요!ㅎㅎ 라면 구독박스라니 궁금하기도 하고 ㅎㅎ 취향대로 종류 고를 수 있고, 10개 20개 선택할 수 있어 좋은 것 같아요. 찬장에 가득 채워넣으니 왠지 뿌듯하고 부자된 기분이에요.. 그렇게 자주 안 먹을 것 같아서 10개만 시켰는데 아무래도 20개로 바꿔야겠어요..ㅋㅋ 오랜만에 먹었더니 너무 맛있네요! 비건 짱❤ 비건 모음도 만들어주셔서 너무 감사해요😆</p>
											</div>
											<dl class="pkg-info">
												
	
												<dt class="pkg-tit"><span>프레시 패키지 (Single)</span></dt>											
												<dd class="pkg-comp"><span>맛있는라면 비건</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-11-12</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211006-01-HF454','78')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202111110820213310.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
											</ul>
											<div class="review-name">
												<p class="name"><span>박**</span>님</p>
											</div>
											<div class="review-txt">
												<p>이번달은 본격적으로 자주 사는 라면만 골라봤어요. 매달 먹고싶은 라면을 고를 수 있고 알아서 탁탁 배송을 해주니까 너무 편해요😁 좋은 서비스 감사합니다!!</p>
											</div>
											<dl class="pkg-info">
												
	
												<dt class="pkg-tit"><span>자유구성 (Single)</span></dt>											
												<dd class="pkg-comp"><span>얼큰한 너구리</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-11-11</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211007-01-G5Q17','86')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202111110745307850.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
											</ul>
											<div class="review-name">
												<p class="name"><span>류**</span>님</p>
											</div>
											<div class="review-txt">
												<p>여러가지 먹어볼 수 있는게 신박하네여 저희집 강아지는 진진짜라 골라갔어요</p>
											</div>
											<dl class="pkg-info">
												
							
												<dt class="pkg-tit"><span>자유구성 (Single)</span></dt>											
												<dd class="pkg-comp"><span>4가지치즈불닭볶음면</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-11-11</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211006-01-D61E5','88')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202110260255302181.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
											</ul>
											<div class="review-name">
												<p class="name"><span>김**</span>님</p>
											</div>
											<div class="review-txt">
												<p>선물용으로 좋을 것 같아요!! 포장도 정말 꼼꼼하고 예쁘게 와서 선물 받은 기분이예요 🥳🥳 

다양한 비건라면을 정기구독할 수 있어서 편하네요~ 잘 먹겠습니당💓</p>
											</div>
											<dl class="pkg-info">
											
												<dt class="pkg-tit"><span>프레시 패키지 (Double)</span></dt>											
												<dd class="pkg-comp"><span>맛있는라면 비건</span> 외 <span>19</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-26</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211006-02-J763B','83')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202110260154315354.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
											</ul>
											<div class="review-name">
												<p class="name"><span>박**</span>님</p>
											</div>
											<div class="review-txt">
												<p>라면운 워낙 좋아하는터라 사무실 미니버너랑 코펠을 두고 종종 끊여먹곤 하는데

구매할때는 봉다리로 다량 구매하거나 
편의점에서 낱개로 구매해서 먹는데

다양한 종류별로 먹어서 좋아요

간혹가다가 수입라면도 먹긴 하는데

공동구매형식으로 수입라면 이벤트했으면 좋겠어요

아~~~  쓰다보니 먹고 싶네요  ㅋㅋ</p>
											</div>
											<dl class="pkg-info">
												
												<dt class="pkg-tit"><span>자유구성 (Double)</span></dt>											
												<dd class="pkg-comp"><span>자연은 맛있다 백비빔면</span> 외 <span>19</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-26</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211006-01-Q1D77','70')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202110210710395980.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
											</ul>
											<div class="review-name">
												<p class="name"><span>조**</span>님</p>
											</div>
											<div class="review-txt">
												<p>구독이 대세인건 알고 있었는데 우연찮게 라면 구독이라는 것을 알게되어 한번 구독해봤어요. 마트에서는 묶음으로 팔고 편의점에는 비싸서 고민이였는데 오늘의 라면은 원하는 라면을 원하는 만큼만 고를 수 있고 거기다 배송비까지 무료네요. 여기 괜찮네요</p>
											</div>
											<dl class="pkg-info">
												
												<dt class="pkg-tit"><span>자유구성 (Single)</span></dt>											
												<dd class="pkg-comp"><span>신라면볶음면</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-21</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211006-01-8EQQJ','87')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202110200505225200.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
											</ul>
											<div class="review-name">
												<p class="name"><span>김**</span>님</p>
											</div>
											<div class="review-txt">
												<p>이 이쁜 상자 뭔가요?
라면도 마음되로 골라 맘쏙
이쁨 추가 감미..
강추요!!!!!!^^♡</p>
											</div>
											<dl class="pkg-info">
												
												<dt class="pkg-tit"><span>자유구성 (Double)</span></dt>											
												<dd class="pkg-comp"><span>4가지치즈불닭볶음면</span> 외 <span>19</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-20</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211007-01-YY4M3','95')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202110200446354110.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
											</ul>
											<div class="review-name">
												<p class="name"><span>조**</span>님</p>
											</div>
											<div class="review-txt">
												<p>오늘의 라면을 개봉하니 냄비속 라면이 기똥 차네요! 
제가 라면으로 속풀이를 하는데 10개 중 6개가 짬뽕,,,,ㅋㅋㅋ 
우리집이 마산 6대 짬뽕집이 되었네요~~ 
맛나게  속풀이  중 입니다!!
골라먹는 재미가 장난이 아니네요~~!!</p>
											</div>
											<dl class="pkg-info">
												
												
												<dt class="pkg-tit"><span>자유구성 (Single)</span></dt>											
												<dd class="pkg-comp"><span>나가사끼짬뽕</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-20</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211006-01-2W8X0','79')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202110211150319611.png" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
											</ul>
											<div class="review-name">
												<p class="name"><span>조**</span>님</p>
											</div>
											<div class="review-txt">
												<p>매운맛 라면들 위주로 패키지가 구성되있으니까 취향적으로도 너무 좋고 고르기도 쉬웠습니다. 아직 매운맛 위주의 라면 종류가 다소 부족해보이지만 그래도 묶음으로 사기에 부담스러웠던 라면들을 내가 취향대로 갯수를 골라서 담을 수 있어서 편하고 좋았습니다.</p>
											</div>
											<dl class="pkg-info">
												
												<dt class="pkg-tit"><span>스파이시 패키지 (Single)</span></dt>											
												<dd class="pkg-comp"><span>틈새라면 빨계떡</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-19</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211007-01-W915W','69')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202110210124336311.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
											</ul>
											<div class="review-name">
												<p class="name"><span>이**</span>님</p>
											</div>
											<div class="review-txt">
												<p>자취생한테 너무 편리한거같애여! 라면사러 나가기 귀찮을때가 많은데 정기배송까지되서 너무 행복해요..★ 오라면짱</p>
											</div>
											<dl class="pkg-info">
												
												<dt class="pkg-tit"><span>자유구성 (Double)</span></dt>											
												<dd class="pkg-comp"><span>자연은 맛있다 백비빔면</span> 외 <span>19</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-19</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211006-01-0IU13','78')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/SITE000001/ORMN_REVIEW/sample_ORMN_REVIEW_202110181059470410.jpg" alt="후기 사진" 
											onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
													<li>
														<span class="score"></span>
													</li>
												
											</ul>
											<div class="review-name">
												<p class="name"><span>박**</span>님</p>
											</div>
											<div class="review-txt">
												<p>평소에 라면 자주 먹는데 구독할 수 있는 사이트가 있다고 해서 바로 가입하고 구독했어요!!!
진진짜라가 동네 마트에 없는데 여기는 있네요.
매달 배달해주니까 이제 라면 살 때 귀찮게 마트 안가도 되겠네요 ㅎㅎ
지인들한테 추천 좀 해야겠어용~</p>
											</div>
											<dl class="pkg-info">
												
												<dt class="pkg-tit"><span>자유구성 (Single)</span></dt>											
												<dd class="pkg-comp"><span>오동통면</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-18</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
							<div class="review-item swiper-slide">
								<a href="#n" onclick="show('20211007-01-L76OE','91')">
									<div class="review-item-inner">
										<div class="review-thumb-box">
											<img class="lazy" src="./resources/oramyun/data/STIE000001/ORMIN_REVIEW/sample_ORMN_REVIEW_202110160113262870.jpg" alt="후기 사진" onERROR="this.src='./resources/oramyun/share/cmm/img/no-img.png'">
										</div>
										<div class="review-text-box">
											<ul class="review-score">
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
													<li>
														<span class="score"></span>
													</li>
											</ul>
											<div class="review-name">
												<p class="name"><span>한**</span>님</p>
											</div>
											<div class="review-txt">
												<p>라면 조아해서 속는 셈 치고 한 번 구독해 봤는데 진짜 패키지 머선 일,, 너무 귀야워서 안 찍을 수가 없어써요 ㅠ 누가 봐도 정성 한가득 🧡 그리고 라면 자주 먹는 사람이나 맨날 새로운 라면 먹고 싶은 사람, 자취하는 사람한텐 진짜  좋을 것 같아요 냐냐 암튼 다음엔 진짜 더 기깔나는 라면 골라 보겠습니다 잘 머글게요 !😝</p>
											</div>
											<dl class="pkg-info">
								
												<dt class="pkg-tit"><span>자유구성 (Single)</span></dt>											
												<dd class="pkg-comp"><span>참깨라면</span> 외 <span>9</span>개</dd>
											</dl>
											<div class="review-date">
												<p class="date">2021-10-16</p>
											</div>
										</div>
									</div>
								</a>
							</div>
						
					</div>	
				</div>
			</div>
		</section>
		
		
		<!-- social -->
		<section id="section05" class="section sec05">
			
			<div class="inwrap">
				<div class="title-box">
					<h5 class="stit">Instagram · Kakao Channel</h5>
					<h3 class="btit">오늘의 라면 소식이 궁금하다면?</h3>
					<ul class="social-btn-list">
						<li><a href="https://www.instagram.com/oramyun_official/" title="오늘의 라면 인스타그램 바로가기" target="_blank" class="social-btn insta">@oramyun_offical</a></li>
						<li><a href="#n" onclick="javascript:addChannel();" class="social-btn kakao">오늘의 라면</a></li>
					</ul>
				</div>
				<div class="instagram-wrap">
					<ul>
							<li>
								<a href="https://www.instagram.com/p/CWkhaX6lsHx/" target="_blank" title="인스타그램 바로가기">
									<img src="./resources/scontent-ssn1-1.cdninstagram.com/v/t51.29350-15/258849192_1278756542642508_7323801588416416825_n46e1.jpg?_nc_cat=100&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=E0MKl-kvG4QAX_cDh-9&amp;_nc_ht=scontent-ssn1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=30f608ccae4610b8d570fd6372fc1dd2&amp;oe=61B7788B" alt="인스타그램 바로가기">
								</a>
							</li>
							<li>
								<a href="https://www.instagram.com/p/CWclfhWlCSB/" target="_blank" title="인스타그램 바로가기">
									<img src="./resources/scontent-ssn1-1.cdninstagram.com/v/t51.29350-15/258225993_3054284488161450_7864879869763557647_n3329.jpg?_nc_cat=100&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=r8vOax5jUxgAX98GMX_&amp;_nc_ht=scontent-ssn1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=c29ed15646e50f1dbd38914f6a32e4b4&amp;oe=61B82F94" alt="인스타그램 바로가기">
								</a>
							</li>
							<li>
								<a href="https://www.instagram.com/p/CWZ4f1OFOyS/" target="_blank" title="인스타그램 바로가기">
									<img src="./resources/scontent-ssn1-1.cdninstagram.com/v/t51.29350-15/258424224_3034858550135329_7004106727546176859_nf507.jpg?_nc_cat=102&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=pqZpkWWyUpYAX8Lo86j&amp;_nc_ht=scontent-ssn1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=42c2b5b79f06df0dcea3a13fe8a2a729&amp;oe=61B7AA15" alt="인스타그램 바로가기">
								</a>
							</li>
							<li>
								<a href="https://www.instagram.com/p/CWXU2fHlXMM/" target="_blank" title="인스타그램 바로가기">
									<img src="./resources/scontent-ssn1-1.cdninstagram.com/v/t51.29350-15/258193376_314297650271566_5404049629235950544_n5853.jpg?_nc_cat=109&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=mJBesKAGhdQAX8BFztK&amp;_nc_ht=scontent-ssn1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=00_AT8ZsinDZzDTR_60sjWtcdyE6W3-Gjb4ZbusPKOYBnd7Cw&amp;oe=61B73AFF" alt="인스타그램 바로가기">
								</a>
							</li>
							<li>
								<a href="https://www.instagram.com/p/CWKd_jWFyDQ/" target="_blank" title="인스타그램 바로가기">
									<img src="./resources/scontent-ssn1-1.cdninstagram.com/v/t51.29350-15/255639634_300333815271499_1076904918164012613_n47cd.jpg?_nc_cat=103&amp;ccb=1-5&amp;_nc_sid=8ae9d6&amp;_nc_ohc=CyCTNvOrGGIAX9N6y7w&amp;_nc_ht=scontent-ssn1-1.cdninstagram.com&amp;edm=ANo9K5cEAAAA&amp;oh=00_AT_6ZVAuOuIrli29ISCU3LMLisTbCMKZA5PPnRGVtjkH3A&amp;oe=61B74349" alt="인스타그램 바로가기">
								</a>
							</li>
						
					</ul>
				</div>
			</div>
		</section>
		
	</div>
</div>

<form name="move_form" method="get" action="https://oramyun.com/view.do">
	<input type="hidden" name="pgMode" value="" />
	<input type="hidden" name="pageIndex" 	value="" />
	<input type="hidden" name="nowUrl" value="" />
	<input type="hidden" name="no" value="72" />
	<input type="hidden" name="orderNum" 	value="" />
	<input type="hidden" name="userSeq" 	value="" />
</form>
<!-- container:E -->
<script type="text/javascript" src="./resources/oramyun/portal/js/main_renew.js"></script>


<!--// page end -->

<script type="text/javascript" src="./resources/js/jqueryFromCheck.js"></script>
<script type="text/javascript">

function writeNqrProc(form){		
	var name = $('#'+form+' [name="name"]').val();
	var cpNmDuty = $('#'+form+' [name="cpNmDuty"]').val();
	var phoneNumEmail = $('#'+form+' [name="phoneNumEmail"]').val();
	var cnts = $('#'+form+' [name="cnts"]').val();
	var nqrType = $('#'+form+' [name="nqrType"]').val();
	
	var checkFormFlag = true;
	
	setError($('#'+form+' [name="name"]'), false);
	if(name == ''){
		setError($('#'+form+' [name="name"]'), true);
		checkFormFlag = false;
	}
	setError($('#'+form+' [name="cpNmDuty"]'), false);
	if(cpNmDuty == ''){
		setError($('#'+form+' [name="cpNmDuty"]'), true);
		checkFormFlag = false;
	}
	setError($('#'+form+' [name="phoneNumEmail"]'), false);
	if(phoneNumEmail == ''){
		setError($('#'+form+' [name="phoneNumEmail"]'), true);
		checkFormFlag = false;
	}
	setError($('#'+form+' [name="cnts"]'), false);
	if(cnts == ''){
		setError($('#'+form+' [name="cnts"]'), true);
		checkFormFlag = false;
	}
	
	if(!checkFormFlag){
		alert("필수 항목을 입력 하십시요.");
		return false;
	}

	if(confirm("등록하시겠습니까?")){
		maskShow();
		$('#'+form).submit();
	}
}

function bizInfoOpen(ftrLnsNum){
	var url = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no="+ftrLnsNum;
	
	window.open(url, "bizCommPop", "width=750, height=700;");
}

$(document).ready(function() {
	$('.counsel-layer .layer-closebtn').click(function(){
		$('.counsel-layer-area .counsel-input-box').children().removeClass("error");
	});
});

</script>

<!-- footer -->
<jsp:include page="/WEB-INF/views/inc/footer_o.jsp"></jsp:include>

<!-- 네이버광고로그분석 -->
<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 --> 
<script type="text/javascript" src="./resources/wcs.naver.net/wcslog.js"> </script> 
<script type="text/javascript"> 
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_1b6f111a9dc6";
if (!_nasa) var _nasa={};
if(window.wcs){
wcs.inflow("oramyun.com");
wcs_do(_nasa);
}
</script>
	<!-- footer:E -->
</div>

<!-- 홈페이지 전용 js -->
<script src="./resources/unpkg.com/aos%402.3.1/dist/aos.js"></script>
<script type="text/javascript" src="./resources/oramyun/portal/js/layout.js"></script>
<script type="text/javascript" src="./resources/oramyun/portal/js/sub.js"></script>
<script type="text/javascript">
	AOS.init({
		once: true,
		offset: 150,
		duration: 1000,
	});
</script>
<script type="text/javascript">
	var lazyLoadInstance = new LazyLoad({
		elements_selector: ".lazy",
	});
</script>
</body>

<!-- Mirrored from oramyun.com/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Dec 2021 03:50:03 GMT -->
</html>

