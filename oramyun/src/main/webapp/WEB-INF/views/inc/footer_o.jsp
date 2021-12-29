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
<footer id="footer">
	<div class="footer-top">
		<div class="inwrap">
			<ul class="fmenu">
				<li>
					<a href="https://www.oramyun.com/view.do?no=51" title="이용약관"><span>이용약관</span></a>
				</li>
				<li>
					<a href="https://www.oramyun.com/view.do?no=53" title="개인정보처리방침"><span>개인정보처리방침</span></a>
				</li>
				<li>
					<div>
						<a href="https://www.oramyun.com/#n" title="입점/제휴 문의" class="counsel-btn"><span>입점/제휴 문의</span></a>
						<div class="counsel-layer">
							<div class="layer-inner-box">
								<div class="close-btn"><button type="button" class="layer-closebtn" title="닫기"></button></div>
								<div class="counsel-layer-area">
									<form name="enter_form" id="enter_form" method="post" action="https://www.oramyun.com/ormn/portal/nqr/store.do">
									<input type="hidden" name="_csrf" value="022c78a9-58c1-4a07-96fb-094434280c37">
									<input type="hidden" name="nowUrl" value="/">
									<input type="hidden" name="nqrType" value="0020">
									
									<div class="layer-title">
										<h4 class="layer-tit">입점/제휴 문의</h4>
									</div>															
									<div class="counsel-input-box">
										<div class="input-box">
											<label for="cselName" class="label">성함</label>
											<input name="name" type="text" id="cselName" class="normal-input" autocomplete="off" maxlength="25" value="" title="성함" placeholder="성함을 입력해주세요 (예: 홍길동/오란희)" nec="nec">
											<span class="error-message">성함을 입력해주세요</span>
										</div>
										<div class="input-box">
											<label for="cselCompNm" class="label">회사명/직책</label>
											<input name="cpNmDuty" type="text" id="cselCompNm" class="normal-input" autocomplete="off" maxlength="50" value="" title="회사명/직책" placeholder="회사명과 직책을 입력해주세요 (예 : (주)오라면 / 영업팀장)" nec="nec">
											<span class="error-message">회사명/직책을 입력해주세요</span>
										</div>
										<div class="input-box">
											<label for="cselPnMail" class="label">연락처/이메일</label>
											<input name="phoneNumEmail" type="text" id="cselPnMail" class="normal-input" autocomplete="off" maxlength="50" value="" title="연락처/이메일" placeholder="연락처와 이메일을 입력해주세요 (예 : 010-1234-5678 / rani1234@gmail.com)" nec="nec">
											<span class="error-message">연락처/이메일을 입력해주세요</span>
										</div>
										<div class="input-textarea-box">
											<label for="cselCont" class="label">문의내용</label>
											<textarea class="textarea" name="cnts" id="cselCont" title="문의내용" placeholder="문의내용을 입력해주세요"></textarea>
											<span class="error-message">문의내용을 입력해주세요</span>
										</div>
									</div>
									<div class="counsel-btn-wrap">
										<button type="button" class="csel-btn" onclick=""><span>문의하기</span></button>
									</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div>
						<a href="https://www.oramyun.com/#n" title="기업/대량 구매 문의" class="counsel-btn"><span>기업/대량 구매</span></a>
						<div class="counsel-layer">
							<div class="layer-inner-box">
								<div class="close-btn"><button type="button" class="layer-closebtn" title="닫기"></button></div>
								<div class="counsel-layer-area">
									<form name="bulk_form" id="bulk_form" method="post" action="https://www.oramyun.com/ormn/portal/nqr/store.do">
									<input type="hidden" name="_csrf" value="022c78a9-58c1-4a07-96fb-094434280c37">
									<input type="hidden" name="nowUrl" value="/">
									<input type="hidden" name="nqrType" value="0010">
									
									<div class="layer-title">
										<h4 class="layer-tit">기업/대량 구매 문의</h4>
									</div>															
									<div class="counsel-input-box">
										<div class="input-box">
											<label for="cselName" class="label">성함</label>
											<input name="name" type="text" id="cselName" class="normal-input" autocomplete="off" maxlength="25" value="" title="성함" placeholder="성함을 입력해주세요 (예: 홍길동/오란희)" nec="nec">
											<span class="error-message">성함을 입력해주세요</span>
										</div>
										<div class="input-box">
											<label for="cselCompNm" class="label">회사명/직책</label>
											<input name="cpNmDuty" type="text" id="cselCompNm" class="normal-input" autocomplete="off" maxlength="50" value="" title="회사명/직책" placeholder="회사명과 직책을 입력해주세요 (예 : (주)오라면 / 영업팀장)" nec="nec">
											<span class="error-message">회사명/직책을 입력해주세요</span>
										</div>
										<div class="input-box">
											<label for="cselPnMail" class="label">연락처/이메일</label>
											<input name="phoneNumEmail" type="text" id="cselPnMail" class="normal-input" autocomplete="off" maxlength="50" value="" title="연락처/이메일" placeholder="연락처와 이메일을 입력해주세요 (예 : 010-1234-5678 / rani1234@gmail.com)" nec="nec">
											<span class="error-message">연락처/이메일을 입력해주세요</span>
										</div>
										<div class="input-textarea-box">
											<label for="cselCont" class="label">문의내용</label>
											<textarea class="textarea" name="cnts" id="cselCont" title="문의내용" placeholder="대략적인 주문 수량을 기재해주시기 바랍니다."></textarea>
											<span class="error-message">문의내용을 입력해주세요</span>
										</div>
									</div>
									<div class="counsel-btn-wrap">
										<button type="button" class="csel-btn" onclick=""><span>문의하기</span></button>
									</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>			
			<ul class="footer-sns">
				<li><a href="https://www.instagram.com/oramyun_official/" title="오늘의 라면 인스타그램 바로가기" target="_blank" class="f-insta"><span>인스타그램</span></a></li>
				<li><a href="https://www.oramyun.com/#n" title="오늘의 라면 카카오채널 바로가기" onclick="" class="f-kakao"><span>카카오채널</span></a></li>
			</ul>
		</div>
	</div>
	
	<div class="footer-btm">
		<div class="inwrap">
			<div class="fcont-left">
				<div class="fleft-list">
					<p class="ftit">INFO</p>
					<ul>
						<li><span>(주)유시스</span>부산 해운대구 센텀북대로 60 센텀IS타워 1007호</li>
						<li><span>대표자명</span>박종덕</li>
						<li><span>사업자등록번호</span>617-81-60090<a href="https://www.oramyun.com/#n" onclick="" title="사업자정보확인" class="bizinfo">[사업자정보확인]</a></li>
						<li><span>통신판매업신고번호</span>2012-부산해운-0108</li>
					</ul>
				</div>
			</div>
			<div class="fcont-right">
				<div class="fright-list">
					<p class="ftit">CS CENTER</p>
					<ul>
						
						<li><span class="cscenter">문의전화</span>070-4351-3012</li>
						<li><span class="chat">업무시간</span>평일 10:00 ~ 17:00 (주말/공휴일 휴무)</li>
						<li><span class="mail">문의메일</span>rrh@uxis.co.kr</li>
						<li><span class="fax">팩스번호</span>051-780-8157</li>
					</ul>
				</div>
			</div>
		</div>		
	</div>
	<div class="copyright">
		<p class="copyright-txt">Copyright ⓒ 2021 Today Noodle All rights reserved.</p>
	</div>	
</footer>

</body>
</html>