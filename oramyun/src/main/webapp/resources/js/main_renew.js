$(function(){
	
	// main visual _ noodle-slide	
	function noodle_Slide (){

        var imgNum = 20;
        var rowCount = 2;
        var rowImgCount = 10;
        var imgArray = [];
        var rowContainer = $('.noodle-slide .row .swiper-wrapper');

        (function makeImgArray(){
            for(var i =0; i < imgNum; i ++){
                imgArray.push('<div class="noodle-item swiper-slide"><figure><img src="/portal/img/main/renew/noodle/'+ (i+1) +'.png" alt=""></div>')    
            }                              
        })();

        for(var i = 0; i < rowCount; i++){
            var imgSlide = [];                            
            for(var j = 0; j < rowImgCount; j++){
                var pickSlide = imgArray.splice(Math.floor(Math.random() * imgArray.length),1)[0]
                imgSlide.push(pickSlide)
            }
            rowContainer.eq(i).append(imgSlide.join(''));
        }                            

        var containers = $('.main_visual .noodle-slide .swiper-container')

        containers.each(function(idx){
            var container = $(this);

            new Swiper(container,  {
                slidesPerView : 'auto',
                loop:true,
                grabCursor: false,
                freeMode: true, 
                speed: 10000,
                loopedSlides: 10,
                autoplay: {
                    delay: idx == 2 ? 1 : 2 ,
                    reverseDirection: idx == 1 ? true : false,
                },                                    
                disableOnInteraction: true,
                allowTouchMove : false,
            })
        })
    };	
	
	// main section03 _ talk-slide
	var talk_slide_num = $('.sec03 .talk-item').length;
    function talk_slide(){
		var talk_slide_pc = {
			slidesPerView : 1 ,
			loopPreventsSlide : false,
			loopFillGroupWithBlank : true,
			loopAdditionalSlides : 0,
            speed : 1000,
			loop: true,
			observer : true,
			observeParents : true,
			observeSlideChildren : true,
			centeredSlides: true,
			allowTouchMove : false,
			effect: "fade",
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			navigation: false,
			pagination: false,
			on : {
				slideChange : function(){
					var idx = talk_slide_pc.realIndex;


				}
			}
		};
		
		talk_slide = new Swiper('.talk-slide',talk_slide_pc)

	};
		
	// main section04 _ review-slide
	var review_slide_num = $('.sec04 .review-item').length;
    function review_slide(){
		var review_slide_pc = {
			centeredSlides: true,
			slidesPerView : 3.8235 ,
			spaceBetween : 20 ,
			loopPreventsSlide : false,
			loopFillGroupWithBlank : true,
			loopAdditionalSlides : 3,
			initialSlide: 1,
            speed : 2000,
			loop: true,
			observer : true,
			observeParents : true,
			observeSlideChildren : true,
			autoplay: {
				delay: 2000,
				disableOnInteraction: false,
			},
			breakpoints : {   
				1280 : {
					slidesPerView : 3.5 ,
					spaceBetween : 14 ,					
				},
				1080 : {
					slidesPerView : 3.15 ,
					spaceBetween : 14 ,					
				},
				768 : {
					slidesPerView : 2.15 ,
					spaceBetween: 14,
					touchReleaseOnEdges : false,
				},
				640 : {
					slidesPerView : 1.85 ,
					spaceBetween: 14,
					touchReleaseOnEdges : false,
				},
				540 : {
					slidesPerView : 1.55 ,
					spaceBetween: 14,
					touchReleaseOnEdges : false,
				},
				480 : {
					slidesPerView : 1.35 ,
					spaceBetween: 14,
					touchReleaseOnEdges : false,
				},
				392 : {
					slidesPerView : 1.15 ,
					spaceBetween: 14,
					touchReleaseOnEdges : false,
				},
			},
			on : {
				slideChange : function(){
					var idx = review_slide_pc.realIndex;
				}
			}
		};
		
		review_slide = new Swiper('.review-slide',review_slide_pc)

	};
	
	// intro _ intro_slide
	var intro_slide_num = $('.intro03 .intro-item').length;
    function intro_slide(){
		var intro_slide_pc = {
			slidesPerView : 1 ,
			loopPreventsSlide : false,
			loopFillGroupWithBlank : true,
			loopAdditionalSlides : 2,
            speed : 2000,
			loop: true,
			observer : true,
			observeParents : true,
			observeSlideChildren : true,
			centeredSlides: true,
			//effect: "fade",
			autoplay: {
				delay: 2000,
				disableOnInteraction: false,
			},
			navigation: false,
			pagination: false,
			on : {
				slideChange : function(){
					var idx = intro_slide_pc.realIndex;


				}
			}
		};
		
		intro_slide = new Swiper('.intro_slide',intro_slide_pc)

	};
	
	function init(){
		noodle_Slide();
		talk_slide();
		review_slide();
		intro_slide();
	};

	init();
	
	// main visual scrolldown
	$('.head-cont-btn').on('click', function() {
		
		$('html').animate({
			scrollTop: $( $.attr(this, 'href') ).offset().top			
		}, 500);
		return false;		
	});

});