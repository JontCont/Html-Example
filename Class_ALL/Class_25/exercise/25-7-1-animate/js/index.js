$('#BtnLeft').click(function(){
    $('#Rocket').stop(true,false).animate({
        left: 0 ,
    },2000);
});
$('#BtnRight').click(function(){
    $('#Rocket').stop(true,false).animate({
        left: 800 ,
    },2000);
});