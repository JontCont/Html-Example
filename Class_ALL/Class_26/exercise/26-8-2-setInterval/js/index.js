var index = 0;
var picInterval;
var $slide = $('#Slide');
var $slideItems = $slide.find('.img__inner');
var slideItemWidth = $slide.width();
var duration = 2000;

picInterval = setInterval(setSlide, duration);

$slide.hover(function () {
	clearInterval(picInterval);
}, function () {
	picInterval = setInterval(setSlide, duration);
});

function setSlide() {
	if (index < 4) {
		index++;
	} else {
		index = 0;
	}
	$slideItems.css({
		left: -index * slideItemWidth
	});
}