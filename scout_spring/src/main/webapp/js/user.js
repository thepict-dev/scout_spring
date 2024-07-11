//헤더 gnb
$(".gnb > li").mouseenter(function(){
  $(this).children(".gnbSub").stop().slideDown(300);
});
$(".gnb > li").mouseleave(function(){
  $(this).children(".gnbSub").stop().slideUp(300);
});

// 사이트맵 모달
$('.gnbRight button').click(function(){
  $('.siteMap').show();
});
$('.siteMapTop button').click(function(){
  $('.siteMap').hide();
});

//영상재생
$('.videoTopInner button').on('click', function () {
  $('.videoWrapper video').trigger('play');
  $('.videoTop').fadeOut();
});

//탭
const tabItem = document.querySelectorAll('.tabNav li');
const mbTabItem = document.querySelectorAll('.storeBtns li');
const tabInner = document.querySelectorAll('.tabInner');

function activateTab(items, index) {
    tabInner.forEach((inner) => {
        inner.classList.remove('active');
    });

    items.forEach((item) => {
        item.classList.remove('active');
    });

    items[index].classList.add('active');
    tabInner[index].classList.add('active');
}

tabItem.forEach((tab, idx) => {
    tab.addEventListener('click', function() {
        activateTab(tabItem, idx);
    });
});

mbTabItem.forEach((tab, idx) => {
    tab.addEventListener('click', function() {
        activateTab(mbTabItem, idx);
    });
});

// 예약신청 모달 열기
$('.bookingBtn button').click(function(){
  $('.modal').show();
});
$('.modalWrapper button').click(function(){
  $('.modal').hide();
});

// 예약신청 폼
const inputs = [
  { id: '#company', res: '.res1' },
  { id: '#depart', res: '.res2' },
  { id: '#name', res: '.res3' },
  { id: '#tel2', res: '.res4', prefix: '.phoneRes' },
  { id: '#applydate', res: '.res5' },
  { id: '#person', res: '.res7', filter: v => v.replace(/[^0-9]/g, '') },
  { id: '#purpose', res: '.res9' }
];

const checkAllInputsFilled = () => {
  let allFilled = true;
  inputs.forEach(input => {
      if ($(input.id).val().trim() === '') {
          allFilled = false;
      }
  });
  const isTimeChecked = $('input[name="time"]').is(":checked");
  const isSettingChecked = $('input[name="setting"]').is(":checked");
  allFilled = allFilled && isTimeChecked && isSettingChecked;

  if (allFilled) {
      $('.rulesButton.apply').addClass('active');
  } else {
      $('.rulesButton.apply').removeClass('active');
  }
};

inputs.forEach(input => {
  $(input.id).on(input.id === '#applydate' ? "change" : "keyup", function() {
      let currentVal = input.filter ? input.filter($(this).val()) : $(this).val();
      let pasteVal = $(input.res);
      pasteVal.text(currentVal).addClass('active');
      if (input.prefix) $(input.prefix).addClass('active');
      checkAllInputsFilled();
  });
});

$('input[name="time"], input[name="setting"]').on("change click", function() {
  if ($(this).attr('id') === 'all') { // 전일 옵션
    $('input[name="time"]').not('#all').prop('checked', $(this).prop('checked'));
  }
  
  let str = $('input[name="time"]:checked').map((_, el) => $(el).data("id")).get().join(' ');
  $(".res6").text(str).addClass('active');

  let setting = $('input[name="setting"]:checked').map((_, el) => $(el).data("id")).get().join(' ');
  $('.res8').text(setting).addClass('active');
  checkAllInputsFilled();
});

const phoneAutoHyphen = (target) => {
  target.value = target.value.replace(/[^0-9]/g, '').replace(/^(\d{0,4})(\d{0,4})$/g, "$1-$2").replace(/(\-{1,2})$/g, "");
};

// 지역가입 모달 열기
$('.localApply').click(function(){
  $('.localAppModal').show();
});
$('.localAppModal .modalWrapper button').click(function(){
  $('.localAppModal').hide();
});