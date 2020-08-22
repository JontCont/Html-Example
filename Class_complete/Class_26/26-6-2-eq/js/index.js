
$('#NaviList .navi__item').click(function(){
    var index = $(this).index();
    var dY = $('.base').eq(index).offset().top;
    
    $('html').animate({ scrollTop: dY}, 900);
});


