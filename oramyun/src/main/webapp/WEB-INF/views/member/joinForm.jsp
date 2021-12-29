<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
 <script type="text/javascript">
$(document).ready(function(){
       // class="dup" 클릭했을때
       $('.dup').click(function(){
          var fncTest = /^[A-Za-z0-9]+$/;
          alert("클릭");
//              아이디 입력여부체크 
//             if($('.id').val()==""){
//                alert("아이디 입력해 주세요!");
//                $('.id').focus();
//                return;
//             }
//             else if($('.id').val().length > 16 || $('.id').val().length < 6){
//                alert("6 ~ 16 글자 사이로 입력해 주세요!");
//                $('.id').focus();
//                isidCheck = false; 
//                return;
//             }
//             else if(!(fncTest.test($(".id").val() )) ){
//                alert("영문 및 숫자만 입력해 주세요!");
//                $('.id').focus();
//                isidCheck = false;
//                return;
//             } else {
//                isidCheck = true; 
//             }
//              idCheck.jsp에 갈때 id=값을 들고 가서 id중복체크 한후 출력(아이디중복, 아이디사용가능)
//                                 출력결과를 받아서 id="dupdiv" 에 출력
//             $.ajax('${pageContext.request.contextPath}/member/idCheck',{
//                data:{'member_id':$('.id').val()},
//                success:function(rdata){
//                   if(rdata=='idok'){
//                      $("#dupdiv").css("color","blue")
//                      rdata="아이디 사용가능!";
//                      isidCheck2 = true;
//                   }else{
//                      $("#dupdiv").css("color","#ff0000")
//                      rdata="아이디 중복!";
//                      isidCheck2 = false;
//                   }
//                   $('#dupdiv').html(rdata);
//                }
//             });
       });
   });
</script>
<style type="text/css">
* {
	margin: auto;
	padding-bottom: 10px;
}
h1 {
    text-align: center;
    padding: 50px 0;
    font-weight: bold;
    font-size: 2em;
    letter-spacing: 10px;
} 
th { text-align: left; font-size:12px; }
.btn, #btn2 {border-radius:12px; padding:5px 11px; color:#fff !important; display:inline-block; 
	  background-color:#ED4C00; vertical-align:middle; border-style: none;  font-weight: bold;}
.btn {width: 500px; height:50px; margin-top: 30px;}
#btn2 {width: fit-content; margin: auto;}	    
input[type='email'], input[type='text'], input[type='password'],input[type='tel'],
input.text,input.password { border-style: none; width:500px; border-radius: 5px;
							background-color:#F6F6F6; line-height:1.25em; padding:0.2em 5px 0.3em 5px; height:27px; font-size:12px; }
input[type='tel'] {width:380px;}
#postcode { border-style: none; width:500px; border-radius: 5px;
							background-color:#F6F6F6; line-height:1.25em; padding:0.2em 5px 0.3em 5px; height:27px; font-size:12px;}
input[type='radio'], input[type='checkbox'] {color:#F9F9F9; padding:10px; line-height:1.5px;}
table {border-collapse:collapse; border-spacing:0;}
a {color:#FF5E00; font-style:bold;}
.check-box, span {font-size: 12px; color: #5A5A5A;}
.check-box {margin-top:20px;}
</style>
</head>
<body>
<br><br>
<!-- header -->
<%-- <jsp:include page="/WEB-INF/views/inc/header_o.jsp"></jsp:include> --%>
<hr>
<h1>이메일 회원가입</h1>
<div name="join" id="join align="center">
<form name="frm" id="frm" action="${pageContext.request.contextPath }/joinPro" method="post">
<table>
<tr><th>이메일</th></tr>
<tr><td>
		<input type="email" name="member_email" id="member_email" placeholder="이메일을 입력해주세요" 
				size="40" style="padding:15px;">
	</td>
</tr>
<tr><th>비밀번호</th></tr>
<tr><td><input type="password" name="member_pass" id="member_pass" placeholder="비밀번호를 입력하세요" 
				size="40" style="padding:15px;"></td></tr>
<tr><td><input type="password" name="member_ps1" id="member_ps1" placeholder="비밀번호를 한번 더 입력하세요" 
				size="40" style="padding:15px;"></td></tr>
<tr><th>이름 </th></tr>
<tr>
		<td>
			<input type="text" name="member_name" id="member_name" placeholder="이름을 입력해주세요" 
					size="40" style="padding:15px;">
		</td>
</tr>
<tr><th>휴대폰번호</th></tr>
<tr><td>
		<input type="tel" name="member_tel" id="member_tel" placeholder="휴대폰번호(-없이 숫자만 입력)" 
				size="40" style="padding:15px;"> 
		<input type="button" value="인증번호 발송" class="dup" name="btn2" id="btn2" style="padding:15px; color:white;">
	</td>
</tr>
<tr><th>생년월일 6자리</th></tr>
<tr><td>
		<input type="text" name="member_birth" id="member_birth" placeholder="생년월일 6자리를 입력하세요" 
				size="40" style="padding:15px;">
	</td>
</tr>
<tr><th>주소</th></tr>
<tr>
	<td id="addr">
		<input type="text" id="sample4_postcode" name="postcode" id="postcode" placeholder="우편번호" style="width:380px; padding:15px; margin-bottom: 10px;">
		<input type="button" id="btn2" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" size="40" style="padding:15px; "><br>
		<input type="text" id="sample4_roadAddress" placeholder="도로명주소" size="60" name="address" size="40" style="padding:15px; margin-bottom: 10px;"><br>
		<span id="guide" style="color:#999;display:none"></span>
		<input type="text" id="sample4_detailAddress" placeholder="상세주소"  size="60" name="address2" size="40" style="padding:15px; margin-bottom: 10px;"><br>
	</td>
</tr>
<!-- <tr><th>성별</th></tr> -->
<!-- <tr> -->
<!-- 	<td> -->
<!-- 		<input type="radio" name="gender" id="m" value="남자" style="padding: 15px;"> 남자  -->
<!-- 		<input type="radio" name="gender" id="f" value="여자" style="padding: 15px;"> 여자 -->
<!-- 	</td> -->
<!-- </tr>	 -->

<!-- <tr><th>마케팅 수신동의</th></tr> -->
<!-- <tr><td> -->
<!-- 		<label for="mrktYn" class="check"><input type="checkbox" name="mrktYn" id="mrktYn" size="40"  value="Y" style="padding:15px;">  -->
<!-- 		<span class="label"></span><span>할인쿠폰, 혜택, 이벤트 알림 받기</span></label> -->
<!-- 	</td> -->
<!-- </tr> -->

</table>
<!-- <br> -->
<!-- <div class="check-box" align="center"> -->
<!-- 		<label for="agreeYn" class="check"><input type="checkbox" name="agreeYn" id="agreeYn" value="Y"><span class="label"></span> 본인은 만 14세 이상이며, <a href="#n" class="c-point01 terms-btn" title="이용약관">이용약관</a>에 동의합니다</label> -->
<!-- </div> -->
		<div align="center">
			<button class="btn" id="list">가입완료</button>
		</div>
</form>
</div>
<!-- container:E -->
<!-- footer -->
<%-- <jsp:include page="/WEB-INF/views/inc/footer_o.jsp"></jsp:include> --%>
<!-- 홈페이지 전용 js -->
<script src="../resources/unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script type="text/javascript" src="../resources/oramyun/portal/js/layout.js"></script>
<script type="text/javascript" src="/portal/js/sub.js"></script>
</body>
</html>