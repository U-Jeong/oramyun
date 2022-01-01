<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm</title>
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
#login-form label{margin-top: 10px;text-align: center;  content-align:center; }
#login-form input{margin: auto; width: 50%; text-align:center; padding: auto;}
div {text-align:center;font-size:15px; margin-top:10px;  margin-bottom: 10px;}
button { 
  margin: 0;
  padding: 0.5rem 1rem;

  font-family: "Noto Sans KR", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  text-align: center;
  text-decoration: none;
  border-radius: 10px;

  display: inline-block;
  width: 300px;

  border: none;
  border-radius: 20px;
  
   margin-bottom: 20px;
}
input {border-bottom-style: bold none; }
hr {width:280px; margin-bottom: 20px;}
input::placeholder { vertical-align:left-side; text-align:left; }
#blank { margin: 30px; }

/* placeholder click */
input:focus::-webkit-input-placeholder,
input:focus::-webkit-input-placeholder{/* WebKit browsers */color:transparent;}
input:focus:-moz-placeholder, textarea:focus:-moz-placeholder{/* Mozilla Firefox 4 to 18 */color:transparent;}
input:focus::-moz-placeholder, textarea:focus::-moz-placeholder{/* Mozilla Firefox 19+ */color:transparent;}
input:focus:-ms-input-placeholder, textarea:focus:-ms-input-placeholder{/* Internet Explorer 10+ */color:transparent;}

/* a */
a {margin:0; padding:0; border:0; font-size:100%; color:#555555; text-decoration:none;}
a:active {}
a:focus {}
a:visited, a:visited *, a.visited, a.visited:visited {text-decoration:none;}
a:hover,a:hover *,a.visited:hover {text-decoration:none;}

/* list */
ul, li {list-style:none; float: left; margin-left: 20px; }
</style>
</head>
<body>
<br><br>
<form id="login-form" action="${pageContext.request.contextPath}/loginPro" method="post">
<h1>오늘도 반갑습니다!</h1>
<h3>로그인 및 회원가입</h3>
<br><hr>
<label class="legend">
<input type="text" class="member_email" id="member_email" name="member_email" placeholder=" 이메일" onkeyup="email_term()" style="width:280px; height: 30px; margin: 10px auto;">
</label>
<label class="legend">
<input type="password" class="member_pass" id="member_pass" name="member_pass" placeholder=" 비밀번호" style="width:280px; height: 30px; margin: 10px auto;">
</label>
<label class="legend">
<button type="submit" class="sign-btn email" ><div class="icon email"><span>로그인</span></div></button>
</label>
<ul class="sign-in_info">
	<li><a href="#n" title="이메일 찾기" class="btn find_ma" onclick="javascript:move('find_email');">이메일 찾기</a></li>
	<li><a href="#n" title="비밀번호 찾기" class="btn find_pw" onclick="javascript:move('find_pw');">비밀번호 찾기</a></li>
	<li><a href="${pageContext.request.contextPath}/join" title="회원가입" class="btn sign">회원가입</a></li>
</ul>
<div name="blank" id="blank"></div>
</form>
</body>
</html>