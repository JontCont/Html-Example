var $advItem = $('.adv__item');
$advItem.hover(function(){
    $(this).stop(true, false).animate({ top: 0}, 200);
    $(this).siblings().stop(true, false).animate({ top: 118}, 200);
}, function(){
    $advItem.stop(true, false).animate({ top: 166}, 500);
});
