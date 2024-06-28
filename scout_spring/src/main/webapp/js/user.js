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
const tabInner = document.querySelectorAll('.tabInner');

tabItem.forEach((tab, idx)=> {
    tab.addEventListener('click', function(){
        tabInner.forEach((inner)=> {
            inner.classList.remove('active');
        });

        tabItem.forEach((item)=> {
            item.classList.remove('active');
        });

        tabItem[idx].classList.add('active');
        tabInner[idx].classList.add('active');
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
  { id: '#organ', res: '.res1' },
  { id: '#department', res: '.res2' },
  { id: '#pic', res: '.res3' },
  { id: '#phone2', res: '.res4', prefix: '.phoneRes' },
  { id: '#use_date', res: '.res5' },
  { id: '#people', res: '.res7', filter: v => v.replace(/[^0-9]/g, '') },
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
  $(input.id).on(input.id === '#use_date' ? "change" : "keyup", function() {
      let currentVal = input.filter ? input.filter($(this).val()) : $(this).val();
      let pasteVal = $(input.res);
      pasteVal.text(currentVal).addClass('active');
      if (input.prefix) $(input.prefix).addClass('active');
      checkAllInputsFilled();
  });
});

$('input[name="time"], input[name="setting"]').on("change click", function() {
  let str = $('input[name="time"]:checked').map((_, el) => $(el).val()).get().join(' ');
  $(".res6").text(str).addClass('active');

  let setting = $('input[name="setting"]:checked').val();
  $('.res8').text(setting).addClass('active');
  checkAllInputsFilled();
});

const phoneAutoHyphen = (target) => {
  target.value = target.value.replace(/[^0-9]/g, '').replace(/^(\d{0,4})(\d{0,4})$/g, "$1-$2").replace(/(\-{1,2})$/g, "");
};

