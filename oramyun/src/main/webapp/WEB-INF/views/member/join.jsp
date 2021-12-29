<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
</head>
<body>
<!-- header -->
<jsp:include page="/WEB-INF/views/inc/header_o.jsp"></jsp:include>
<div class="wrapper">
	<form action="${pageContext.request.contextPath }/shop/joinPro" method="post">
	<div class="wrap">
			<div class="subjecet">
				<span>회원가입</span>
			</div>
			<div class="id_wrap">
				<div class="id_name">아이디</div>
				<div class="id_input_box">
					<input class="id_input">
				</div>
			</div>
			<div class="pw_wrap">
				<div class="pw_name">비밀번호</div>
				<div class="pw_input_box">
					<input class="pw_input">
				</div>
			</div>
			<div class="pwck_wrap">
				<div class="pwck_name">비밀번호 확인</div>
				<div class="pwck_input_box">
					<input class="pwck_input">
				</div>
			</div>
			<div class="user_wrap">
				<div class="user_name">이름</div>
				<div class="user_input_box">
					<input class="user_input">
				</div>
			</div>
			<div class="mail_wrap">
				<div class="mail_name">이메일</div> 
				<div class="mail_input_box">
					<input class="mail_input">
				</div>
				<div class="mail_check_wrap">
					<div class="mail_check_input_box">
						<input class="mail_check_input">
					</div>
					<div class="mail_check_button">
						<span>인증번호 전송</span>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="address_wrap">
				<div class="address_name">주소</div>
				<div class="address_input_1_wrap">
					<div class="address_input_1_box">
						<input class="address_input_1">
					</div>
					<div class="address_button">
						<span>주소 찾기</span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class ="address_input_2_wrap">
					<div class="address_input_2_box">
						<input class="address_input_2">
					</div>
				</div>
				<div class ="address_input_3_wrap">
					<div class="address_input_3_box">
						<input class="address_input_3">
					</div>
				</div>
			</div>
			<div class="join_button_wrap">
				<input type="button" class="join_button" value="가입하기">
			</div>
		</div>
	</form>
</div>
<!-- footer -->
<jsp:include page="/WEB-INF/views/inc/footer_o.jsp"></jsp:include>
</body>
</html>