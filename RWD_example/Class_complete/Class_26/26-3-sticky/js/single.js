$(window).scroll(function () {
    var dY = $(this).scrollTop();

    if (dY > $('#Adv').offset().top) {
        $('#Adv').addClass('js-fixedAdv');
    }
    
    if (dY < $('#Header').height() + $('#Sidebar').height() + 20) {
        $('#Adv').removeClass('js-fixedAdv');
    }
});