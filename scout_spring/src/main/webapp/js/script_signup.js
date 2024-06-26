$(document).ready(function() {
    $('select').niceSelect();
});

$('.lnb').mouseover(function(){
    $('.header').addClass('active');
});
$('.lnb').mouseleave(function(){
    $('.header').removeClass('active');
});

// 각 nav 항목의 클릭 이벤트를 설정
$('.nav > li > a').click(function(e) {
    e.preventDefault();  // 기본 이벤트를 막음

    // 현재 클릭한 항목의 부모 요소 (li)를 찾고 그 안의 subNav를 선택
    var $subNav = $(this).parent().find('.subNav');

    // 현재 subNav가 보이는지 확인
    if ($subNav.is(':visible')) {
        $subNav.fadeIn(500);  // 이미 보이면 숨김
    } else {
        $('.subNav').fadeOut();  // 다른 모든 subNav를 숨김
        $subNav.fadeIn(500);  // 현재 subNav만 표시
    }
});
$('.lnb').mouseleave(function() {
    $('.subNav').fadeOut(100);  // 모든 subNav 숨김
});


const tabItem = document.querySelectorAll('.formTabNav li');
const tabInner = document.querySelectorAll('.fomrTabContent');

tabItem.forEach((tab, idx)=> {
    tab.addEventListener('click', function(){
        tabInner.forEach((inner)=> {
            inner.classList.remove('active')
        });

        tabItem.forEach((item)=> {
            item.classList.remove('active')
        });

        tabItem[idx].classList.add('active')
        tabInner[idx].classList.add('active')
    });
});

const historyTabItem = document.querySelectorAll('.historyNav li');
const historyTabInner = document.querySelectorAll('.historyContent');

historyTabItem.forEach((tab, idx)=> {
    tab.addEventListener('click', function(){
        historyTabInner.forEach((inner)=> {
            inner.classList.remove('active')
        });

        historyTabItem.forEach((item)=> {
            item.classList.remove('active')
        });

        historyTabItem[idx].classList.add('active')
        historyTabInner[idx].classList.add('active')
    });
});

const addTabItem = document.querySelectorAll('.addNav li');
const addTabInner = document.querySelectorAll('.addContent');

addTabItem.forEach((tab, idx)=> {
    tab.addEventListener('click', function(){
        addTabInner.forEach((inner)=> {
            inner.classList.remove('active')
        });

        addTabItem.forEach((item)=> {
            item.classList.remove('active')
        });

        addTabItem[idx].classList.add('active')
        addTabInner[idx].classList.add('active')
    });
});

//지도자 가입
// 팝업 열기
$(document).on("click", ".joinBtn", function (e){
	console.log("스크립트에서 팝업열기 리더")
	$('#leader_idx').val("");
	$('#YEAR').val("");
	$('#CONFIRMY').val("");
	$('#associationcode_leader').val("");
	$('#unitycode_leader').val("");
	$('#troop_leader').val("");
	$('#leader_orgno').val("");
	$('#LEADERORGPOSITIONCODE').val("");
	$('#LEADERPOSITIONCODE1').val("");
	$('#LEADERPOSITIONCODE2').val("");
	
	$(":checkbox[id='ADMINY']").attr("checked", false)
	$(":checkbox[id='PAYY']").attr("checked", false)
	$(":checkbox[id='FEEEXCLUDE']").attr("checked", false)
	
	$('#FEEEXCLUDCODE').val("");
	$('#BANKDAY').val("");
	$('#ENTRYFEE').val("");
	$('#INSURANCEFEE').val("");
	$('#SCOUTMAGACNT').val("");
	$('#SCOUTMAGAFEE').val("");
	$('#LEADERMAGACNT').val("");
	$('#LEADERMAGAFEE').val("");
	$('#total_amount').val("");
	$('#joinPopup select').niceSelect('update')
    
    let target = $(this).attr("href");
});
// 팝업닫기
$("#joinPopup button").click(function(){
	console.log("스크립트에서 닫기")
	$('#leader_idx').val("");
	$('#YEAR').val("");
	$('#CONFIRMY').val("");
	$('#associationcode_leader').val("");
	$('#unitycode_leader').val("");
	$('#troop_leader').val("");
	$('#leader_orgno').val("");
	$('#LEADERORGPOSITIONCODE').val("");
	$('#LEADERPOSITIONCODE1').val("");
	$('#LEADERPOSITIONCODE2').val("");
	
	$(":checkbox[id='ADMINY']").attr("checked", false)
	$(":checkbox[id='PAYY']").attr("checked", false)
	$(":checkbox[id='FEEEXCLUDE']").attr("checked", false)
	

	$('#FEEEXCLUDCODE').val("");
	$('#BANKDAY').val("");
	$('#ENTRYFEE').val("");
	$('#INSURANCEFEE').val("");
	$('#SCOUTMAGACNT').val("");
	$('#SCOUTMAGAFEE').val("");
	$('#LEADERMAGACNT').val("");
	$('#LEADERMAGAFEE').val("");
	$('#total_amount').val("");
	$('#joinPopup select').niceSelect('update')
    $("#joinPopup").removeClass("active");
});

//대원 가입
// 팝업 열기
$(document).on("click", ".scoutJoinBtn", function (e){
	console.log("스크립트에서 팝업열기 대원")
	$('#scout_idx').val("");
	$('#YEAR_SCOUT').val("");
	$('#CONFIRMY_SCOUT').val("");
	$('#associationcode_scout').val("");
	$('#unitycode_scout').val("");
	$('#troop_scout').val("");
	$('#scout_orgno').val("");
	
	$('#SCOUTSCHOOLYEAR').val("")
	$('#SCOUTSCHOOLBAN').val("")
	$('#SCOUTCLSCODE').val("")
	$('#SCOUTBAN').val("")
	$('#SCOUTPOSITIONCODE').val("")
	$('#SCOUTSCHOOLYEAR_SCOUT').val("")
	
	
	$('#ADMINY_SCOUT').val("");
	$('#FEEEXCLUDE_SCOUT').val("");
	$('#FEEEXCLUDCODE_SCOUT').val("");
	$('#BANKDAY_SCOUT').val("");
	$('#PAYY_SCOUT').val("");
	$('#ENTRYFEE_SCOUT').val("");
	$('#INSURANCEFEE_SCOUT').val("");
	$('#SCOUTMAGACNT_SCOUT').val("");
	$('#SCOUTMAGAFEE_SCOUT').val("");
	$('#total_amount_scout').val("");
	
	$('#joinMemPopup select').niceSelect('update')
	
    let target = $(this).attr("href");
});
// 팝업닫기
$("#joinMemPopup button").click(function(){
	$('#scout_idx').val("");
	$('#YEAR_SCOUT').val("");
	$('#CONFIRMY_SCOUT').val("");
	$('#associationcode_scout').val("");
	$('#unitycode_scout').val("");
	$('#troop_scout').val("");
	$('#scout_orgno').val("");
	
	$('#SCOUTSCHOOLYEAR').val("")
	$('#SCOUTSCHOOLBAN').val("")
	$('#SCOUTCLSCODE').val("")
	$('#SCOUTBAN').val("")
	$('#SCOUTPOSITIONCODE').val("")
	
	
	$('#ADMINY_SCOUT').val("");
	$('#FEEEXCLUDE_SCOUT').val("");
	$('#FEEEXCLUDCODE_SCOUT').val("");
	$('#BANKDAY_SCOUT').val("");
	$('#PAYY_SCOUT').val("");
	$('#ENTRYFEE_SCOUT').val("");
	$('#INSURANCEFEE_SCOUT').val("");
	$('#SCOUTMAGACNT_SCOUT').val("");
	$('#SCOUTMAGAFEE_SCOUT').val("");
	
	$('#total_amount_scout').val("");
	$('#joinMemPopup select').niceSelect('update')
    $("#joinMemPopup").removeClass("active");
});
//학교/단체 찾기
// 팝업 열기
$(document).on("click", ".groupBtn", function (e){
    let target = $(this).attr("href");
    $(target).addClass("active");
});
// 팝업닫기
$(".modalInner button").click(function(){
    $("#groupPopup").removeClass("active");
});

//관계연결
// 팝업 열기
$(document).on("click", ".relationBtn", function (e){
    let target = $(this).attr("href");
    $(target).addClass("active");
}); 
// 팝업 열기
$(document).on("click", ".searches", function (e){
    let target = $(this).attr("href");
    $(target).addClass("active");
});
//팝업닫기
$(".popupInner button").click(function(){
    $("#relationPopup").removeClass("active");
});


document.addEventListener('DOMContentLoaded', function() {
    // leader_list와 scout_list 테이블에 이벤트 위임 설정
    document.addEventListener('click', function(event) {
        // 클릭된 요소가 leader_list 또는 scout_list 내의 tr 요소인지 확인
        const clickedRow = event.target.closest('#leader_list tr, #scout_list tr, #searchResultList tr, #relation_list tr, #search_relation_list tr, #group_list tr, #org_list tr, #unit_list tr');
        if (clickedRow) {
            const table = clickedRow.closest('table');
            const rows = table.querySelectorAll('tr');

            rows.forEach(tr => {
                tr.classList.remove('active');
            });

            clickedRow.classList.add('active');
        }
    });
});