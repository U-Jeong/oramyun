/** Jquery를 이용한 form 검사 모음 **/

String.prototype.trim = function(){
	return $.trim(this);
}

//작업중...
function requireForm(frmId){
	
	var frm = $("#" + frmId + " .require");
	var type = "";
	var flag = true;
	$.each(frm, function(index, elem){
		//console.log($(this).attr("type") + " > " + $(this).attr("name"));
		type = $(this).attr("type");
		
		if(type == "text"){
			//flag = inputTextCheck($(this));
		}else if(type == "password"){
			//flag = inputTextCheck($(this));
		}else if(type == "select"){
			//flag = inputSelectBoxCheck($(this));
		}else if(type == "radio"){
			//flag = inputTextCheck($(this));
		}else if(type == "textarea"){
			//flag = inputTextCheck($(this));
		}else{
			//
		}
		
		if(flag == false){	//each stop
			return false;
		}
		
	});
	
	return flag;
		
}

function checkForm(formName){
	
	 
	var flag = true;

	var inputFlag = inputTextTypeCheck(formName, flag);
	if(!inputFlag){
		flag = false;
	}
	
	var passwordFlag = inputPasswordTypeCheck(formName, flag);
	if(!passwordFlag){
		flag = false;
	}

	var selectFlag = selectTypeCheck(formName, flag);
	if(!selectFlag){
		flag = false;
	}

	var radioFlag = inputRadioTypeCheck(formName, flag);
	if(!radioFlag){
		flag = false;
	}

	return flag;
	 
}

function inputPasswordTypeCheck(formName, flag){
	var txtEle = $(formName + " input:password");
	
	for(var i = 0; i < txtEle.length; i++){
		var inputObj = txtEle[i];

		//필수 조건 체크 
		if("nec" == getPropertyVal(inputObj, "nec")){
			var checkFlag = inputTextCheck(inputObj);

			//공백 체크에서 true이고 전체 공백 검사 값이 true일 경우 공백 실패(false)로 변경 및 포커스 처리
			if(checkFlag && flag){
				flag = false;
				//$(inputObj).focus();
			}
		}

	}

	return flag;
}

function inputTextTypeCheck(formName, flag){
	var txtEle = $(formName + " input:text,password");
	
	for(var i = 0; i < txtEle.length; i++){
		var inputObj = txtEle[i];

		//필수 조건 체크 
		if("nec" == getPropertyVal(inputObj, "nec")){
			var checkFlag = inputTextCheck(inputObj);

			//공백 체크에서 true이고 전체 공백 검사 값이 true일 경우 공백 실패(false)로 변경 및 포커스 처리
			if(checkFlag && flag){
				flag = false;
				//$(inputObj).focus();
			}
		}

	}

	return flag;
}

function inputRadioTypeCheck(formName, flag){
	var txtEle = $(formName + " input:radio");
	var radioNameAry = new Array;
	
	for(var i = 0; i < txtEle.length; i++){
		if("nec" == getPropertyVal(txtEle[i], "nec")){
			var radioName = getPropertyVal(txtEle[i], "name");
			if(radioNameAry.length <= 0 || !ArrayListCheckVal(radioNameAry, radioName)){
				radioNameAry.push(radioName);
			}
		}
	}
	
	for(var j = 0; j < radioNameAry.length; j++){
		var checkFlag;
		if($("input[name='" + radioNameAry[j] + "']:checked").val() == undefined){
			styleChange(radioNameAry[j], "Y");
			printMessage(radioNameAry[j], "Y");
			checkFlag = true;
		}else{
			styleChange(radioNameAry[j], "N");
			printMessage(radioNameAry[j], "N");

		}

		//공백 체크에서 true이고 전체 공백 검사 값이 true일 경우 공백 실패(false)로 변경 및 포커스 처리
		if(checkFlag && flag){
			flag = false;			
		}
	}

	return flag;
}

function ArrayListCheckVal(ary, val){
	for(var j = 0; j < ary.length; j++){
		if(ary[j] == val){
			return true;
		}
	}

	return false;
}

function selectTypeCheck(formName, flag){
	var txtEle = $(formName + " select");
	
	for(var i = 0; i < txtEle.length; i++){
		var inputObj = txtEle[i];

		//필수 조건 체크 
		if("nec" == getPropertyVal(inputObj, "nec")){
			var checkFlag = inputSelectBoxCheck(inputObj);
			
			//공백 체크에서 true이고 전체 공백 검사 값이 true일 경우 공백 실패(false)로 변경 및 포커스 처리
			if(checkFlag && flag){
				flag = false;
				//$(inputObj).focus();
				//console.log(getPropertyVal(inputObj, "title"));
			}
		}

	}

	return flag;
}

function inputTextCheck(inputObj){
	var objName = getPropertyVal(inputObj, "name");
	
	if(getVal(inputObj) == ""){
		styleChange(objName, "Y");
		printMessage(objName, "Y");
		return true;
	}else{
		styleChange(objName, "N");
		printMessage(objName, "N");
		return false;
	}
}



function inputSelectBoxCheck(inputObj){
	var objName = getPropertyVal(inputObj, "name");
	
	if(getVal(inputObj) == ""){
		styleChange(objName, "Y");
		printMessage(objName, "Y");
		return true;
	}else{
		styleChange(objName, "N");
		printMessage(objName, "N");
		return false;
	}
}

function styleChange(objectName, flag){
	var style = "";
	if(flag == "Y"){
		//addStyle($("#" + objectName),"border","1px solid #ff0000");
		//addStyle($("#" + objectName + "Sign"),"border","1px solid #ff0000");
	}else{
		//removeStyle($("#" + objectName),"border");
		//removeStyle($("#" + objectName + "Sign"),"border");
	}
}

function printMessage(objectName, flag, message){
	var messageName = objectName + "Message";
	if(flag == "Y"){
		var titleStr = getPropertyVal($("#" + objectName),"title");
		if(message != undefined){
			titleStr = message;
		}
		else if(isEmpty(titleStr)){
			titleStr = "입력 또는 선택을 하십시요";
		}
		$("#" + messageName).html("※ " + titleStr);
		addRedStyle($("#" + messageName));
		$("#" + messageName).show();
	}else{
		$("#" + messageName).html("");
		removeStyle($("#" + messageName),"color");
		$("#" + messageName).hide();
	}
}

function printMessageYn(objectName, flag, message){
	var messageName = objectName + "Message";
	if(flag == "Y"){
		var titleStr = getPropertyVal($("#" + objectName),"title");
		if(message != undefined){
			titleStr = message;
		}
		else if(isEmpty(titleStr)){
			titleStr = "입력 또는 선택을 하십시요";
		}
		$("#" + messageName).html("※ " + titleStr);
		addRedStyle($("#" + messageName));
		$("#" + messageName).show();
	}else{
		if(message != undefined){
			titleStr = message;
		}
		$("#" + messageName).html("※ " + titleStr);
		addGreenStyle($("#" + messageName));
		$("#" + messageName).show();
	}
}

function changeHtml(objectId, message, flag){
	if(isEmpty(flag))flag = "N";

	if(flag == "Y"){

		if(isEmpty(message)){
			message = "입력 또는 선택을 하십시요";
		}

		$("#" + objectId).html("※ " + message);
		addRedStyle($("#" + objectId));
		$("#" + objectId).show();
	}else{
		$("#" + objectId).html("");
		removeStyle($("#" + objectId),"color");
		$("#" + objectId).hide();
	}
}

function getVal(inputObj){
	try{
		return $(inputObj).val().trim();
	}catch(e){return $(inputObj).val();}
}



function getPropertyVal(inputObj, property){
	return $(inputObj).attr(property);
}

function setPropertyVal(inputObj, property, val){
	return $(inputObj).attr(property, val);
}

function addRedStyle(inputObj){
	$(inputObj).css("color", "#d91818");
}

function addGreenStyle(inputObj){
	$(inputObj).css("color", "green");
}

function addStyle(inputObj, cssType, val){
	$(inputObj).css(cssType, val);
}

function removeStyle(inputObj, cssType){
	$(inputObj).css(cssType, "");
}

function isEmpty(stringObj){
	if(stringObj == undefined || stringObj.trim() == ""){
		return true;
	}else{
		return false;
	}
}


function jquery_Length_Chk(inputObj, a){
	var ls_len = $(inputObj).val().length;
	if(ls_len<a){
		return false;
	}
	return true;
}

function createParameterData(formId, exceptionNm){
	var getterVar = "";
	$("#" + formId).find("input").each(function(){
		if(exceptionNm != $(this).attr("name")){
			getterVar = getterVar + "&" + $(this).attr("name") + "=" + $(this).val();
		}
	});
	
	return getterVar;
}

function createGetParameterData(formId, exceptionNm){
	var getterVar = "";
	$("#" + formId).find("input").each(function(){
		if(exceptionNm != $(this).attr("name")){
			getterVar = getterVar + "&" + $(this).attr("name") + "=" + $(this).val();
		}
	});
	
	getterVar= getterVar.replace(/&/g,"%26"); 
	getterVar= getterVar.replace(/\+/g,"%2B"); 

	return getterVar;
}

function replaceUrl(urlVal){
	urlVal= urlVal.replace(/&/g,"%26"); 
	urlVal= urlVal.replace(/\+/g,"%2B"); 

	return urlVal;
}

function inputChkHan(objectName, alias){
	var val  = $("#" + objectName).val();
	if(val == ""){
		printMessage(objectName, "Y");
		return false;
	}
	else if(val.replace('-', '').replace(',','') >= 0 || val.replace('-', '').replace(',','') < 0){
		return true;
	}
	else{
		var messageName = objectName + "Message";
		
		var titleStr = alias + "을(를) 확인하여주세요.";
		$("#" + messageName).html("※ " + titleStr);
		addRedStyle($("#" + messageName));
		$("#" + messageName).show();
	}
}

// 오늘의라면 필수값 체크
function checkFormOrmn(formName){
	
	 
	var flag = true;
	try{
	var inputFlag = inputTextTypeCheckOrmn(formName, flag);
	if(!inputFlag){
		flag = false;
	}
	
	var passwordFlag = inputPasswordTypeCheckOrmn(formName, flag);
	if(!passwordFlag){
		flag = false;
	}
	 
	var selectFlag = selectTypeCheckOrmn(formName, flag);
	if(!selectFlag){
		flag = false;
	}
	 
	var radioFlag = inputRadioTypeCheckOrmn(formName, flag);
	if(!radioFlag){
		flag = false;
	}
	}catch(e){
		alert(e);
	}
	 
	return flag;
	 
}

function inputPasswordTypeCheckOrmn(formName, flag){
	var txtEle = $(formName + " input:password");
	
	for(var i = 0; i < txtEle.length; i++){
		var inputObj = txtEle[i];

		//필수 조건 체크 
		if("nec" == getPropertyVal(inputObj, "nec")){
			var checkFlag = inputTextCheckOrmn(inputObj);

			//공백 체크에서 true이고 전체 공백 검사 값이 true일 경우 공백 실패(false)로 변경 및 포커스 처리
			if(checkFlag && flag){
				flag = false;
				//$(inputObj).focus();
			}
		}

	}

	return flag;
}

function inputTextTypeCheckOrmn(formName, flag){
	var txtEle = $(formName + " input:text");
	
	for(var i = 0; i < txtEle.length; i++){
		var inputObj = txtEle[i];

		//필수 조건 체크 
		if("nec" == getPropertyVal(inputObj, "nec")){
			var checkFlag = inputTextCheckOrmn(inputObj);

			//공백 체크에서 true이고 전체 공백 검사 값이 true일 경우 공백 실패(false)로 변경 및 포커스 처리
			if(checkFlag && flag){
				flag = false;
				//$(inputObj).focus();
			}
		}

	}

	return flag;
}

function inputRadioTypeCheckOrmn(formName, flag){
	var txtEle = $(formName + " input:radio");
	var radioNameAry = new Array;
	
	for(var i = 0; i < txtEle.length; i++){
		if("nec" == getPropertyVal(txtEle[i], "nec")){
			var radioName = getPropertyVal(txtEle[i], "name");
			if(radioNameAry.length <= 0 || !ArrayListCheckVal(radioNameAry, radioName)){
				radioNameAry.push(radioName);
			}
		}
	}
	
	for(var j = 0; j < radioNameAry.length; j++){
		var checkFlag;
		if($("input[name='" + radioNameAry[j] + "']:checked").val() == undefined){
			setError(inputObj, true);
			checkFlag = true;
		}else{
			setError(inputObj, false);
		}

		//공백 체크에서 true이고 전체 공백 검사 값이 true일 경우 공백 실패(false)로 변경 및 포커스 처리
		if(checkFlag && flag){
			flag = false;			
		}
	}

	return flag;
}

function selectTypeCheckOrmn(formName, flag){
	var txtEle = $(formName + " select");
	
	for(var i = 0; i < txtEle.length; i++){
		var inputObj = txtEle[i];

		//필수 조건 체크 
		if("nec" == getPropertyVal(inputObj, "nec")){
			var checkFlag = inputSelectBoxCheckOrmn(inputObj);
			
			//공백 체크에서 true이고 전체 공백 검사 값이 true일 경우 공백 실패(false)로 변경 및 포커스 처리
			if(checkFlag && flag){
				flag = false;
				//$(inputObj).focus();
				//console.log(getPropertyVal(inputObj, "title"));
			}
		}

	}

	return flag;
}

function inputTextCheckOrmn(inputObj){
	var objName = getPropertyVal(inputObj, "name");
	
	if(getVal(inputObj) == ""){
		setError(inputObj, true);
		return true;
	}else{
		setError(inputObj, false);
		return false;
	}
}

function inputSelectBoxCheckOrmn(inputObj){
	var objName = getPropertyVal(inputObj, "name");
	
	if(getVal(inputObj) == ""){
		setError(inputObj, true);
		return true;
	}else{
		setError(inputObj, false);
		return false;
	}
}

function setError(inputObj, flag) {
 	if (flag) {
		$(inputObj).parent().addClass("error");
		$(inputObj).focus();
	}
	else {
		$(inputObj).parent().removeClass("error");
	}
}

function setSuccess(inputObj, flag) {
 	if (flag) {
		$(inputObj).parent().addClass("success").removeClass("error");
	}
	else {
		$(inputObj).parent().removeClass("success");
	}
}