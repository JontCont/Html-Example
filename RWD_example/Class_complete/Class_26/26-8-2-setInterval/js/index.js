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