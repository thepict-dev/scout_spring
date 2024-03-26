AOS.init();


//스크롤 엄지 클래스
$(window).on('scroll', function () {
    if ($(window).scrollTop() < 845) {
        $('.thumb').removeClass('off');
    } else {
        $('.thumb').addClass('off');
    }
});

//스크롤 엄지
let scrollTop = 0;

$(window).on('scroll', function(){
	
	scrollTop = $(window).scrollTop();
	
	$('.thumb1').css('transform', 'translateX(' + scrollTop * -0.15 + 'px)');
	$('.thumb2').css('transform', 'translateX(' + scrollTop * -0.15 + 'px)');
	$('.thumb3').css('transform', 'translateX(' + scrollTop * 0.15 + 'px)');
	$('.thumb4').css('transform', 'translateX(' + scrollTop * 0.15 + 'px)');
})
	
//h2 스크롤 밑줄
//$(window).scroll(function() {
//	var scroll = $(document).scrollTop();
//	var minusH = $(document).innerHeight() / 10;
//	var target1 = $('.subTitles span').offset().top;//
//	if (scroll > target1 - minusH) {
//		$('.subTitles span').addClass('active');
//	}
//});

//스와이퍼
const swiper1 = new Swiper('.swiper-container', {
    autoplay: {
      delay: 1000,
      disableOnInteraction: false
    },
    pagination: false,
    slidesPerView: "auto",
    spaceBetween: 20,
    loop: true,	// 무한 루프 적용
    speed: 1000,
    breakpoints: {
        0: {
            slidesPerView: 1.7,
        },
        769: {
            slidesPerView: 2.5,  //브라우저가 768보다 클 때
        },
        1025: {
            slidesPerView: 4.7,  //브라우저가 1024보다 클 때
        },
    }
});

//서브 스크롤
var ovf, slider;
$(function(){
    ovf = this.querySelector(".subContents");
    slider = this.querySelector(".subTop");
    winResize();
    $(window).bind({resize: winResize, scroll: winScroll});
});

function winResize(){   
    ovf.style.top = slider.offsetHeight + 100 + "px";
}

function winScroll(){
    var op = 1 - (window.pageYOffset / slider.offsetHeight);
    slider.style.opacity = op; 
}

// 컨텐츠 로드(더보기)
$(function(){
    $(".videoList ul li").slice(0, 12).css('display', 'block'); // 초기갯수
    $(".moreButton button").click(function(e){ // 클릭시 more
        // e.preventDefault();
        $(".videoList ul li:hidden").slice(0, 12).css('display', 'block'); // 클릭시 more 갯수 지저정
        if($(".videoList ul li:hidden").length === 0){ // 컨텐츠 남아있는지 확인
            $(".moreButton button").hide() // 컨텐츠 없을시 버튼 없앰
        }
    });
});

// 컨텐츠 로드(더보기)
$(function(){
    $(".bdLists.boardL li").slice(0, 10).css('display', 'block'); // 초기갯수
    $(".moreButton.bd button").click(function(e){ // 클릭시 more
        e.preventDefault();
        $(".bdLists.boardL li:hidden").slice(0, 10).css('display', 'block'); // 클릭시 more 갯수 지저정
        if($(".bdLists.boardL li:hidden").length === 0){ // 컨텐츠 남아있는지 확인
            $(".moreButton.bd button").hide() // 컨텐츠 없을시 버튼 없앰
        }
    });
});

// 컨텐츠 로드(더보기)
$(function(){
    $(".bdLists.news li").slice(0, 10).css('display', 'block'); // 초기갯수
    $(".moreButton.bd.news button").click(function(e){ // 클릭시 more
        e.preventDefault();
        $(".bdLists.news li:hidden").slice(0, 10).css('display', 'block'); // 클릭시 more 갯수 지저정
        if($(".bdLists.news li:hidden").length === 0){ // 컨텐츠 남아있는지 확인
            $(".moreButton.bd.news button").hide() // 컨텐츠 없을시 버튼 없앰
        }
    });
});