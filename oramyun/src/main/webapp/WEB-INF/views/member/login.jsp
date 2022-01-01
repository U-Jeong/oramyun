<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style type="text/css">
* { margin:0; padding: 0; align:center;}
h1 {text-align: center;
    padding: 20px 0;
    font-weight: bold;
    font-size: 2em;} 
h3 {text-align: center;}
span { line-height: 2.5px; text-align: center;}
body{font-family: "맑은 고딕"; font-size: 0.75em; color: #333;}
#login-form{
         width: 300px;
         margin:100px auto;
         border: 1px solid gray;
         border-radius: 10px;
         padding: 15px;
}
/* inline이였던 요소들을 block으로 바꿈 */
#login-form input, #login-form label{display:block; align:center;}
#login-form label{margin-top: 10px; text-align: center;  content-align:center; }
#login-form input{margin: auto; width: 50%; text-align:center; padding: auto; }
div {text-align:center; font-size:15px; margin-top:10px;  margin-bottom: 10px; }
button {
  /* 생략 */
  margin: 0;
  padding: 0.5rem 1rem;

  font-family: "Noto Sans KR", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  vertical-align: middle;
  float: none !important;
  text-align: center;
  text-decoration: none;

  display: inline-block;
  width: 300px;

  border: none;
  border-radius: 20px;
}
</style>
</head>
<body>
<h2 align="center">LOGIN</h2>
<br><br>
<!-- header -->
<%-- <jsp:include page="/WEB-INF/views/inc/header_o.jsp"></jsp:include> --%>
<!--// page start -->
<form id="login-form" method="get">
<h1>오늘도 반갑습니다!</h1>
<h3>로그인 및 회원가입</h3>
<br><hr>
<label class="legend">
<button type="button" class="sign-btn kakao" onclick="javascript:loginWithKakao();"><div class="icon kakao"><span style="text-align: center;">카카오로 간편시작</span></div></button>
</label>
<label class="legend">
<button type="button" class="sign-btn naver" onclick="location.href='https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=LWX9mrOQeYiTqI2tCbxq&redirect_uri=https%3A%2F%2Fwww.oramyun.com%2Formn%2Fportal%2Fuser%2FloginSns.do%3Fsns%3Dnaver&state=654547602469365563625741024995224235155'"><div class="icon naver"><span>네이버로 간편시작</span></div></button>
</label>
<div class="sign-in_guide">
	<span class="guide-tit">또는</span>
</div>
<label class="legend">
<button type="button" class="sign-btn email" onclick="location.href='${pageContext.request.contextPath}/loginForm'"><div class="icon email"><span>이메일로 시작하기</span></div></button>
<!-- <button type="button" class="sign-btn email" onclick="javascript:move('login_email');"><div class="icon email"><span>이메일로 시작하기</span></div></button> -->
</label>
</form>
</body>
</html>