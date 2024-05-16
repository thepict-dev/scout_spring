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

// 대상 Element 선택
const resizer = document.getElementById("dragMe");
const leftSide = resizer.previousElementSibling;
const rightSide = resizer.nextElementSibling;

// 마우스의 위치값 저장을 위해 선언
let x = 0;
let y = 0;

// 크기 조절시 왼쪽 Element를 기준으로 삼기 위해 선언
let leftWidth = 0;

// resizer에 마우스 이벤트가 발생하면 실행하는 Handler
const mouseDownHandler = function (e) {
  // 마우스 위치값을 가져와 x, y에 할당
  x = e.clientX;
  y = e.clientY;
  // left Element에 Viewport 상 width 값을 가져와 넣음
  leftWidth = leftSide.getBoundingClientRect().width;

  // 마우스 이동과 해제 이벤트를 등록
  document.addEventListener("mousemove", mouseMoveHandler);
  document.addEventListener("mouseup", mouseUpHandler);
};

const mouseMoveHandler = function (e) {
  // 마우스가 움직이면 기존 초기 마우스 위치에서 현재 위치값과의 차이를 계산
  const dx = e.clientX - x;
  const dy = e.clientY - y;

  // 크기 조절 중 마우스 커서를 변경함
  // class="resizer"에 적용하면 위치가 변경되면서 커서가 해제되기 때문에 body에 적용
  document.body.style.cursor = "col-resize";

  // 이동 중 양쪽 영역(왼쪽, 오른쪽)에서 마우스 이벤트와 텍스트 선택을 방지하기 위해 추가
  leftSide.style.userSelect = "none";
  leftSide.style.pointerEvents = "none";

  rightSide.style.userSelect = "none";
  rightSide.style.pointerEvents = "none";

  //
  const newLeftWidth =
    ((leftWidth + dx) * 100) / resizer.parentNode.getBoundingClientRect().width;
  leftSide.style.width = `${newLeftWidth}%`;
};

const mouseUpHandler = function () {
  // 모든 커서 관련 사항은 마우스 이동이 끝나면 제거됨
  resizer.style.removeProperty("cursor");
  document.body.style.removeProperty("cursor");

  leftSide.style.removeProperty("user-select");
  leftSide.style.removeProperty("pointer-events");

  rightSide.style.removeProperty("user-select");
  rightSide.style.removeProperty("pointer-events");

  // 등록한 마우스 이벤트를 제거
  document.removeEventListener("mousemove", mouseMoveHandler);
  document.removeEventListener("mouseup", mouseUpHandler);
};

// 마우스 down 이벤트를 등록
resizer.addEventListener("mousedown", mouseDownHandler);

//파일업로드
const file = document.querySelector(".imgUpload");
const preview = document.querySelector(".profileImg");

file.addEventListener("change", () => {
    const reader = new FileReader();
    reader.onload = () => {
        preview.src = reader.result;
    }
    reader.readAsDataURL(file.files[0]);
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
	$('#joinPopup select').niceSelect('update')
    
    let target = $(this).attr("href");
});
// 팝업닫기
$(".modalInner button").click(function(){
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
	$('#joinPopup select').niceSelect('update')
    $("#joinPopup").removeClass("active");
});

//대원 가입
// 팝업 열기
$(document).on("click", ".joinMemBtn", function (e){
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
	
	
	$('#ADMINY_SCOUT').val("");
	$('#FEEEXCLUDE_SCOUT').val("");
	$('#FEEEXCLUDCODE_SCOUT').val("");
	$('#BANKDAY_SCOUT').val("");
	$('#PAYY_SCOUT').val("");
	$('#ENTRYFEE_SCOUT').val("");
	$('#INSURANCEFEE_SCOUT').val("");
	$('#SCOUTMAGACNT_SCOUT').val("");
	$('#SCOUTMAGAFEE_SCOUT').val("");
	
	$('#joinMemPopup select').niceSelect('update')
	
    let target = $(this).attr("href");
    $(target).addClass("active");
});
// 팝업닫기
$("#join_modal button").click(function(){
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
$("#joinPopup button").click(function(){
    $("#joinPopup").removeClass("active");
});
$("#joinMemPopup button").click(function(){
    $("#joinMemPopup").removeClass("active");
});


// 외부영역 클릭 시 팝업 닫기
$(document).mouseup(function (e){
    let LayerPopup = $("#groupPopup");
    if(LayerPopup.has(e.target).length === 0){
        LayerPopup.removeClass("active");
    }
});
// 외부영역 클릭 시 팝업 닫기
$(document).mouseup(function (e){
    let LayerPopup = $("#relationPopup");
    if(LayerPopup.has(e.target).length === 0){
        LayerPopup.removeClass("active");
    }
});

document.addEventListener('DOMContentLoaded', function() {
    // leader_list와 scout_list 테이블에 이벤트 위임 설정
    document.addEventListener('click', function(event) {
        // 클릭된 요소가 leader_list 또는 scout_list 내의 tr 요소인지 확인
        const clickedRow = event.target.closest('#leader_list tr, #scout_list tr, #searchResultList tr, #relation_list tr, #search_relation_list tr');
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