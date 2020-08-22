var dY,
    $win = $(window),
    aniArr = ['ani-fadeIn-up', 'ani-fadeIn-left', 'ani-fadeIn-right'];

$win.scroll(function () {
    var $this = $(this);
    dY = $(this).scrollTop();

    for (var i = 0, aniArrLen = aniArr.length; i < aniArrLen; i++) {
        var items = $('.' + aniArr[i]);
        for (var j = 0, itemLen = items.length; j < itemLen; j++) {
            var $item = $(items[j]);

            if (i === 0) {
                if (dY > $item.offset().top - $this.height() / 2) {
                    $item.addClass('js-ani-fadeIn-up');
                } else {
                    $item.removeClass('js-ani-fadeIn-up');
                }
            } else if (i === 1) {
                if (dY > $item.offset().top - $this.height() / 2) {
                    $item.addClass('js-ani-fadeIn-left');
                } else {
                    $item.removeClass('js-ani-fadeIn-left');
                }
            } else if (i === 2) {
                if (dY > $item.offset().top - $this.height() / 2) {
                    $item.addClass('js-ani-fadeIn-right');
                } else {
                    $item.removeClass('js-ani-fadeIn-right');
                }
            }

        }
    }

});