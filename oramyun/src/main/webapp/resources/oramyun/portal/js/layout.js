// mobile GNB
$(function(){
	var global_state = {
        isMobile : false,
        isSearchOpen : false,
        isSiteMapOpen : false,
        isMGnbOpen : false,
    }
  	
	function browserWidthCheck(){
		var w = window.innerWidth;
		if (w < 1281) {
            global_state.isMobile = true;
            $('html').addClass('mobile');
            $('html').removeClass('pc');
		} else {
            global_state.isMobile = false;
            $('html').removeClass('mobile');
            $('html').addClass('pc');
		}
	}

	function mobile_gnb(){
        var mobile_gnb_btn = $('.mnb .mo_menu');
        var mobile_gnb_pannel = $('#mo_gnb');
        var mobile_gnb_bg = $('.mo_bg');
        var mobile_gnb_close_btn = $('.mo_gnb_top .mo_close');

        mobile_gnb_btn.click(function(){
            if(global_state.isMobile && !global_state.isMGnbOpen){
                mobile_gnb_pannel.addClass('open')
                mobile_gnb_bg.stop().fadeIn();
                global_state.isMGnbOpen = true;
            }
        })

        mobile_gnb_close_btn.click(function(){
            if(global_state.isMobile && global_state.isMGnbOpen){
                mobile_gnb_pannel.removeClass('open')
                mobile_gnb_bg.stop().fadeOut();
                global_state.isMGnbOpen = false;
            }
        })

        $(document).mouseup(function (e){
            var container = mobile_gnb_pannel

            if (global_state.isMobile && !container.is(e.target) && container.has(e.target).length === 0){
                    mobile_gnb_pannel.removeClass('open')
                    mobile_gnb_bg.stop().fadeOut();
                    global_state.isMGnbOpen = false;
                }
        });
    }

	function resizeInit(){

        $(window).resize(function(){
            browserWidthCheck();
        })
    }

	function init(){
		browserWidthCheck();
        mobile_gnb();
		resizeInit();
	}
    
	init();
	
});	
	
	
// header - event_bar remove
$(".event-close-btn").click(function() {
    $('#sticky-bar').css('display','none');
});

//header - event-popzone remove
$(".event-popclose-btn").click(function() {
    $('#event-popzone').fadeOut(200);
});

//footer - counsel layerpopup
$(".counsel-btn").click(function() {
	$(this).siblings(".counsel-layer").fadeIn();
});
$(".counsel-layer .layer-closebtn").click(function() {
	$(this).parents(".counsel-layer").fadeOut();
});
