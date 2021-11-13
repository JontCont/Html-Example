var dY,
    $win = $(window);

$win.scroll(function () {
    var $this = $(this);
    dY = $(this).scrollTop();
    console.log($this.height());
    if (dY > $('#Js .ani-fadeIn-up').offset().top - $this.height() / 2) {
        $('#Js .ani-fadeIn-up').addClass('js-ani-fadeIn-up');
    } else {
        $('#Js .ani-fadeIn-up').removeClass('js-ani-fadeIn-up');
    }
    if (dY > $('#FrontEnd .ani-fadeIn-up').offset().top - $this.height() / 2) {
        $('#FrontEnd .ani-fadeIn-up').addClass('js-ani-fadeIn-up');
    } else {
        $('#FrontEnd .ani-fadeIn-up').removeClass('js-ani-fadeIn-up');
    }
    if (dY > $('#WebPack .ani-fadeIn-up').offset().top - $this.height() / 2) {
        $('#WebPack .ani-fadeIn-up').addClass('js-ani-fadeIn-up');
    } else {
        $('#WebPack .ani-fadeIn-up').removeClass('js-ani-fadeIn-up');
    }
    if (dY > $('#Oop .ani-fadeIn-up').offset().top - $this.height() / 2) {
        $('#Oop .ani-fadeIn-up').addClass('js-ani-fadeIn-up');
    } else {
        $('#Oop .ani-fadeIn-up').removeClass('js-ani-fadeIn-up');
    }
    if (dY > $('#React .ani-fadeIn-up').offset().top - $this.height() / 2) {
        $('#React .ani-fadeIn-up').addClass('js-ani-fadeIn-up');
    } else {
        $('#React .ani-fadeIn-up').removeClass('js-ani-fadeIn-up');
    }
    if (dY > $('#Vue .ani-fadeIn-up').offset().top - $this.height() / 2) {
        $('#Vue .ani-fadeIn-up').addClass('js-ani-fadeIn-up');
    } else {
        $('#Vue .ani-fadeIn-up').removeClass('js-ani-fadeIn-up');
    }


    if (dY > $('#Js .ani-fadeIn-left').offset().top - $this.height() / 2) {
        $('#Js .ani-fadeIn-left').addClass('js-ani-fadeIn-left');
        $('#Js .ani-fadeIn-right').addClass('js-ani-fadeIn-right');
    } else {
        $('#Js .ani-fadeIn-left').removeClass('js-ani-fadeIn-left');
        $('#Js .ani-fadeIn-right').removeClass('js-ani-fadeIn-right');
    }
    if (dY > $('#FrontEnd .ani-fadeIn-left').offset().top - $this.height() / 2) {
        $('#FrontEnd .ani-fadeIn-left').addClass('js-ani-fadeIn-left');
        $('#FrontEnd .ani-fadeIn-right').addClass('js-ani-fadeIn-right');
    } else {
        $('#FrontEnd .ani-fadeIn-left').removeClass('js-ani-fadeIn-left');
        $('#FrontEnd .ani-fadeIn-right').removeClass('js-ani-fadeIn-right');
    }
    if (dY > $('#WebPack .ani-fadeIn-left').offset().top - $this.height() / 2) {
        $('#WebPack .ani-fadeIn-left').addClass('js-ani-fadeIn-left');
        $('#WebPack .ani-fadeIn-right').addClass('js-ani-fadeIn-right');
    } else {
        $('#WebPack .ani-fadeIn-left').removeClass('js-ani-fadeIn-left');
        $('#WebPack .ani-fadeIn-right').removeClass('js-ani-fadeIn-right');
    }
    if (dY > $('#Oop .ani-fadeIn-left').offset().top - $this.height() / 2) {
        $('#Oop .ani-fadeIn-left').addClass('js-ani-fadeIn-left');
        $('#Oop .ani-fadeIn-right').addClass('js-ani-fadeIn-right');
    } else {
        $('#Oop .ani-fadeIn-left').removeClass('js-ani-fadeIn-left');
        $('#Oop .ani-fadeIn-right').removeClass('js-ani-fadeIn-right');
    }
    if (dY > $('#React .ani-fadeIn-left').offset().top - $this.height() / 2) {
        $('#React .ani-fadeIn-left').addClass('js-ani-fadeIn-left');
        $('#React .ani-fadeIn-right').addClass('js-ani-fadeIn-right');
    } else {
        $('#React .ani-fadeIn-left').removeClass('js-ani-fadeIn-left');
        $('#React .ani-fadeIn-right').removeClass('js-ani-fadeIn-right');
    }
    if (dY > $('#Vue .ani-fadeIn-left').offset().top - $this.height() / 2) {
        $('#Vue .ani-fadeIn-left').addClass('js-ani-fadeIn-left');
        $('#Vue .ani-fadeIn-right').addClass('js-ani-fadeIn-right');
    } else {
        $('#Vue .ani-fadeIn-left').removeClass('js-ani-fadeIn-left');
        $('#Vue .ani-fadeIn-right').removeClass('js-ani-fadeIn-right');
    }

});
