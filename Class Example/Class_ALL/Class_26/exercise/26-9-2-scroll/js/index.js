var dY,
    $win = $(window);

$win.scroll(function () {
    var $this = $(this);
    dY = $(this).scrollTop();

    var items = $('.ani-fadeIn-up');
    for (var i = 0, len = items.length; i < len; i++) 
    {
        var $item = $(items[i]);
        if (dY > $item.offset().top - $this.height() / 2) {
            $item.addClass('js-ani-fadeIn-up');
        } else {
            $item.removeClass('js-ani-fadeIn-up');
        }
    }
    var items = $('.ani-fadeIn-left');
    for (var i = 0, len = items.length; i < len; i++) {
        var $item = $(items[i]);
        if (dY > $item.offset().top - $this.height() / 2) {
            $item.addClass('js-ani-fadeIn-left');
        } else {
            $item.removeClass('js-ani-fadeIn-left');
        }
    }

    var items = $('.ani-fadeIn-right');
    for (var i = 0, len = items.length; i < len; i++) {
        var $item = $(items[i]);
        if (dY > $item.offset().top - $this.height() / 2) {
            $item.addClass('js-ani-fadeIn-right');
        } else {
            $item.removeClass('js-ani-fadeIn-right');
        }
    }
});
