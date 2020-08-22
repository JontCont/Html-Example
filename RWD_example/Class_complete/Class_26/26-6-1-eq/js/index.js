var $thumbItem = $('#ThumbLs > img');
var $picItem = $('#PicLs > img');

$thumbItem.click(function(){
	var index = $(this).index();
	// $picItem.fadeOut();
	// $picItem.eq(index).fadeIn();
	$picItem.eq(index).fadeIn().siblings().fadeOut();
});

