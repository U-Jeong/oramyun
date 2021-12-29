String.prototype.trim = function() {
    return this.replace(/(^\s*)|(\s*$)/gi, "");
}
//유효성검사
function Val_Chk(form,alias){
        if(form.value == undefined)return true;
	if(form.value.trim()==""){
		alert(alias+"을(를) 입력해주세요.");
		form.focus();
		return false;
	}
	return true;
}

//유효성검사
function Val_ChkFlag(form,alias){
	
	if(form.value.trim()=="" || form.value === undefined || form.value == "undefined"){
		//alert(alias+"을(를) 입력해주세요.");
		//form.focus();
		return false;
	}
	return true;
}

//유효성검사(숫자 입력시 한글이 입력될 경우 체크)
function Val_Chk_Han(form,alias){
	if(form.value==""){
		alert(alias+"을(를) 입력해주세요.");
		form.focus();
		return false;
	}else if(form.value.replace('-', '').replace(',','') >= 0 || form.value.replace('-', '').replace(',','') < 0){
		return true;
	}else{
		alert(alias+"을(를) 확인하여 주세요.");
		form.focus();
		return false;
	}
	
}

function nameCheck(form){
	var name =  form.value;
	var pattern = /^[가-힣a-zA-Z]/;
	if(pattern.test(name)){
		return true;
	}else{
		return false;
	}
}

//이름입력검사
function nameCheckStr(form){
	var name =  form.value;
	var pattern = /^[가-힣a-zA-Z]/;
	if(pattern.test(name)){
		return true;
	}else{
		alert('한글 및 영문만입력가능합니다.');
		return false;
	}
}
//아이디 검사
function idCheckStr(form){
	var id   = form.value;
	var isID = /^[a-zA-Z0-9_]{6,20}$/;
     if (!isID.test(id)) {
		alert("아이디는 6자 ~ 20자, 영어, 숫자만 사용가능합니다.");
		form.focus();
        return false;
     }
	 return true;
}

/*
function idCheckStr(form){
	var id   = form.value;
	var isID = /^[a-z][a-z0-9_]{3,11}$/;
	if (!isID.test(id)) {
		alert("아이디는 4~12자의 영문 소문자와 숫자,특수기호(_)만 사용할 수 있습니다.");
		form.focus();
		return false;
	}
	return true;
}
*/
function checkPassword(form){
	var str = form.value;
	
    if(str.length < 6 || str.length > 20){
    	//alert("6자리 ~ 20자리 이내로 입력해주세요.");
    	return false;
    }
    
    if(str.match(/^.*(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!,@,#,$,%,^,*]).*$/) == null){
//    	alert("비밀번호는 영문대소문자, 숫자, 특수문자의 조합으로 입력해주세요");
    	form.focus();
    	return false;
    }
    return true;
}

function checkPasswordFlag(form){
	var str = form.value;
	if(str.match(/^.*(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!,@,#,$,%,^]).*$/) == null){
		//alert("비밀번호는 영문대소문자, 숫자, 특수문자의 조합으로 입력해주세요");
		//form.focus();
		return false;
	}
	return true;
}

function checkPasswordFlag(form, id){
	var pw = form.value;
    var num = pw.search(/[0-9]/g);
    var eng = pw.search(/[a-z]/ig);
    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    var msg = '';
    if(pw.length < 6 || pw.length > 20){
    	//alert("6자리 ~ 20자리 이내로 입력해주세요.");
    	msg = '6자리 ~ 20자리 이내로 입력해주세요.';
		printMessageYn(id,"Y",msg);					//메세지 출력
    	return false;
    }

    if(pw.search(/₩s/) != -1){
    	//alert("비밀번호는 공백없이 입력해주세요.");
    	msg = '비밀번호는 공백없이 입력해주세요.';
		printMessageYn(id,"Y",msg);					//메세지 출력
    	return false;
    }

    if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
    	//alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
    	msg = '영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.';
		printMessageYn(id,"Y",msg);					//메세지 출력
    	return false;
    }
    //msg = '6자리 ~ 20자리 이내로 입력해주세요.';
	printMessage(id,"N", '');					//메세지 출력
	return true;
}

function Check_Tel(form,alias){
	var str = form.value;
	var reg = /^\d{2,3}-\d{3,4}-\d{4}$/;
	if (str.search(reg) == -1) {
		alert(alias+"전화번호 형식이 올바르지 않습니다.");
		form.focus();
		return false;
	}
	return true;
}

function Check_TelFlag(form,alias){
	var str = form.value;
	var reg = /^\d{2,3}-\d{3,4}-\d{4}$/;
	if (str.search(reg) == -1) {
		//alert(alias+"전화번호 형식이 올바르지 않습니다.");
		//form.focus();
		return false;
	}
	return true;
}

function telCheckStr(form){
	var str = form.value;
	var reg = /([ㄱ-힣a-zA-Z!,@,#,$,%,^,&,*,?,~])/;
	if(str.match(reg) != null) {
		alert("특수기호( - ( ) )와 숫자만 사용할 수 있습니다.");
		form.focus();
		return false;
	}
	return true;
}

function rtnPhoneHipen(obj){
	var msg = '';
	var id = $(obj).attr('id');
	var val = $(obj).val();
	var num = $(obj).val().replace(/[^0-9]/gi, '');
	var formatNum = '';
	var len = num.length;
	var flag = false;
	if(len >= 8 || len <= 11){
		flag = isPhone(num);
		if(flag){
			if(num.length==8){
				 formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
			 }else if(num.length==9){
				 formatNum = num.replace(/(\d{2})(\d{3})(\d{4})/, '$1-$2-$3');
			 }else if(num.length==10){
				 if(num.indexOf('02')==0){
					 formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
				 }else{
					 formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
				 }
			 }else if(num.length==11){
				 formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
			 }else{
				 return;
			 }
			msg = '사용가능한 전화번호입니다.';
			printMessageYn(id,"N",msg);						//메세지 출력
		}else{
			formatNum = val;
			msg = '전화번호를 형식에 맞게 입력해주세요.';
			if($(obj).val().length == 0){
				printMessage(id,"N","");					//메세지 삭제
			}else{
				printMessageYn(id,"Y",msg);					//메세지 삭제
			}
		}
		 
	}else{
		formatNum = val;
	}
	 
	$(obj).val(formatNum);
}

/*
function rtnPhoneHipen(obj){
	var msg = '';
	var id = $(obj).attr('id');
	var num = $(obj).val().replace(/[^0-9]/gi, '');
	var formatNum = '';
	
	if(isPhone(num)){
		if(num.length==11){
	        formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
	    }else if(num.length==8){
	        formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
	    }else{
	        if(num.indexOf('02')==0){
	            formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
	        }else{
	            formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
	        }
	    }
		msg = '사용가능한 전화번호입니다.';
		printMessageYn(id,"N",msg);					//메세지 출력
	}else{
		formatNum = $(obj).val();
		msg = '전화번호 형식이 올바르지 않습니다.';
		if($(obj).val().length == 0){
			printMessage(id,"N","");					//메세지 삭제
		}else{
			printMessageYn(id,"Y",msg);					//메세지 삭제
		}
	}

	$(obj).val(formatNum);
}
*/

function isPhone(phoneNum) { 
	//var regExp =/(02|0[3-9]{1}[0-9]{1})[1-9]{1}[0-9]{2,3}[0-9]{4}$/; 
	var regExp =/(02)([0-9]{3,4})([0-9]{4})$/; 
	var myArray; 
	if(regExp.test(phoneNum)){ 
		myArray = regExp.exec(phoneNum);
		// console.log(myArray[1]); 
		// console.log(myArray[2]); 
		// console.log(myArray[3]); 
		return true; 
	} else { 
		regExp =/(0[0-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/; 
		if(regExp.test(phoneNum)){ 
			myArray = regExp.exec(phoneNum); 
			// console.log(myArray[1]); 
			// console.log(myArray[2]); 
			// console.log(myArray[3]); 
			return true; 
		} else { 
			return false; 
		} 
	} 
}

function rtnMobileHipen(obj){
	var msg = '';
	var id = $(obj).attr('id');
	//var num = $(obj).val().replace(/-/gi, '');
	var num = $(obj).val().replace(/[^0-9]/gi, '');
	var formatNum = '';
	var len = num.length;
	var flag = false;
	 
	if(len == 10 || len == 11){
		
		flag = isMobile(num);
		
		if(flag){
			if(num.length==10){
				formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
		    }else if(num.length==11){
		    	formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
		    }else{
		        return;
		    }
			msg = '사용가능한 휴대폰입니다.';
			printMessageYn(id,"N",msg);						//메세지 출력
		}else{
			formatNum = '';
			msg = '휴대폰을 형식에 맞게 입력해주세요.';
			if($(obj).val().length == 0){
				printMessage(id,"N","");					//메세지 삭제
			}else{
				printMessageYn(id,"Y",msg);					//메세지 삭제
			}
		}
		
	}else{
		formatNum = num;
	}

	$(obj).val(formatNum);
}

function rtnMobileHipenAuto(obj){
	var msg = '';
	var id = $(obj).attr('id');
	//var num = $(obj).val().replace(/-/gi, '');
	var num = $(obj).val().replace(/[^0-9]/gi, '');
	var formatNum = '';
	var len = num.length;
	var flag = false;
	 
	if(len == 10 || len == 11 || len < 10){
		
		flag = isMobile(num);
		
		if(flag){
			if(num.length==10){
				formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
		    }else if(num.length==11){
		    	formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
		    }else{
		        return;
		    }
			msg = '사용가능한 휴대폰입니다.';
			printMessageYn(id,"N",msg);						//메세지 출력
		}else{
			formatNum = num;
			msg = '휴대폰을 형식에 맞게 입력해주세요.';
			if($(obj).val().length == 0){
				printMessage(id,"N","");					//메세지 삭제
			}else{
				printMessageYn(id,"Y",msg);					//메세지 삭제
			}
		}
		
	}else{
		formatNum = num;
	}

	$(obj).val(formatNum);
}

/*
function rtnMobileHipen(obj){
	var msg = '';
	var id = $(obj).attr('id');
	var num = $(obj).val().replace(/-/gi, '');
	var formatNum = '';
	
	if(isMobile(num)){
		if(num.length==11){
	        formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
	    }else if(num.length==8){
	        formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
	    }else{
	        if(num.indexOf('02')==0){
	            formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
	        }else{
	            formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
	        }
	    }
		msg = '사용가능한 휴대폰입니다.';
		printMessageYn(id,"N",msg);					//메세지 출력
	}else{
		formatNum = $(obj).val();
		msg = '휴대폰 전화번호 형식이 올바르지 않습니다.';
		if($(obj).val().length == 0){
			printMessage(id,"N","");					//메세지 삭제
		}else{
			printMessageYn(id,"Y",msg);					//메세지 삭제
		}
	}

	$(obj).val(formatNum);
}
*/

function isMobile(phoneNum) { 
	var regExp =/(01[016789])([0-9]{1}[0-9]{2,3})([0-9]{4})$/; 
	var myArray; 
	if(regExp.test(phoneNum)){ 
		myArray = regExp.exec(phoneNum); 
		// console.log(myArray[1]); // console.log(myArray[2]); // console.log(myArray[3]); 
		return true; 
	} else { 
		return false; 
	} 
}

function isMobileHipen(phoneNum) { 
	var regExp =/(01[016789])-([0-9]{3,4})-([0-9]{4})$/; 
	var myArray; 
	if(regExp.test(phoneNum)){ 
		myArray = regExp.exec(phoneNum); 
		// console.log(myArray[1]); // console.log(myArray[2]); // console.log(myArray[3]); 
		return true; 
	} else { 
		return false; 
	} 
}
 

/*function rtnTelHipen(id){
	$(function () {
        $('#' + id).keydown(function (event) {
        	var key = event.charCode || event.keyCode || 0;
            $text = $(this); 
            if (key !== 8 && key !== 9) {
                if ($text.val().length === 3) {
                    $text.val($text.val() + '-');
                }
                if ($text.val().length === 8) {
                    $text.val($text.val() + '-');
                }
            }

            return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));
        	 // Key 8번 백스페이스, Key 9번 탭, Key 46번 Delete 부터 0 ~ 9까지, Key 96 ~ 105까지 넘버패트
        	 // 한마디로 JQuery 0 ~~~ 9 숫자 백스페이스, 탭, Delete 키 넘버패드외에는 입력못함
     })
});
}*/

function dirCheckStr(form){
	var str = form.value;
	var reg = /([ㄱ-힣!,@,#,$,%,^,&,*,?,~,(,)])/;
	if(str.match(reg) != null) {
		alert("특수기호와 한글은 사용할 수 없습니다.");
		form.focus();
		return false;
	}
	return true;
}

function Check_SiteUrlFlag(form){
	var str = form.value;
	var reg = /([ㄱ-힣!,@,#,$,%,^,&,*,?,~,(,),-,_,=,+,/])/;
	if(str.match(reg) != null) {
		//alert("특수기호와 한글은 사용할 수 없습니다.");
		//form.focus();
		return false;
	}
	return true;
}

//이메일 검사
function Check_Email(form){
	var str = form.value;
	var reg = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
	if (str.search(reg) == -1) {
		form.focus();
		return false;
	}
	return true;
}

//이메일 검사
function Check_Email(form,alias){
	var str = form.value;
	var reg = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
	if (str.search(reg) == -1) {
		alert(alias+"형식이 올바르지 않습니다.");
		form.focus();
		return false;
	}
	return true;
}

//이메일 검사
function Check_EmailFlag(form,alias){
	var str = form.value;
	var reg = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
	if (str.search(reg) == -1) {
		//alert(alias+"형식이 올바르지 않습니다.");
		//form.focus();
		return false;
	}
	return true;
}

//이메일 검사
function checkEmail(target,str,alias){
	var reg = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
	if (str.search(reg) == -1) {
		alert(alias+"형식이 올바르지 않습니다.");
		target.focus();
		return false;
	}
	return true;
}

//이메일 검사
function checkEmailFlag(target,str,alias){
	var reg = /^((\w|[\-\.])+)@((\w|[\-\.])+)\.([A-Za-z]+)$/;
	if (str.search(reg) == -1) {
//		alert(alias+"형식이 올바르지 않습니다.");
//		target.focus();
		return false;
	}
	return true;
}

//몸무게/키입력검사 175.5 or 55
function Check_Weight(form,alias){
	var str = form.value;
	var Reg;
	var dotReg      = /[^a-zA-Z0-9_]/; //특수문자있는지 체크
	var checkReg    = /^([0-9]{1,3})\.([0-9]{1,1})$/;
	var normalReg   = /^([0-9]{1,3})$/;
	if(str.search(dotReg)== -1){	   //특수문자 없으면
		Reg         = normalReg;
		
	}else{							   //특수문자있으면
		Reg			= checkReg;
	}
	
	if (str.search(Reg) == -1) {
		alert(alias+"형식이 올바르지 않습니다.");
		form.focus();
		return false;
	}
		return true;
}


//시간입력 검사 ex) 08:30-09:40
function Check_Time(form,alias){
	var str = form.value;
	var reg = /^([0-9]{2})+(\:[0-9]{2})+-([0-9]{2})+(\:[0-9]{2})$/;
	if (str.search(reg) == -1) {
		alert(alias+"형식이 올바르지 않습니다.");
		form.focus();
		return false;
	}

	return true;
}


//날짜입력 검사 ex) 2006-03-08
function Check_Date(form,alias){
	var str = form.value;
	var reg = /^([0-9]{4})+(\-[0-9]{2})+(\-[0-9]{2})$/;
	if (str.search(reg) == -1) {
		alert(alias+"형식이 올바르지 않습니다.");
		form.focus();
		return false;
	}
	return true;
}

//날짜입력 검사 ex) 2006-03-08
function Check_DateFlag(form){
	var str = form.value;
	var reg = /^([0-9]{4})+(\-[0-9]{2})+(\-[0-9]{2})$/;
	if (str.search(reg) == -1) {
		form.focus();
		return false;
	}
	return true;
}


//공백검사
function Blank_Chk(form,alias){
	var ls_value = form.value;
	var li_len   = form.value.length;
	for(var i=0;i<li_len;i++){
		var tmp = ls_value.substring(i,i+1);
		if(tmp==" "){
			alert(alias+"공백을 입력할수없습니다.");
			form.focus();
			return false;
		}
	}
	return true;
}


//입력값이 전부공백일경우 공백검사
function AllBlank_Chk(form,alias){
	var ls_value = form.value;
	var li_len   = form.value.length;
	var p=0;
	for(var i=0;i<li_len;i++){
		var tmp = ls_value.substring(i,i+1);
		if(tmp==" "){
			p=p+1;
		}
	}
	if(p==li_len){
		alert(alias+"공백을 입력할수없습니다.");
		form.focus();
		return false;
	}
	return true;
}


//한글입력만 검사
function Han_Chk(ao_fin,alias){
       var ls_value = ao_fin.value;
       var li_len   = ao_fin.value.length;
       for(k = 0 ; k < li_len ; k++){
         temp = ls_value.charAt(k);        
         if (escape(temp).length < 4){
           var ls_msg = alias + "는 한글 만 입력할 수 있습니다.\n다시 확인하시고 입력해 주세요.";
           alert(ls_msg);
           ao_fin.focus();
           return false;
         }
       }
   return true;
}


//자리수 체크 몇자이상 몇자 이하
function Length_Chk(ao_fin,a,b,alias){
	var ls_len = ao_fin.value.length;
	if(ls_len<a || ls_len>b){
		var ls_msg = alias + "는 "+a+"자이상"+b+"자 이하로 입력해주세요";
		alert(ls_msg);
		ao_fin.focus();
		return false;

	}
	return true;
}

function Length_ChkFlag(ao_fin,a,b){
	var ls_len = ao_fin.value.length;
	if(ls_len<a || ls_len>b){
		//var ls_msg = alias + "는 "+a+"자이상"+b+"자 이하로 입력해주세요";
		//alert(ls_msg);
		//ao_fin.focus();
		return false;
		
	}
	return true;
}

//자리수 체크 몇자이상
function len_overStr(ao_fin,a,alias){
	var ls_len = ao_fin.value.length;
	if(ls_len<a){
		var ls_msg = alias + "는 최소 "+a+"자이상으로 입력해주세요";
		alert(ls_msg);
		ao_fin.focus();
		return false;

	}
	return true;
}

//자리수 체크 몇자이상
function len_overStr2(ao_fin,a,alias){
	var ls_len = ao_fin.value.length;
	if(ls_len != a){
		var ls_msg = alias + "는 "+a+"자로 입력해주세요";
		alert(ls_msg);
		ao_fin.focus();
		return false;

	}
	return true;
}

function len_sameStr(ao_fin,a,alias){
	var ls_len = ao_fin.value.trim().length;
	if(ls_len<a){
		var ls_msg = alias + "는 "+a+"자로 입력해주세요";
		alert(ls_msg);
		ao_fin.focus();
		return false;

	}
	return true;
}

//같은값인지 비교
function Same_Chk(ao_fin1,ao_fin2,alias){
	var val1 = ao_fin1.value;
	var val2 = ao_fin2.value;
	if(val1!=val2){
		var ls_msg = alias + "값을 확인해주세요";
		alert(ls_msg);
		ao_fin1.focus();
		return false;
	}
	return true;
}


//숫자여부 체크
function Num_Chk(ao_fin,alias){
	var len = ao_fin.value.length;
	var val = ao_fin.value;
	for (i=0 ; i<len ; i++ )
       {
         var ls_val = val.substring(i,i+1);
         if ((ls_val < '0') || (ls_val > '9'))
         {
          var ls_msg = alias + "는 숫자만 입력해주세요";
		   alert(ls_msg);
           ao_fin.focus();
           return false;
         }
       }
	   return true;
}

//숫자여부 체크
function Num_ChkFlag(ao_fin,alias){
	var len = ao_fin.value.length;
	var val = ao_fin.value;
	for (i=0 ; i<len ; i++ )
	{
		var ls_val = val.substring(i,i+1);
		if ((ls_val < '0') || (ls_val > '9'))
		{
			//var ls_msg = alias + "는 숫자만 입력해주세요";
			//alert(ls_msg);
			ao_fin.focus();
			return false;
		}
	}
	return true;
}

function input_num_chk(){
   var e = event.keyCode;
   window.status = e;
   if (e>=48 && e<=57) return;
   if (e>=96 && e<=105) return;
   if (e>=37 && e<=40) return;
   if (e==8 || e==9 || e==13 || e==46) return;
   event.returnValue = false;
} 








//특수 문자 체크
function Tstr_Chk(ao_fin,alias){
	var data = ao_fin.value;
	for (var i=0; i < data.length; i++) { 
		ch_char = data.charAt(i);
		ch      = ch_char.charCodeAt();
		if( (ch >= 33 && ch <= 47) || (ch >= 58 && ch <= 64) || (ch >= 91 && ch <= 96) || (ch >= 123 && ch <= 126) ) {
			alert(alias+ " 는 문자 " +ch_char+ " 를 사용할 수 없습니다");
			ao_fin.focus();
			return false;
		}
	}
 return true;
}


//특수 문자 체크 ("."<=허용)
function Tstr_Chkdot(ao_fin,alias){
	var data = ao_fin.value;
	for (var i=0; i < data.length; i++) { 
		 ch_char = data.charAt(i);
		 ch=ch_char.charCodeAt();
		if( (ch >= 33 && ch < 46) || (ch >= 58 && ch <= 64) || (ch >= 91 && ch <= 96) || (ch >= 123 && ch <= 126) ) {
			alert(alias+ " 는 문자 " +ch_char+ " 를 사용할 수 없습니다");
			ao_fin.focus();
		return false;
		}
	}
 return true;
}


function rtnLnsNumHipen(obj){
	var msg = '';
	var id = $(obj).attr('id');
	var num = $(obj).val().replace(/-/gi, '');
	var formatNum = '';
	
	if(is_biz(num)){
		formatNum = num.replace(/([0-9]{3})-?([0-9]{2})-?([0-9]{5})/, '$1-$2-$3');
		msg = '사용가능한 사업자번호입니다.';
		//printMessageYn(id,"N",msg);					//메세지 출력
	}else{
		formatNum = $(obj).val();
		msg = '사업자번호 형식이 올바르지 않습니다.';
		//printMessageYn(id,"Y",msg);					//메세지 출력
	}

	$(obj).val(formatNum);
}

function is_biz(bizID){
	var re = /-/g;
	  var bizID = bizID.replace(re,'');
	  var checkID = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5, 1);
	  var tmpBizID, i, chkSum=0, c2, remander;

	  for (i=0; i<=7; i++){
	   chkSum += checkID[i] * bizID.charAt(i);
	  }

	  c2 = "0" + (checkID[8] * bizID.charAt(8));
	  c2 = c2.substring(c2.length - 2, c2.length);

	  chkSum += Math.floor(c2.charAt(0)) + Math.floor(c2.charAt(1));

	  remander = (10 - (chkSum % 10)) % 10 ;

	  if (Math.floor(bizID.charAt(9)) == remander){
	   return true; // OK!
	  }
	  return false;


}

function isBizNo(bizNo) { 
	var regExp = /([0-9]{3})?([0-9]{2})?([0-9]{5})/; 
	var myArray; 
	if(!regExp.test(bizNo)){ 
		return false; 
	} 
	
	var val_len = bizNo.length;
    
    if(val_len > 12){
		return false;
    }
    
    num = RegExp.$1 + RegExp.$2 + RegExp.$3;
    
    var cVal = 0; 
    for(var i=0;i<8;i++){ 
        var cKeyNum = parseInt(((_tmp = i % 3) == 0) ? 1 : ( _tmp  == 1 ) ? 3 : 7); 
        cVal += (parseFloat(num.substring(i,i+1)) * cKeyNum) % 10; 
    } 
    var li_temp = parseFloat(num.substring(i,i+1)) * 5 + '0'; 
    cVal += parseFloat(li_temp.substring(0,1)) + parseFloat(li_temp.substring(1,2));
    
    var flag = (parseInt(num.substring(9,10)) == 10-(cVal % 10)%10); 
    if(flag){
    	return true;
    }else{
    	//alert('사업자번호가 유효하지 않습니다.');
		//form.focus();
		return false;
    }
	
}

//사업자번호 체크
function is_binNo(bizNo) {
	var form;
    var reg = /([0-9]{3})-?([0-9]{2})-?([0-9]{5})/; 
    if (!reg.test(form.value)){
		alert('사업자번호가 올바르지 않습니다.');
		form.focus();
		return false; 
	}
    var val_len = form.value.length;
    
    if(val_len > 12){
    	alert('사업자번호가 올바르지 않습니다.');
		form.focus();
		return false;
    }
    num = RegExp.$1 + RegExp.$2 + RegExp.$3;
    var cVal = 0; 
    for(var i=0;i<8;i++){ 
        var cKeyNum = parseInt(((_tmp = i % 3) == 0) ? 1 : ( _tmp  == 1 ) ? 3 : 7); 
        cVal += (parseFloat(num.substring(i,i+1)) * cKeyNum) % 10; 
    } 
    var li_temp = parseFloat(num.substring(i,i+1)) * 5 + '0'; 
    cVal += parseFloat(li_temp.substring(0,1)) + parseFloat(li_temp.substring(1,2));
    
    var flag = (parseInt(num.substring(9,10)) == 10-(cVal % 10)%10); 
    if(flag){
    	return true;
    }else{
    	alert('사업자번호가 유효하지 않습니다.');
		form.focus();
		return false;
    }
    
}

//사업자번호 체크
function is_binNo(form) {
	var form;
    var reg = /([0-9]{3})-?([0-9]{2})-?([0-9]{5})/; 
    if (!reg.test(form.value)){
		alert('사업자번호가 올바르지 않습니다.');
		form.focus();
		return false; 
	}
    var val_len = form.value.length;
    
    if(val_len > 12){
    	alert('사업자번호가 올바르지 않습니다.');
		form.focus();
		return false;
    }
    num = RegExp.$1 + RegExp.$2 + RegExp.$3;
    var cVal = 0; 
    for(var i=0;i<8;i++){ 
        var cKeyNum = parseInt(((_tmp = i % 3) == 0) ? 1 : ( _tmp  == 1 ) ? 3 : 7); 
        cVal += (parseFloat(num.substring(i,i+1)) * cKeyNum) % 10; 
    } 
    var li_temp = parseFloat(num.substring(i,i+1)) * 5 + '0'; 
    cVal += parseFloat(li_temp.substring(0,1)) + parseFloat(li_temp.substring(1,2));
    
    var flag = (parseInt(num.substring(9,10)) == 10-(cVal % 10)%10); 
    if(flag){
    	return true;
    }else{
    	alert('사업자번호가 유효하지 않습니다.');
		form.focus();
		return false;
    }
    
}


	
// 한글 입력을 금지 시키는 함수   
function Hangul_Stop(as_fin,as_alias){
      var ls_value = as_fin.value;
      var li_len   = as_fin.value.length;
  
      for(k = 0 ; k < li_len ; k++){

        temp = ls_value.charAt(k);

        if (escape(temp).length > 4){ 
          var ls_msg = as_alias + "는 한글 입력을 금지하고 있습니다.\n다시 확인하시고 입력해 주세요.";
          alert(ls_msg);
          as_fin.focus();
          as_fin.select();
          return false;
        }
      }
	return true;
}
 

//메세지 창 띄우는 함수
function f_msg_box(as_msg){                                                                              
	alert(as_msg);                                                               
    return;                                                                      
}


/****************************************************************************/ 
/* 일정 자리수 만큼 입력했는지 체크하는 함수                                */ 
/* 2000.8.6																	*/ 
/****************************************************************************/ 
/* as_fin는 현재 포커스가 있는 항목을 말한다.                               */ 
/* as_next_fin는 현재 포커스가 있는 항목의 다음 항목을 말한다.              */ 
/* ai_maxlen_int는 입력할 수 있는 최고 자리수를 말한다.                     */ 

function f_maxlen_chk(as_fin,ai_maxlen_int,as_msg){
		//alert(as_fin.value.length);
    if (as_fin.value.length != ai_maxlen_int){                                                                            
        var msg_prn = as_msg + ' ' + ai_maxlen_int + '자 모두 입력해 주세요.';    
        f_msg_box(msg_prn);
        as_fin.focus();                                                           
        as_fin.select();                                                          
        return false;                                                             
   }                                                                            
   return true;                                                                 
}


//주민번호검사
function Jumin_Chk(ai_jumin1,ai_jumin2){
    
	/* 앞번호6자리, 뒷번호 7자리 모두 입력했는지 체크 */
	if (!f_maxlen_chk(ai_jumin1,6,'주민등록번호앞')){ return false;}
    if (!f_maxlen_chk(ai_jumin2,7,'주민등록번호뒤')){ return false;}
  
    /* 숫자만 입력되었는지를 체크 */
    var ls_f_jumin = ai_jumin1.value;
    var ls_r_jumin = ai_jumin2.value;

    /* 앞 6자리 숫자 체크 */
    for (i=0 ; i<ls_f_jumin.length ; i++ ){
         var ls_sub_jumin = ls_f_jumin.substring(i,i+1);
         if ((ls_sub_jumin < '0') || (ls_sub_jumin > '9')){
           f_msg_box('주민등록번호는 숫자만 입력할 수 있습니다.');
           ai_jumin1.select();
           ai_jumin1.focus();      
           return false;
         } 
       }
       
    /* 뒤 7자리 숫자 체크 */
    for (i=0 ; i<ls_r_jumin.length ; i++ ){
         var ls_sub_jumin = ls_r_jumin.substring(i,i+1);
         if ((ls_sub_jumin < '0') || (ls_sub_jumin > '9'))
         {
           f_msg_box('주민등록번호는 숫자만 입력할 수 있습니다.');
           ai_jumin1.select();
           ai_jumin1.focus();
           return false;
         }
       }

       /* 월 입력 체크 */
       var ls_sub_jumin = ls_f_jumin.substring(2,4);
       if ((ls_sub_jumin < '01') || (ls_sub_jumin > '12')){
         f_msg_box('01월부터 12월까지만 입력할 수 있습니다.');
         ai_jumin1.select();
         ai_jumin1.focus();
         return false;
       }

       /* 일 입력 체크 */
       var ls_sub_jumin = ls_f_jumin.substring(4,6);
       if ((ls_sub_jumin < '01') || (ls_sub_jumin > '31')){
         f_msg_box('01일부터 31일까지만 입력할 수 있습니다.');
         ai_jumin1.select();
         ai_jumin1.focus();
         return false;
       }

       /* 남녀 입력 체크 */
       var ls_sub_jumin = ls_r_jumin.substring(0,1);
       if ((ls_sub_jumin < '1') || (ls_sub_jumin > '4')){
         f_msg_box('남녀 입력은 1부터 4까지 입니다.');
         ai_jumin2.select();
         ai_jumin2.focus();
         return false;
       }

       /*  주민등록번호 유효성 검사 */
       ar_f_jumin = new Array(6);
       ar_r_jumin = new Array(7);
       var check_digit = 0;
       for (i=0 ; i < 6 ; i++ )
       {
         ar_f_jumin[i] = ls_f_jumin.substring(i,i+1);
         check_digit = check_digit + (ar_f_jumin[i] * (i+2)); 
       }

	     for (i=0 ; i < 7 ; i++ )
       {
         ar_r_jumin[i] = ls_r_jumin.substring(i,i+1);
       }
       check_digit = check_digit + (ar_r_jumin[0]*8 + ar_r_jumin[1]*9 + ar_r_jumin[2]*2 + 
                                   ar_r_jumin[3]*3 + ar_r_jumin[4]*4 + ar_r_jumin[5]*5);

       check_digit = check_digit % 11;
       check_digit = 11 - check_digit;
       check_digit = check_digit % 10;

       if (check_digit != ar_r_jumin[6])
       {
         f_msg_box('잘못된 주민등록번호입니다.\n다시 확인하시고 입력해 주세요');
         ai_jumin1.value = ''; 
         ai_jumin2.value = '';
         ai_jumin1.focus();    
         return false;
       }
       return true;
     }


//셀렉트박스 유효성 검사
function SelectBox_Chk(form,alias){
		var form;
		var chk = form.options[form.selectedIndex].value;
		if(chk==''){
			alert(alias+"(을)를 선택해주세요.");
			form.focus();
			return false;
		}else{
			return true;
		}
}

//셀렉트박스 유효성 검사
function SelectBox_ChkFlag(form,alias){
	var form;
	var chk = form.options[form.selectedIndex].value;
	if(chk==''){
		//alert(alias+"(을)를 선택해주세요.");
		//form.focus();
		return false;
	}else{
		return true;
	}
}


//셀렉트박스 셀렉트 값
function SelectBox_Val(form){
		var form;
		var chk = form.options[form.selectedIndex].value;
		return chk;
}


//레디오버튼 선택값
function RadioValue(form){
	var form;
	var len  = form.length;
	var returnValue;
		for(var i=0;i<len;i++){
			if(form[i].checked==true){
				returnValue = form[i].value;
			}
		}
	return returnValue;
}
//레디오버튼 선택
function selectRadioValue(form,value){
	var form;
	var len  = form.length;
	for(var i=0;i<len;i++){
		if(value == form[i].value){
			form[i].checked = true;
			return;
		}
	}
}


//체크박스 모두체크 및 해제
//폼이름,엘레멘츠이름,선택
function All_Check(form_name,check_name,self){
		var form_name;
		var check_name;
		var form = eval("document."+form_name);
		if(self.checked==true){//전체선택.
			for(var i=0;i<form.elements.length;i++){
				if(form.elements[i].name==check_name){
					form.elements[i].checked=true;
				}
			}
		}else if(self.checked==false){//선택해제.
			for(var i=0;i<form.elements.length;i++){
				if(form.elements[i].name==check_name){
					form.elements[i].checked=false;
				}
			}
		}
}

function disableCheck(form_name,check_name,self){
		var form_name;
		var check_name;
		var form = eval("document."+form_name);
		if(self.checked==true){							//체크
			for(var i=0;i<form.elements.length;i++){
				if(form.elements[i].name==check_name){
					form.elements[i].disabled = true;
				}
			}
		}else if(self.checked==false){					//해제
			for(var i=0;i<form.elements.length;i++){
				if(form.elements[i].name==check_name){
					form.elements[i].disabled = false;
				}
			}
		}
		self.disabled = false;
}

function All_Check_Num(form,check_name,num,alias){
		var check_name;
		var j=0;
		var ls_msg = alias+"을(를) " + num + "개 이상 선택해 주십시오.";
		//alert(form);
		for(var i=0;i<form.elements.length;i++){
			if(form.elements[i].name==check_name){
				if(form.elements[i].checked==true){
					j++;
				}
			}
		}
		if(j<num){
			f_msg_box(ls_msg);
			return false;
		}else{
			return true;
		}
}

function rtnCheckBox(form,check_name,num){
		var check_name;
		var j=0;
		for(var i=0;i<form.elements.length;i++){
			if(form.elements[i].name==check_name){
				if(form.elements[i].checked==true){
					j++;
				}
			}
		}
		if(j<num){
			return false;
		}else{
			return true;
		}
}

//체크박스선택값
function CheckBoxValue(form,check_name){
		var check_name;
		var returnVal="";
		for(var i=0;i<form.elements.length;i++){
			if(form.elements[i].name==check_name){
				if(form.elements[i].checked==true){
					checkVal = form.elements[i].value;
					returnVal += checkVal+'-';
				}
			}
		}
		var tlen = parseInt((returnVal.length)-1);
		returnVal = returnVal.substr(0,tlen);
		return returnVal;
}


//확인메시지
function msgCheck(alias){
	var msg = confirm(alias);
	if(msg==true){
		return true;
	}else{
		return false;
	}
}


//입력값 바이트체크
 function ByteCheck(obj,showId,limitByte){
		 
		 var show  = document.getElementById(showId);
		 var temp;
         var real_byte = obj.value.length;		//문자열길이
	
         for (i=0; i<obj.value.length; i++){ 

              temp = obj.value.substr(i,1).charCodeAt(0); 

			  if (temp > 127) { 
				  real_byte++; 
			  }  // 한글일경우 +1

         }
			
          show.innerHTML = real_byte;		//바이트 보이기
         
         if (real_byte>limitByte){			// 클경우 메시지 뿌리기
		  //뒤에꺼 한개 자르기
          alert('입력한 글이 최대 길이 '+limitByte+'byte를 넘습니다. \n 더이상 입력할 수 없습니다.');
          return;
         }
 }

//G-Market꺼..
function getNumWithComma(num){
		var isNegative, i, strNum, strReturn;

		strNum = num.toString();
		strReturn = "";

		isNegative = false;
		if (strNum.substr(0, 1) == "-") {
			isNegative = true;
			strNum = strNum.substr(1);
		}

		for (i = parseInt((strNum.length - 1) / 3); i >= 0 ; i--) {
			strReturn = "," + strNum.substr(strNum.length - 3) + strReturn;
			strNum = strNum.substring(0, strNum.length - 3);
		}
		strReturn = strReturn.substr(1);

		if (isNegative) {
			strReturn = "-" + strReturn;
		}

		return strReturn;
}

function replace(link){
	document.location.replace(link);
}

function checkBox(form,Obj,Clm){
	var state  = Obj.value;
	var target = form.elements[Clm];
	if(target==undefined) return;
	var len	   = target.length;
	var i      = 0;
	var check,view;
	if(state=='선택'){
		check = true;
		view  = '해제';
	}else{
		check = false;
		view  = '선택';
	}
	
	if(len==undefined){
			target.checked    = check;
	}else{
		for(i=0;i<len;i++){
			target[i].checked = check;
		}
	}
	Obj.value = view;
}

function nowDate() {
  var nowDate	 = new Date();
  var Year		 = nowDate.getYear();
  var Month		 = nowDate.getMonth()+1;
  var Day		 = nowDate.getDate(); 

  var returnDate = new Array(Year,Month,Day);
  return returnDate;
}

//--주민등록 생년월일,성별구분 시작
function birthDay(form){ 
   var jumin1   = form.jumin1;
   var jumin2   = form.jumin2;
		
		if(jumin1.value.length==6){
			    //ParseInt사용으로 값을 자르면 8부터 0으로 인식?ㅡㅡ;
				var birthY = Number(jumin1.value.substring(0,2));
				var birthM = jumin1.value.substring(2,4);
				var birthD = jumin1.value.substring(4,6);
				
				var yearCheck = Number(jumin2.value.substring(0,1));
				
				if(yearCheck==3 || yearCheck==4){
					form.birthY.value = birthY+2000;
				}else{
					form.birthY.value = birthY+1900;
				}

				form.birthM.value = birthM;
				form.birthD.value = birthD;
				
				if((yearCheck==1 || yearCheck==3) && form.gender!=undefined){
					form.gender[0].checked = "true";
				}

				if((yearCheck==2 || yearCheck==4) && form.gender!=undefined){
					form.gender[1].checked = "true";
				}
		
		}
		
}

//--생년월일 체크
function checkBirthDay(dateStr){ 
	var year = Number(dateStr.substr(0,2)); // 입력한 값의 0~2자리까지 (연) 
	var month = Number(dateStr.substr(2,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
	var day = Number(dateStr.substr(4,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일) 
	
	// 1900년도
	var check1 = chkDate(year + 1900, month, day);
	
	// 2000년도
	var check2 = chkDate(year + 2000, month, day);
	
	return check1 || check2;
}

function chkDate(year, month, day) {
	var today = new Date(); // 날짜 변수 선언
	var yearNow = today.getFullYear(); // 올해 연도 가져옴
	
	// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다. 
	if (year > yearNow){ 
		return false; 
	} else if (month < 1 || month > 12) { 
		return false; 
	} else if (day < 1 || day > 31) { 
		return false; 
	} else if ((month==4 || month==6 || month==9 || month==11) && day==31) { 
		return false; 
	} else if (month == 2) { 
		var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)); 
		if (day>29 || (day==29 && !isleap)) { 
			return false; 
		} else { 
			return true; 
		} //end of if (day>29 || (day==29 && !isleap)) 
	} else { 
		return true; 
	}//end of if 
}

//--우편번호
function findZipcode(type){
	var zipCode = window.open('/jin/inc/findAddress.php?type='+type,'zipcode','width=400,height=450')
	zipCode.focus();
}

/*폼선택 데이터 인풋*/
function getFormValue(form) {
	//var chnode = form.childNodes;
	var form   = document.getElementById(form.id);
	var input  = form.getElementsByTagName("input");
	var name,type,value;
	for(var i = 0 ; i < input.length ; i++){
		type = input[i].type;
		name = input[i].name;
		value= input[i].value;
		if(type!='button' && type!='image' && type!='submit' && name!='' && type!='checkbox') {
		   this[name] = value;
		}
	}
	return this;
 }

/*폼선택 데이터 텍스트에어리어*/
function getTextValue(form) {
	var form   = document.getElementById(form.id);
	var text   = form.getElementsByTagName("textarea");
	var name,value;
	for(var i = 0 ; i < text.length ; i++){
		name = text[i].name;
		value= text[i].value;
		this[name] = value;
	}
	return this;
}

/*폼선택 데이터 체크박스*/
function getCheckValue(name) {

	//var target = $("input."+name+":checked");
	var target = $(":input:checkbox[name='"+name+"']:checked");
	var value  = new Array();
	for (var i = 0; i < target.length; i++) {

	    value[i] = $(target[i]).val();
		 
	}

	this[name] = String(value);
	return this;
}

/*폼선택 데이터 라디오박스*/
function getRadioValue(name) {

	var val = $(":input:radio[name='"+name+"']:checked").val();
	return val;

}

/*폼선택 데이터 셀렉트박스*/
function getSelectValue(name) {

	var val = $(":select:[name='"+name+"']:selected").val();
	return val;

}
/*
function loadStringLength(){
	 var now_byte_txt = $("#now_byte").text();
	 if(now_byte_txt=="-") $("#msg").val('');
	 var limitByte = 1000;
	 var msg	   = new String($("#msg").val());
	 var realByte  = 0;
	 var msgMax    = "";
	 var msg_char;
	 for (var i=0;i<msg.length; i++){ 
		  msg_char = msg.charAt(i);
		  if(escape(msg_char).length>4){
			  realByte += 2;
		  }else{
			  realByte += 1;
		  }
		  
		  if(realByte < limitByte){
			msgMax = msgMax+msg_char;
		  }
	 }

	 $("#now_byte").text(realByte);

	 if(realByte>80){
		 $("#long_yn").text("장문으로 전송합니다.");
	 }else{
		 $("#long_yn").text("");
	 }

	 if (realByte>limitByte){
		  alert('입력한 글이 최대 길이 '+limitByte+'byte를 넘습니다. \n 더이상 입력할 수 없습니다.');
		  $("#msg").text(msgMax);
		  return;
	 }
}
*/
function isDate(control, msg) {
	
	// '/'나 '-' 구분자 제거
	var val = getRemoveFormat(control);
	
	// 숫자, length 확인
	if (isNumber(val, msg) && val.length == 8) {
		var year = val.substring(0,4);
		var month = val.substring(4,6);
		var day = val.substring(6,8);
		
		// 유효날짜 확인
		if(checkDate(year,month,day,msg)){
			return true;
		} else {
			return false;
		}
	} else {
		alert(msg + " 유효하지 않은 년,월,일(YYYYMMDD)입니다. 다시 확인해 주세요!");
		return false;
	}
}
// 구분자 제거
function getRemoveFormat(val) {
	if(val.length == 10) {
		var arrDate = new Array(3);
		arrDate = val.split("/");
		if(arrDate.length != 3) {
			arrDate = val.split("-");
		}
		return arrDate[0] + arrDate[1] + arrDate[2];
	} else {
		return val;
	}	
}
// 숫자체크
function isNumber(control, msg) {
	
	var val = control;
	var Num = "1234567890";
	for (i=0; i<val.length; i++) {
		if(Num.indexOf(val.substring(i,i+1))<0) {
			alert(msg+' 형식이 잘못되었습니다.');
			return false;
		}
	}
	return true;
}
// 유효날짜 확인
function checkDate(varCk1, varCk2, varCk3, msg) {
	if (varCk1>="0001" && varCk1<="9999" && varCk2>="01" && varCk2<="12") {
		febDays = "29";
		if ((parseInt(varCk1,10) % 4) == 0) {
			if ((parseInt(varCk1,10) % 100) == 0 && (parseInt(varCk1,10) % 400) != 0){
				febDays = "28";
			}
		}else{
			febDays = "28";
		}
		if (varCk2=="01" && varCk3>="01" && varCk3<="31") return true;
		if (varCk2=="02" && varCk3>="01" && varCk3<=febDays) return true;
		if (varCk2=="03" && varCk3>="01" && varCk3<="31") return true;
		if (varCk2=="04" && varCk3>="01" && varCk3<="30") return true;
		if (varCk2=="05" && varCk3>="01" && varCk3<="31") return true;
		if (varCk2=="06" && varCk3>="01" && varCk3<="30") return true;
		if (varCk2=="07" && varCk3>="01" && varCk3<="31") return true;
		if (varCk2=="08" && varCk3>="01" && varCk3<="31") return true;
		if (varCk2=="09" && varCk3>="01" && varCk3<="30") return true;
		if (varCk2=="10" && varCk3>="01" && varCk3<="31") return true;
		if (varCk2=="11" && varCk3>="01" && varCk3<="30") return true;
		if (varCk2=="12" && varCk3>="01" && varCk3<="31") return true;
	}
	alert(msg + " 유효하지 않은 년,월,일(YYYYMMDD)입니다. 다시 확인해 주세요!");
	return false;
}


//텍스트 박스에 글자수 체크
function fc_get_byte(aro_name){

 var ls_str     = aro_name.value; // 이벤트가 일어난 컨트롤의 value 값
 var li_str_len = ls_str.length;  // 전체길이

 // 변수초기화
 var i           = 0;  // for문에 사용
 var li_byte     = 0;  // 한글일경우는 2 그밗에는 1을 더함
 var li_len      = 0;  // substring하기 위해서 사용
 var ls_one_char = ""; // 한글자씩 검사한다
 var ls_str2     = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.

 for(i=0; i< li_str_len; i++)
 {
    // 한글자추출
    ls_one_char = ls_str.charAt(i);

    // 한글이면 2를 더한다.
    if (escape(ls_one_char).length > 4)
    {
       li_byte += 2;
    }
    // 그밗의 경우는 1을 더한다.
    else
    {
       li_byte++;
    }

 }
 
 return li_byte;
}

function fc_get_byte_text(ls_str, li_str_len){
	
	// 변수초기화
	var i           = 0;  // for문에 사용
	var li_byte     = 0;  // 한글일경우는 2 그밗에는 1을 더함
	var li_len      = 0;  // substring하기 위해서 사용
	var ls_one_char = ""; // 한글자씩 검사한다
	var ls_str2     = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.
	
	for(i=0; i< li_str_len; i++)
	{
		// 한글자추출
		ls_one_char = ls_str.charAt(i);
		
		// 한글이면 2를 더한다.
		if (escape(ls_one_char).length > 4)
		{
			li_byte += 2;
		}
		// 그밗의 경우는 1을 더한다.
		else
		{
			li_byte++;
		}
		
	}
	
	return li_byte;
}

//텍스트 박스에 글자수 체크
function fc_chk_byte(aro_name,ari_max){

   var ls_str     = aro_name.value; // 이벤트가 일어난 컨트롤의 value 값
   var li_str_len = ls_str.length;  // 전체길이

   // 변수초기화
   var li_max      = ari_max; // 제한할 글자수 크기
   var i           = 0;  // for문에 사용
   var li_byte     = 0;  // 한글일경우는 2 그밗에는 1을 더함
   var li_len      = 0;  // substring하기 위해서 사용
   var ls_one_char = ""; // 한글자씩 검사한다
   var ls_str2     = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.

   for(i=0; i< li_str_len; i++)
   {
      // 한글자추출
      ls_one_char = ls_str.charAt(i);

      // 한글이면 2를 더한다.
      if (escape(ls_one_char).length > 4)
      {
         li_byte += 2;
      }
      // 그밗의 경우는 1을 더한다.
      else
      {
         li_byte++;
      }

      // 전체 크기가 li_max를 넘지않으면
      if(li_byte <= li_max)
      {
         li_len = i + 1;
      }
   }
   
   // 전체길이를 초과하면
   if(li_byte > li_max)
   {
      alert( li_max + " 글자를 초과 입력할수 없습니다. \n 초과된 내용은 자동으로 삭제 됩니다. ");
      ls_str2 = ls_str.substr(0, li_len);
      aro_name.value = ls_str2;
      
   }
   aro_name.focus();   
}

function commify(n) {
	  var reg = /(^[+-]?\d+)(\d{3})/;   // 정규식
	  n += '';                          // 숫자를 문자열로 변환

	  while (reg.test(n))
	    n = n.replace(reg, '$1' + ',' + '$2');

	  return n;
}
