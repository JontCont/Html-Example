var $advItem = $('.adv__item');
$advItem.hover(function(){
    $(this).stop(true, false).animate({ top: 0}, 200);
    $(this).next().stop(true, false).animate({ top: 118}, 200);
    $(this).prev().stop(true, false).animate({ top: 118}, 200);
}, function(){
    $advItem.stop(true, false).animate({ top: 166}, 500);
});