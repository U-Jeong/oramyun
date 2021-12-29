// subscribe, gift - noodle select in noodle-info-view toggle
$(".noodle-item-box .noodle-item-thumb").click(function() {
    $(this).siblings(".noodle-info-view").fadeIn();
});
$(".noodle-info-view .info-view-closebtn").click(function() {
    $(this).parents(".noodle-info-view").fadeOut();
});

// subscribe, gift, mypage - noodle select : input counting
$(function(){
	
	function Counter(container, defaultValue){
		this.container = container;
		this.productCount = defaultValue;
		this.increaseBtn = this.container.find('.quantity_up');
		this.decreaseBtn = this.container.find('.quantity_down');
		this.valueContainer = this.container.find('input');

		this.increase = function(){
			this.productCount++;
			this.decreaseBtn.removeClass('disabled')
			this.valueContainer.val(this.productCount)
			
		};

		this.decrease = function(){
			if(this.productCount > 1){
				this.productCount--
				if(this.productCount == 1){
					this.decreaseBtn.addClass('disabled')
				}
			}
			this.valueContainer.val(this.productCount)
			
		};

		this.clickEvent = function(){
			
			var _this = this;
			this.container.on('click', function(e){
				e.preventDefault();
				var target = e.target;
				
				if(target.classList.contains('quantity_up')){
					_this.increase()

				}else if(target.classList.contains('quantity_down')){
					_this.decrease();
				}else {
					return;
				}
			})

		}
		

		this.init = function(){
			this.clickEvent();
		};

	}

	var counters = $('.quantity-area');
	
	counters.each(function(){
		
		var counter = new Counter($(this), 1);
		counter.init();
		
	})
});

// subscribe, gift - noodle select : payment info, noodle info section toggle
$(function () {
	
	$('.del-noodle-selbox > div').hide();
	var btn = $('.del-noodle-selbox > a');
	var list = $('.del-noodle-selbox > div')

	btn.click(function (e) {
		e.preventDefault();

		btn.removeClass("active");

		if ($(this).next().css('display') == "none") {
			var a = btn.index(this);
			list.slideUp();
			btn.eq(a).addClass("active");
		}
		$(this).next().slideToggle('fast');
	});
	
});

// subscribe, gift, mypage - coupon, point use tab active
$(function() {
    $('.benefit-tab-box ul li a').click(function(e) {
        var allMenu = $('.benefit-tab-box ul li')
        var menu = $(this).parent('li')
        var idx = menu.index();
        var tabContent = $('.benefit-select-cont')
        if (!menu.hasClass('on')) {
            allMenu.removeClass('on')
            menu.addClass('on');
            tabContent.hide();
            tabContent.eq(idx).stop().fadeIn(0)
        }

    })
})

//community - notice, event
$(function(){	
	
	//community - notice, event, review : cmty slide
	var cmty_slide_num = $('.community-top .cmty-item').length;
    function cmty_slide(){
		var cmty_slide_pc = {
			slidesPerView : 1 ,
			spaceBetween : 20 ,
			loopPreventsSlide : false,
			loopFillGroupWithBlank : true,
			loopAdditionalSlides : 1,
            speed : 1000,
			loop: false,
			observer : true,
			observeParents : true,
			observeSlideChildren : true,
			centeredSlides: true,
			autoplay: {
				delay: 3000,
				disableOnInteraction: false,
			},
			pagination: {
		          el: ".cmty-pagination",
		          clickable: true,
		    },
			on : {
				slideChange : function(){
					var idx = cmty_slide_pc.realIndex;					
				}
			}
		};		
		cmty_slide = new Swiper('.cmty-slide', cmty_slide_pc)
	};	
	function init(){
		cmty_slide();
	};
	init();	
	
	// mypage - order : noodle list toogle
    $('.order-product-info .my-noodle-togglebox').hide();
	var btn = $('.order-product-info .toggle-btn');
	var list = $('.order-product-info .my-noodle-togglebox')

	btn.click(function (e) {
		e.preventDefault();

		btn.removeClass("on");

		if ($(this).next().css('display') == "none") {
			var a = btn.index(this);
			list.slideUp();
			btn.eq(a).addClass("on");
		}
		$(this).next().slideToggle('fast');
	});
	
	//썸네일 이미지 박스
	function imageBox_init(){
		imageBox_load_fn();
		layerImagePop_open();
		imageDel_fn();
	}imageBox_init();
});

//sign - terms layer fade toggle
$(".terms-btn").click(function() {
	$(".terms-info-view").fadeIn();
});
$(".terms-info-view .layer-closebtn").click(function() {
	$(this).parents(".terms-info-view").fadeOut();
});

// community - quiz : hint-box fade toggle
$(".quiz_frame_box .hint-btn").click(function() {
	$(this).siblings(".quiz-hint-view").fadeIn();
});
$(".quiz-hint-view .hint-view-closebtn").click(function() {
	$(this).parents(".quiz-hint-view").fadeOut();
});

// layer popup fade
$(".layer-btn").click(function() {
	$(this).siblings(".layer-info-view").fadeIn();
});
$(".layer-info-view .layer-closebtn").click(function() {
	$(this).parents(".layer-info-view").fadeOut();
});

$(".add-dest-btn").click(function() {
	$(this).siblings(".layer-info-view").fadeIn();
});

$(".myaddr-btn").on("click",function() {
	$(this).siblings(".layer-info-view").fadeIn();
});

$(".layer-info-view .layer-closebtn").click(function() {
	$(this).parents(".layer-info-view").fadeOut();
});

$(".layer-btn-history").click(function() {
	$(this).siblings(".layer-history-view").fadeIn();
});
$(".layer-history-view .layer-closebtn").click(function() {
	$(this).parents(".layer-history-view").fadeOut();
});

$(".edit-dest-btn").click(function() {
	$(this).siblings(".editlayer-info-view").fadeIn();
});
$(".editlayer-info-view .layer-closebtn").click(function() {
	$(this).parents(".editlayer-info-view").fadeOut();
});

document.addEventListener('DOMContentLoaded', function(){
    //별점선택 이벤트 리스너
    const rateForms = document.querySelectorAll('.rating'); /* 별점 선택 템플릿을 모두 선택 */
	rateForms.forEach(function(item){//클릭 이벤트 리스너 각각 등록
		item.addEventListener('click',function(e){
			let elem = e.target;
			if(elem.classList.contains('rate_radio')){
				rating.setRate(elem.parentElement, parseInt(elem.value)); // setRate() 에 ".rating" 요소를 첫 번째 파라메터로 넘김
			}
		})
	});
});
//별점 마킹 모듈 프로토타입으로 생성
function Rating(){};
Rating.prototype.rate = 0;
Rating.prototype.setRate = function(rateobj, newrate){
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
	let checks = null;
	//요소가 파라메터로 넘어오면 별점 클릭, 없으면 저장 후 전체 초기화
	if(rateobj){
		rateobj.querySelector('.ratefill').style.width = parseInt(newrate * 20) + '%'; // 현재 별점 갯수 채색
		checks = rateobj.querySelectorAll('.rate_radio'); // 넘어온 요소 하위의 라디오버튼만 선택
	}else{
		//전체 별점 채색 초기화
		const rateFills = document.querySelectorAll('.ratefill');
		rateFills.forEach(function(item){
			item.style.width = parseInt(newrate * 20) + '%';
		});
		//전체 라디오 버튼 초기화
		checks = document.querySelectorAll('.rate_radio');
	}
	//별점 체크 라디오 버튼 처리
	if(checks){
		checks.forEach(function(item, idx){
			if(idx < newrate){
				item.checked = true;
			}else{
				item.checked = false;
			}
		});		
	}
}
let rating = new Rating();//별점 인스턴스 생성


// 이미지 썸네일 로딩
function imageBox_load_fn(){
	
	var imageItem = $('.image-box .image-item');
	if(!imageItem.length) return;
	
	var imageItemFigure = $('.image-box .image-item figure');
	
	imageItemFigure.each(function(){
		
		var imgurl = $(this).attr('date-imgurl');
		
		if(!imgurl == ''){
			
			$(this).css({'background-image': 'url('+ imgurl +')'});
		}
	})
	
}

// 이미지 팝업
function layerImagePop_open(){

	var imgPop_btn = $('.image-box .image-item');
	
	if(!imgPop_btn.length) return;
	
	imgPop_btn.on('click',function(e){
		
		e.preventDefault();
		var imgPop = $('.layer-image-view'),
			imgurl = $(this).find('figure').attr('date-imgurl'),
			imgPop_img = $('.layer-image-view .layer-image-area img');
		
		imgPop_img.attr('src',''); //src 리셋
		imgPop_img.attr('src',imgurl);
		imgPop.fadeIn();
	})
}

// 이미지 박스에 이미지 추가
function imageAdd_fn(){
	
	var imageItemFigure = $('.image-box .image-item figure');
	
	imageItemFigure.each(function(){
		
		var imgurl = $(this).attr('date-imgurl');
		
		if(!imgurl == ''){
			
			$(this).parents('.image-item').removeClass('noImg');
		}
	})
	
	imageBox_load_fn();
}

//이미지 박스에 이미지 삭제
function imageDel_fn(){
	
	var imageDel_btn = $('.image-box .image-item .image-delBtn');
	
	if(!imageDel_btn.length) return;
	
	imageDel_btn.on('click',function(e){
		
		e.preventDefault();
		
		var imageBox = $(this).parents('.image-box');
	
		$(this).parents('.image-item').remove();
		
		var defaultItem = 
			'<div class="image-item noImg">' +
			'<figure onclick="javascript:clickFile();"></figure>'+
			'<button class="image-delBtn" type="button"><span class="icon"></span><span class="blind">파일 삭제</span></button>' +
			'</div>';
		
		
		imageBox.append(defaultItem);
	});
}

/* 21.10.19 review-slide */
$(function(){
	
	var rv_photo_slide_num = $('.review-photo-slide .photo-item').length;
    function rv_photo_slide(){
		var rv_photo_slide_pc = {
			slidesPerView : 1 ,
			loopPreventsSlide : false,
			loopFillGroupWithBlank : true,
			loopAdditionalSlides : 3,
            speed : 1000,
			loop: false,
			observer : true,
			observeParents : true,
			observeSlideChildren : true,
			centeredSlides: true,
			autoplay: {
				delay: 2000,
				disableOnInteraction: false,
			},
			navigation: {
		          nextEl: ".review-arrow-next",
		          prevEl: ".review-arrow-prev",
		    },
			pagination: false,
			on : {
				slideChange : function(){
					var idx = rv_photo_slide_pc.realIndex;


				}
			}
		};
		
		rv_photo_slide = new Swiper('.review-photo-slide',rv_photo_slide_pc)

	};
	
	function init(){
		rv_photo_slide();
	};

	init();
	
});