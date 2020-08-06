var $naviItem = $('#NaviList > li');

$naviItem.hover(function(){
    $(this).find('ul').stop(true, false).slideDown();
    $(this).siblings().find('ul').stop(true, false).slideUp();
}, function(){
    $(this).find('ul').slideUp();
});