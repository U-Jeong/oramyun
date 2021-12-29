<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<!-- seo -->
<meta name="title" content="먹고 싶은 라면만 골라요! 오늘의라면">
<meta name="keywords" content="오늘의라면, 오늘의 라면, 오라면, oramyun, 라면, 구독서비스, 봉지라면, 라면구독, 정기구독, 구독, 누들, 한국라면">
<meta name="description" content="간편한 한 끼, 이젠 라면도 무료로 정기배송 받으세요! 스테디셀러 패키지부터 비건을 위한 프레시 패키지까지!">
<meta property="og:url" content="https://www.oramyun.com">
<meta property="og:type" content="website">
<meta property="og:title" content="먹고 싶은 라면만 골라요! 오늘의라면">
<meta property="og:description" content="간편한 한 끼, 이젠 라면도 무료로 정기배송 받으세요! 스테디셀러 패키지부터 비건을 위한 프레시 패키지까지!">
<meta property="og:image" content="/portal/img/og-img.png">
<link rel="canonical" href="https://www.oramyun.com/">
<!-- google site verification -->
<meta name="google-site-verification" content="Ps6Bw_nGxbdmvNb-Bfzd45KeRjmnBfM8J6kxWMraGdo">
<!-- naver site verification -->
<meta name="naver-site-verification" content="7a1bdc9713f718f74860e0bc66dcfee3ad2dfe95">
<title>오늘의 라면 | Oramyun</title>
<!-- favicon , color -->
<link rel="icon" type="image/png" sizes="16x16" href="./resources/oramyun/portal/img/layout/ico_favicon_16.png">
<link rel="icon" type="image/png" sizes="32x32" href="./resources/oramyun/portal/img/layout/ico_favicon_32.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">
<!-- 공통 CSS -->
<link rel="stylesheet" media="all" href="./resources/css/Oramyun.css">
<link rel="stylesheet" media="all" href="./resources/css/cmm-import.css">
<link rel="stylesheet" media="all" href="./resources/css/swiper.css">
<!-- 홈페이지 전용 css -->
<link rel="stylesheet" media="all" href="./resources/css/import.css">
<!-- datepicker -->
<link rel="stylesheet" media="all" href="./resources/css/datepicker_style.css">
<script src="./resources/js/jquery.min.js.다운로드"></script>
<script src="./resources/js/jquery-ui.min.js.다운로드"></script>
<!-- CDN -->
<link href="./resources/css/aos.css" rel="stylesheet">
<!-- 카카오 -->
<script src="./resources/js/kakao.js.다운로드"></script>
</head>
<body>
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

<!-- container:S -->
<div id="container-wrap">
	<div id="m-container">
	
		<!-- mainvisual -->
		<section class="main_visual">
			<div class="main-cont-box">
				<div class="inwrap" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="200">
					<h4 class="main-cont-stit"><span class="c-point01">먹고 싶은 라면만</span> 골라 담아요!</h4>
					<h2 class="main-cont-btit">오늘은<br> 어떤 <span class="c-point01">라면</span>이 끌리나요?</h2>
					<a href="/view.do?no=23" class="main-cont-btn" title="라면 골라보기">라면 골라보기 ＞</a>
				</div>
			</div>
			<div class="noodle-slide">
				<div class="row">
					<div class="swiper-container">
						<div class="swiper-wrapper"></div>
					</div>					 
				</div>				
				<div class="row">
					<div class="swiper-container">
						<div class="swiper-wrapper"></div>
					</div>					 
				</div>				
			</div>				
		</section>
		
		<!-- intro -->
		<section id="section00" class="section sec00">
			<div class="inwrap">
				<div class="intro_txt_box" data-aos="fade-up" data-aos-easing="ease-out-sine" data-aos-delay="300">
					<h2 class="intro-tit">이젠, <span class="c-point01">라면</span>도<br><span class="c-point01">편하게 구독</span>하세요!</h2>
					<h5 class="intro-txt">먹고 싶은 라면만 고르면<br>
					다 떨어질 때 쯤 알아서 배송 오니까!<br>
					<br>
					마트에서 한 묶음 씩 사기는 망설여지고,<br>
					편의점엔 원하는 라면이 없어 실망했던<br>여러분들을 위해 <span class="c-point01">오늘의 라면</span>이 탄생했습니다.</h5>
					<a href="#n" class="btn subsbtn" onclick="javascript:usepop('1');" title="오늘의 라면 100% 활용법">오늘의 라면 100% 활용법 ＞</a>
				</div>
				<div id="uselayer1" class="use-layer">
					<div class="layer-wrapper">
						<div class="close-btn"><button type="button" class="layer-closebtn" onclick="javascript:usepopClose('1');" title="닫기"></button></div>
						<div class="layer-item">
							<div class="layer-cont head">
								<div class="layer-title">
									<h5 class="stit">라면구독을 100% 활용하는</h5>
									<h3 class="btit"><span class="c-point01">오늘의 라면</span> 사용설명서!</h3>
								</div>
							</div>
							<div class="layer-cont center">
								<div class="role-slide swiper-container">
									<div class="swiper-wrapper">
										<div class="role-item swiper-slide">
											<div class="title-box">
												<h5 class="btit">먹을 만큼만 배송 받아요!</h5>
												<h3 class="stit">원하는 배송주기와 수량을 선택하고,<br>내가 먹고 싶은 라면으로만 가득 골라요!</h3>
											</div>
											<div class="role-item-box">
												<div class="role-thumb use01">
													<img src="./resources/oramyun/portal/img/main/renew/img_use_layercont01.png" alt="먹을 만큼만 배송 받아요!">
												</div>
											</div>
										</div>
										<div class="role-item swiper-slide">
											<div class="title-box">
												<h5 class="btit">라면 토핑과 함께 즐겨요!</h5>
												<h3 class="stit">오라니가 고른 토핑도 함께 배송 갈거예요<br>먹고 싶은 라면을 더 맛있게 즐겨버리기★</h3>
											</div>
											<div class="role-item-box">
												<div class="role-thumb use02">
													<img src="./resources/oramyun/portal/img/main/renew/img_use_layercont02.png" alt="라면 토핑과 함께 즐겨요!">
												</div>
											</div>
										</div>
										<div class="role-item swiper-slide">
											<div class="title-box">
												<h5 class="btit">카톡으로 관리하는 편한 구독!</h5>
												<h3 class="stit">다가오는 결제일과 결제예정금액 확인하고,<br>변경사항은 오라니에게 바로 말해요!</h3>
											</div>
											<div class="role-item-box">
												<div class="role-thumb use03">
													<img src="./resources/oramyun/portal/img/main/renew/img_use_layercont03.png" alt="카톡으로 관리하는 편한 구독!">
												</div>
											</div>
										</div>
										<div class="role-item swiper-slide">
											<div class="title-box">
												<h5 class="btit">라면이 아직 남아 있나요?</h5>
												<h3 class="stit">배송 받은 라면을 벌써 다 먹었거나<br>아직 남아 있다면, 결제일을 변경해요!</h3>
											</div>
											<div class="role-item-box">
												<div class="role-thumb use04">
													<img src="./resources/oramyun/portal/img/main/renew/img_use_layercont04.png" alt="라면이 아직 남아 있나요?">
												</div>
											</div>
										</div>
										<div class="role-item swiper-slide">
											<div class="title-box">
												<h5 class="btit">매번 다른 라면으로 즐겨요!</h5>
												<h3 class="stit">매달 새로운 라면이 입고 될거예요<br>구독 중인 패키지나 라면 구성을 변경해보세요!</h3>
											</div>
											<div class="role-item-box">
												<div class="role-thumb use05">
													<img src="./resources/oramyun/portal/img/main/renew/img_use_layercont05.png" alt="매번 다른 라면으로 즐겨요!">
												</div>
											</div>
										</div>
										<div class="role-item swiper-slide">
											<div class="title-box">
												<h5 class="btit">연속구독 리워드 받기!</h5>
												<h3 class="stit">3번째 배송은 깜짝선물이 함께 가요!<br>자세한 내용은 이벤트를 확인해주세요</h3>
											</div>
											<div class="role-item-box">
												<div class="role-thumb use06">
													<img src="./resources/oramyun/portal/img/main/renew/img_use_layercont06.png" alt="연속구독 리워드 받기!">
												</div>
											</div>
										</div>
									</div>
									<div class="role-pagination"></div>
								</div>
							</div>
							<div class="layer-cont last">
								<div class="subs-rest-title">
									<h3 class="btit">구독을 잠시 쉬어가고 싶나요?</h3>
								</div>
								<div class="subs-rest-txt">
									<div class="rest-item">
										<h4>이번 라면박스는 친구에게 선물해보세요.</h4>
										<p>배송지만 변경하면, 이번 달 정기배송 상품은 변경된 배송지로 출발합니다.</p>
									</div>
									<div class="rest-item">
										<h4>구독을 한 달 쉬어 갈 수 있어요.</h4>
										<p>[마이페이지 ＞ 구독상태]의 쉬어가기 버튼을 통해 1회 쉬어가실 수 있어요.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>    


<jsp:include page="/WEB-INF/views/inc/footer_o.jsp"></jsp:include>
</body>
</html>