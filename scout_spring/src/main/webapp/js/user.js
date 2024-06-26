//헤더 gnb
$(".gnb > li").mouseenter(function(){
  $(this).children(".gnbSub").stop().slideDown(300);
});
$(".gnb > li").mouseleave(function(){
  $(this).children(".gnbSub").stop().slideUp(300);
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
            inner.classList.remove('active')
        });

        tabItem.forEach((item)=> {
            item.classList.remove('active')
        });

        tabItem[idx].classList.add('active')
        tabInner[idx].classList.add('active')
    });
});