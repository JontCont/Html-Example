
$('#BtnRight').click(function () {
    $('#Rocket').stop(true, false).animate({ left: '+=200' }, 500);
});

$('#BtnLeft').click(function () {
    $('#Rocket').stop(true, false).animate({ left: '-=200' }, 500);
});

