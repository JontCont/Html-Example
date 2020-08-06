
$('#Btn1').click(function () {
    var dY = $('.base--pdf').offset().top;
    setPos(dY);
});
$('#Btn2').click(function () {
    var dY = $('.base--pr').offset().top;
    setPos(dY);
});
$('#Btn3').click(function () {
    var dY = $('.base--ps').offset().top;
    setPos(dY);
});
$('#Btn4').click(function () {
    var dY = $('.base--ae').offset().top;
    setPos(dY);
});
$('#Btn5').click(function () {
    var dY = $('.base--ai').offset().top;
    setPos(dY);
});
$('#Btn6').click(function () {
    var dY = $('.base--dw').offset().top;
    setPos(dY);
});

function setPos(y){
    $('html').stop(true, false).animate({ scrollTop: y }, 900);
}
