var dY,
    $win = $(window),
    aniArr = ['ani-fadeIn-up', 'ani-fadeIn-left', 'ani-fadeIn-right'];

$('.ani-fadeIn-up').eq(0).addClass('js-' + aniArr[0]);
$('.ani-fadeIn-left').eq(0).addClass('js-' + aniArr[1]);
$('.ani-fadeIn-right').eq(0).addClass('js-' + aniArr[2]);

$win.scroll(function () {
    var $this = $(this);
    dY = $(this).scrollTop();

    for (var i = 0, aniArrLen = aniArr.length; i < aniArrLen; i++) {
        var items = $('.' + aniArr[i]);
        for (var j = 1, itemLen = items.length; j < itemLen; j++) {
            var $item = $(items[j]);
            if (dY > $item.offset().top - $this.height() / 2) {
                $item.addClass('js-' + aniArr[i]);
            } else {
                $item.removeClass('js-' + aniArr[i]);
            }
        }
    }

});