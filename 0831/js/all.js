function toggleMenu() {
    var menuToggle = document.querySelector('.toggle');
    var header = document.querySelector('.header__inner');
    menuToggle.classList.toggle('active');
    header.classList.toggle('active');
}

var dY,
    $win = $(window);

$win.scroll(function () {
    var $this = $(this);
    dY = $(this).scrollTop();

    var items = $('.ani-fadeIn-up');
    console.log(dY);
    for (var i = 0, len = items.length; i < len; i++) {
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
});