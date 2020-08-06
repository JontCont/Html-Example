
$('#BtnRight').click(function () {
    $('#Rocket').stop(true,false).animate(
    {
        left: '+=100'
    },500);
});

$('#BtnLeft').click(function () {
    $('#Rocket').stop(true,false).animate(
    {
        left: '-=100'
    },500);
});

