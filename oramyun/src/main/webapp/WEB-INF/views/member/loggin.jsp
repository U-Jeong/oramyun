<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LuxuryHotel a Hotel Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700" rel="stylesheet"> -->

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"> --%>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css"> --%>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css"> --%>

<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/ionicons/css/ionicons.min.css"> --%>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css"> --%>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css"> --%>

<!-- Style css -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"> --%>

<!-- script -->
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.0.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script> --%>

<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script> --%>

<%-- <script src="${pageContext.request.contextPath}/resources/js/main.js"></script> --%>

<script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
<script type="text/javascript">
 var isidCheck = false; 
 var isidCheck2 = false; 
 var isPasswdCheck = false; 
 var isConfirmPasswdCheck = false;
    $(document).ready(function(){
       // class="dup" ???????????????
       $('.dup').click(function(){
          var fncTest = /^[A-Za-z0-9]+$/;
//           alert("??????");
//              ????????? ?????????????????? 
            if($('.id').val()==""){
               alert("????????? ????????? ?????????!");
               $('.id').focus();
               return;
            }
            else if($('.id').val().length > 16 || $('.id').val().length < 6){
               alert("6 ~ 16 ?????? ????????? ????????? ?????????!");
               $('.id').focus();
               isidCheck = false; 
               return;
            }
            else if(!(fncTest.test($(".id").val() )) ){
               alert("?????? ??? ????????? ????????? ?????????!");
               $('.id').focus();
               isidCheck = false;
               return;
            } else {
               isidCheck = true; 
            }
//              idCheck.jsp??? ?????? id=?????? ?????? ?????? id???????????? ?????? ??????(???????????????, ?????????????????????)
//                                 ??????????????? ????????? id="dupdiv" ??? ??????
            $.ajax('${pageContext.request.contextPath}/member/idCheck',{
               data:{'member_id':$('.id').val()},
               success:function(rdata){
                  if(rdata=='idok'){
                     $("#dupdiv").css("color","blue")
                     rdata="????????? ????????????!";
                     isidCheck2 = true;
                  }else{
                     $("#dupdiv").css("color","#ff0000")
                     rdata="????????? ??????!";
                     isidCheck2 = false;
                  }
                  $('#dupdiv').html(rdata);
               }
            });
       });
   });
  
  function checkPasswd(passwd) {
      // 8 ~ 16?????? ?????????, ??????, ????????????(!@#$%) ??????(??????! ?????? ?????? ??? ????????? ?????? ??????)
      var lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;
      var engUpperRegex = /[A-Z]/;
      var engLowerRegex = /[a-z]/;
      var digitRegex = /[0-9]/;
      var specRegex = /[!@#$%]/;
      
      // ????????????????????? ?????? ??????????????? ?????? ?????? 
      // ???????????????????????????.exec(??????????????????) => boolean ?????? ?????? ??????
//      alert(typeof(lengthRegex));
      
      var element = document.getElementById("checkPasswdResult");
      
      if(lengthRegex.exec(passwd)) { // ?????? ?????? ?????? ?????? ???
         // ?????????, ?????????, ??????, ??????????????? ?????? ????????????
         // ?????? ????????? ????????? ?????? ????????? ???????????? 1??? ???????????? ???
         // 4??? : "??????" - ?????????
         // 3??? : "??????" - ?????????
         // 2??? : "??????" - ?????????
         // 0???, 1??? : "????????????" - ?????????
         var count = 0; // ???????????? ???????????? ????????? ???????????? 1??? ????????????
         
         if(engUpperRegex.exec(passwd)) count++; // ?????? ????????? ??????
         if(engLowerRegex.exec(passwd)) count++; // ?????? ????????? ??????
         if(digitRegex.exec(passwd)) count++; // ?????? ??????
         if(specRegex.exec(passwd)) count++; // ????????????(!@#$%) ??????
         
          switch(count) { // count ?????? ?????? ?????? ?????? ??????
               case 4 : 
                  element.innerHTML = '??????';
                  element.style.color = 'green';
                  isPasswdCheck = true; // ???????????? ?????? ????????? ???????????? true ??? ??????
                  break;
               case 3 : 
                  element.innerHTML = '??????';
                  element.style.color = 'blue';
                  isPasswdCheck = true;
                  break;
               case 2 : 
                  element.innerHTML = '??????';
                  element.style.color = 'orange';
                  isPasswdCheck = true;
                  break;
               default :
                  element.innerHTML = '????????????';
                  element.style.color = 'red';
                  isPasswdCheck = false;
            }
         } else {
            element.innerHTML = "????????????";
            element.style.color = 'red';
            isPasswdCheck = false;
         }
      }
  
        function check_pw(){
            if(document.getElementById('pass').value !='' && document.getElementById('passCh').value!=''){
                if(document.getElementById('pass').value==document.getElementById('passCh').value){
                    document.getElementById('check').innerHTML='??????????????? ???????????????.'
                    isConfirmPasswdCheck = true; 
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='??????????????? ???????????? ????????????.';
                    isConfirmPasswdCheck = false;
                    document.getElementById('check').style.color='red';
                }
            }
        }
        
        function checkForm() {
            if(document.getElementById('pass').value !='' && document.getElementById('passCh').value!=''){
                 if(document.getElementById('pass').value==document.getElementById('passCh').value){
                     document.getElementById('check').innerHTML='??????????????? ???????????????.'
                     isConfirmPasswdCheck = true; 
                     document.getElementById('check').style.color='blue';
                 }
                 else{
                     document.getElementById('check').innerHTML='??????????????? ???????????? ????????????.';
                     document.getElementById('pass').value='';
                     isConfirmPasswdCheck = false;
                     document.getElementById('check').style.color='red';
                 }
             }
            if (isPasswdCheck && isConfirmPasswdCheck && isidCheck && isidCheck2== true) {
               return true; 
            } else {
               alert("?????? ????????? ????????? ?????????!");
               return false;
            } 
         }
</script>
<script>
    //??? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????, ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ???????????????.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var roadAddr = data.roadAddress; // ????????? ?????? ??????
                var extraRoadAddr = ''; // ?????? ?????? ??????
            
                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // ???????????? ??????, ??????????????? ?????? ????????????.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                // ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(?????? ????????? ?????? : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(?????? ?????? ?????? : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
<!-- ????????? ???????????? -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<!-- header -->
<%-- <jsp:include page="../inc/top.jsp"></jsp:include> --%>
<!-- //header -->

<!-- sub_banner -->
<section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(${pageContext.request.contextPath}/resources/images/sub_banner.jpg);">
   <div class="container">
      <div class="row align-items-center site-hero-inner justify-content-center">
         <div class="col-md-12 text-center">
            <div class="mb-5 element-animate">
               <h1>Join</h1>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- //sub_banner -->

<!-- body -->
<div class="content">
   <div class="member_wrapper">
      <h1 class="member_page_title">????????????</h1>
      <form action="${pageContext.request.contextPath}/member/insertPro" id="join-form" class="join_form" name="fr" onsubmit="return checkForm()" method="post">
         <div class="j_f_box">
            <span class="j_f_b_title">?????????</span>
            <input type="text" id="member_id" name="member_id" class="id j_f_b_input2" placeholder="6~16??? ?????? ???????????? ??????????????????" required="required">
            <input type="button" id="member_id_check" class="dup j_f_b_input2_btn" value="ID ?????? ??????" >  
            <div id="dupdiv" class = "dupdiv"></div>
         </div>
         <div class="j_f_b_title">
            <span class="j_f_b_title">????????????</span>
            <input type="password" id="pass" name="member_pass" class="j_f_b_input" onkeyup="checkPasswd(this.value)" placeholder="??????????????? ??????????????????" required>
            <span id = "checkPasswdResult" ></span>
         </div>
         <div class="j_f_box">
            <span class="j_f_b_title">???????????? ??????</span>
            <input type="password" id="passCh" name="member_passCh" class="j_f_b_input" onchange="check_pw()" placeholder="??????????????? ??? ??? ??? ??????????????????" required>
            <span id = "check" ></span>
         </div>
         <div class="j_f_box">
            <span class="j_f_b_title">??????</span>
            <input type="text" id="name" name="member_name" class="j_f_b_input" placeholder="????????? ??????????????????" required>
         </div>
         <div class="j_f_box">
            <span class="j_f_b_title">????????????</span>
            <!-- ???????????? -->
            <input type="text" id="member_year" name="year" class="j_f_b_input3" placeholder="????????????(4??????)">
            <!-- ????????? -->
            <select id="member_month" name="month" class="j_f_b_select3" size="1">
               <option value="">???</option>
               <option value="/ 1 /">1</option>
               <option value="/ 2 /">2</option>
               <option value="/ 3 /">3</option>
               <option value="/ 4 /">4</option>
               <option value="/ 5 /">5</option>
               <option value="/ 6 /">6</option>
               <option value="/ 7 /">7</option>
               <option value="/ 8 /">8</option>
               <option value="/ 9 /">9</option>
               <option value="/ 10 /">10</option>
               <option value="/ 11 /">11</option>
               <option value="/ 12 /">12</option>
            </select>
            <!-- ????????? -->
            <input type="text" id="member_day" name="day" class="j_f_b_input3" placeholder="???">
         </div>
         <div class="j_f_box">
            <span class="j_f_b_title">??????</span>
            <input type="radio" id="gender1" class="j_f_b_radiobox" name="member_gender" value="???" >??????
            <input type="radio" id="gender2" class="j_f_b_radiobox" name="member_gender" value="???" >??????
         </div>
         <div class="j_f_box">
            <span class="j_f_b_title">????????? ??????</span>
            <input type="text" id="email1" name="email1" class="j_f_b_email" placeholder="?????????" required>
            <input id="hi" class="j_f_b_email_at"type="text" placeholder="@" disabled>  
            <input type="text" id="email2" name="email2" class="j_f_b_email" placeholder="????????? ??????" required>
         </div>
         <div class="j_f_box">
            <span class="j_f_b_title">??????</span>
            <input type="text" id="sample4_postcode"  class="j_f_b_input2"  placeholder="????????????" readonly required>
            <input type="button" onclick="sample4_execDaumPostcode()" class="j_f_b_input2_btn" name = "address1" value="???????????? ??????" >
            <input type="text" id="sample4_roadAddress" name = "address1" class="j_f_b_input j_f_b_i_space" placeholder="???????????????" readonly required>
            <input type="hidden" id="sample4_jibunAddress" placeholder="????????????" readonly  name = "address2">
            <span id="guide" style="color:#999;display:none"></span>
            <input type="text" id="sample4_detailAddress" name = "address3" class="j_f_b_input j_f_b_i_space" placeholder="????????????" required>
            <input type="hidden" id="sample4_extraAddress"  placeholder="????????????">
         </div>
         <div class="j_f_box">
            <span class="j_f_b_title">????????? ??????</span>
            <input type="text" id="mobile" name="member_phone" class="j_f_b_input" placeholder="????????? ????????? ??????????????????" required>
         </div>
         <input type="submit" id="join" class="join_btn" value="????????????">
      </form>
   </div>
</div>
<!-- //body -->

<!-- footer -->
<%-- <jsp:include page="../inc/bottom.jsp"></jsp:include> --%>
<!-- //footer -->

<!-- loader -->
<div id="loader" class="show fullscreen">
   <svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/>
   </svg>
</div>
<!-- //loader -->

</body>
</html>