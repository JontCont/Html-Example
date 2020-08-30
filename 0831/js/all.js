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


var index = 0;
var picInterval;
var $slide = $('#Slide');
var $slideItems = $slide.find('.img__inner');
var slideItemWidth = $slide.width();
var duration = 2000;
var $pagination = $('#Pagination');
var $paginationItem = $pagination.find('.pagination__item');

$paginationItem.eq(index).addClass('js-pagination__item');
picInterval = setInterval(doCalc, duration);

$slide.hover(function () {
	clearInterval(picInterval);
}, function () {
	picInterval = setInterval(doCalc, duration);
});

$paginationItem.click(function(){
	index = $(this).index();
	setSlide();
});

function doCalc(){
	if (index < 4) {
		index++;
	} else {
		index = 0;
	}
	setSlide();
}

function setSlide() {
	$slideItems.css({
		left: -index * slideItemWidth
	});
	$paginationItem.eq(index).addClass('js-pagination__item')
		.siblings().removeClass('js-pagination__item');
}